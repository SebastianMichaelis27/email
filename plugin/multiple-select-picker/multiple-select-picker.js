function initMultipleSelect(select, allow_new = false, url = null, parameter = {}, email_only = false)
 { if(!select) return;

   const wrapper = document.createElement('div');
   wrapper.className = 'multiple-select';
   wrapper.style.width = select.style.width;

   const tagBox = document.createElement('div');
   tagBox.className = 'selected-tags';

   const input = document.createElement('input');
   input.type = 'text';
   input.placeholder = 'Pilih...';
   input.autocomplete = 'new-password';

   tagBox.appendChild(input);

   const hidden = document.createElement('input');
   hidden.type = 'hidden';
   hidden.name = select.name;
   hidden.id = select.id;
   hidden.className = select.className;
   hidden.value = '[]';

   const ul = document.createElement('ul');
   ul.className = 'options';

   [...select.options].forEach(opt => {
    const li = document.createElement('li');
    li.textContent = opt.text;
    li.dataset.value = opt.value;
    ul.appendChild(li);
   });

   wrapper.append(tagBox, hidden, ul);
   select.replaceWith(wrapper);

   // expose function ke luar
   wrapper.showOptions = showOptions;
   wrapper.renderTags = renderTags;

   let activeIndex = -1;

   const getData = () => JSON.parse(hidden.value || '[]');
   const setData = data => hidden.value = JSON.stringify(data);

   function getVisibleItems()
    { return [...ul.querySelectorAll('li')].filter(li => li.style.display !== 'none');
    }

   function showOptions()
    { if(!input.readOnly)
       { ul.style.display = 'block';
         sync();
       }
    }

   tagBox.addEventListener('click', () => {
    input.focus();
    showOptions();
   });

   input.addEventListener('focus', showOptions);

   if(url == null)
    { input.addEventListener('input', () => {
       //menambahkan item baru
       if(ul.querySelectorAll('.additional-option').length > 0)
        { ul.querySelector('.additional-option').remove();
        }
       if(allow_new && input.value !== "")
        { const li = document.createElement('li');
          li.textContent = input.value;
          li.dataset.value = input.value;
          li.className = 'additional-option';
          ul.appendChild(li);
        }

       const q = input.value.toLowerCase();
       ul.querySelectorAll('li').forEach(li => {
        li.style.display = li.textContent.toLowerCase().includes(q) ? '' : 'none';
       });
       activeIndex = -1;
       showOptions();
      });
    }
   else
    { let searchTimeout = null;
      input.addEventListener('input', () => {

       const keyword = input.value.trim();
       clearTimeout(searchTimeout);

       var param = {};
       param['search'] = input.value;
       for(let key in parameter)
        { param[key] = parameter[key].value;
        }

       searchTimeout = setTimeout(() => {
        if(keyword.length === 0)
         { ul.innerHTML = '';
           return;
         }
        ul.innerHTML = '<li>Loading...</li>';
        fetch(url, {
         method: 'POST',
         headers: {
           'Content-Type': 'application/x-www-form-urlencoded'
         },
         body: new URLSearchParams(param).toString()
        })
        .then(res => {
         if(!res.ok)
          { throw new Error('HTTP error ' + res.status);
          }
         return res.json();
        })
        .then(data => {
         ul.innerHTML = '';
         if(!Array.isArray(data) || !data.length)
          { const li = document.createElement('li');
            li.textContent = 'Tidak ditemukan';
            li.style.pointerEvents = 'none';
            ul.appendChild(li);
            return;
          }
         data.forEach(row => {
          const li = document.createElement('li');
          li.textContent = row.label;
          li.dataset.value = row.value;
          ul.appendChild(li);
         });
         activeIndex = -1;
        })
        .catch(err => {
         ul.innerHTML = `
          <li style="pointer-events:none;color:red" class='option-error'>
           Koneksi Gagal
          </li>
         `;
         ul.style.display = 'block';
        });
       }, 300);

       showOptions();
      });
    }

   /* ===== KEYBOARD NAVIGATION ===== */
   input.addEventListener('keydown', e => {
    const items = getVisibleItems();
    if(!items.length) return;

    if(e.key === 'ArrowDown')
     { if(ul.style.display == 'none')
        { showOptions();
        }
       e.preventDefault();
       activeIndex = (activeIndex + 1) % items.length;
       setHighlight(items);
     }

    if(e.key === 'ArrowUp')
     { if(ul.style.display == 'none')
        { showOptions();
        }
       e.preventDefault();
       activeIndex = (activeIndex - 1 + items.length) % items.length;
       setHighlight(items);
     }

    if(e.key === 'Enter')
     { if(ul.style.display == 'none')
        { showOptions();
        }
       e.preventDefault();
       if(activeIndex > -1) {
         items[activeIndex].click();
         hideOptions();
       }
     }

    if((e.key === 'Backspace' || e.key === 'Delete') && input.value === '')
     { e.preventDefault();
       removeLastSelected();
     }
   });

   function setHighlight(items)
    { items.forEach(li => li.classList.remove('highlight'));
      const active = items[activeIndex];
      active.classList.add('highlight');
      active.scrollIntoView({ block: 'nearest' });
    }

   /* ===== CLICK OPTION ===== */
   ul.addEventListener('click', e => {
    if(e.target.tagName !== 'LI') return;

    const value = e.target.dataset.value;
    const text = e.target.textContent;

    if(email_only && !ValidateEmail(value)) return;

    let data = getData();
    const idx = data.findIndex(d => d.value === value);

    if(idx > -1)
     { data.splice(idx, 1);
       e.target.classList.remove('active');
     }
    else
     { data.push({ value, text });
       e.target.classList.add('active');
     }

    setData(data);
    input.value = '';
    activeIndex = -1;

    resetOptions();
    renderTags();
   });

   input.addEventListener('blur', () => {
    setTimeout(() => {
     input.value = '';
     resetOptions();
    }, 150); // delay kecil agar klik tetap kebaca
   });

   document.addEventListener('click', e => {
    if(!e.target.closest('.multiple-select'))
     { ul.style.display = 'none';
       activeIndex = -1;
     }
   });

   function renderTags()
    { // hapus tag lama
      tagBox.querySelectorAll('.tag').forEach(t => t.remove());
      const data = getData();
      data.forEach(item => {
       // cari option di list
       let li = ul.querySelector(`li[data-value="${item.value}"]`);
       // JIKA TIDAK ADA (misalnya dari hidden / additional)
       if(!li)
        { li = document.createElement('li');
          li.textContent = item.text;
          li.dataset.value = item.value;
          li.className = 'active additional-option';
          ul.appendChild(li);
        }
       li.classList.add('active');
       const tag = document.createElement('div');
       tag.className = 'tag';
       tag.innerHTML = `${item.text}<span>×</span>`;
       tag.querySelector('span').onclick = e => {
        if(!input.readOnly)
         { e.stopPropagation();
           setData(getData().filter(d => d.value !== item.value));
           li.classList.remove('active');
           renderTags();
         }
       };
       tagBox.insertBefore(tag, input);
      });
    }

   function sync()
    { const data = getData();
      ul.querySelectorAll('li').forEach(li => {
       li.classList.toggle(
        'active',
        data.some(d => d.value === li.dataset.value)
       );
       li.classList.remove('highlight');
      });
      renderTags();
    }

   function hideOptions()
    { ul.style.display = 'none';
      activeIndex = -1;
    }

   function removeLastSelected()
    { const data = getData();
      if(!data.length) return;
      const last = data[data.length - 1];
      const li = ul.querySelector(`li[data-value="${last.value}"]`);
      data.pop();
      setData(data);
      if(li) li.classList.remove('active');
      renderTags();
    }

   function resetOptions()
    { // hapus additional option
      ul.querySelectorAll('.additional-option').forEach(li => li.remove());
      // tampilkan semua option
      ul.querySelectorAll('li').forEach(li => {
       li.style.display = '';
       li.classList.remove('highlight');
      });
      activeIndex = -1;
      input.value = '';
    }

   return wrapper;
 }