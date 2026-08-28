function setSelectChosen(select, string_hint = 'Pilih...', allow_new = false, allow_clear = true, url = null, parameter = {})
 { if(select.parentNode.classList.contains('custom-select'))
    { select.parentNode.querySelector('input[type="text"]').value = getTextSelected(select);
      const options = select.parentNode.querySelector('.options');
      options.innerHTML = '';
      Array.from(select.options).forEach(opt => {
       const li = document.createElement('li');
       li.dataset.value = opt.value;
       li.textContent = opt.text;
       options.appendChild(li);
      });
    }
   else
    { const newSelect = select.cloneNode(true);
      newSelect.style.display = 'none';

      const custom_select = document.createElement('div');
      var custom_class = '';
      if(select.id !== '')
       { custom_class += ' ' + select.id + '_';
       }
      if(select.className !== '')
       { custom_class += ' ' + select.className + '_';
       }
      custom_select.className = 'custom-select' + custom_class;

      const input = document.createElement('input');
      input.type = 'text';
      input.style.paddingRight = '5px';
      
      input.placeholder = string_hint;
      input.autocomplete = 'new-password';
      if(select.value !== "")
       { input.value = select.options[select.selectedIndex].text;
       }
      custom_select.appendChild(input);

      const options = document.createElement('ul');
      options.className = 'options';

      Array.from(select.options).forEach(opt => {
       const li = document.createElement('li');
       li.dataset.value = opt.value;
       li.textContent = opt.text;
       options.appendChild(li);
      });

      custom_select.appendChild(options);

      custom_select.appendChild(newSelect);
      select.replaceWith(custom_select);

      let previousValue = newSelect.value;

      let isFocused = false;
      input.addEventListener('focus', () => {
       isFocused = true;
       previousValue = newSelect.value;
       input.select();
       resetOptions();
       options.style.display = 'block';
       ensureOptionVisible(options);
      });

      if(url == null)
       { input.addEventListener('input', () => {
          const filter = input.value.toLowerCase();
          const items = options.querySelectorAll('li');
          items.forEach(item => {
           const text = item.textContent.toLowerCase();
           item.style.display = text.includes(filter) ? '' : 'none';
          });
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
              { options.innerHTML = '';
                options.style.display = 'none';
                return;
              }
             options.innerHTML = '<li>Loading...</li>';
             options.style.display = 'block';

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
              options.innerHTML = '';
              if(!Array.isArray(data) || !data.length)
               { const li = document.createElement('li');
                 li.textContent = 'Tidak ditemukan';
                 li.style.pointerEvents = 'none';
                 options.appendChild(li);
                 return;
               }
              data.forEach(row => {
               const li = document.createElement('li');
               li.textContent = row.text;
               li.dataset.value = row.value;
               options.appendChild(li);
              });
              activeIndex = -1;
             })
             .catch(err => {
              options.innerHTML = `
               <li style="pointer-events:none;color:red" class='option-error'>
                Koneksi Gagal
               </li>
              `;
              options.style.display = 'block';
             });
           }, 300);

         });
       }

      input.addEventListener('blur', () => {
       setTimeout(() => {
        selectOption();
       }, 150); // delay kecil agar klik tetap kebaca
      });

      document.addEventListener('mousedown', e => {
       if(!e.target.closest('.custom-select'))
        { selectOption();
        }
      });

      function selectOption()
       { const text = input.value.trim().toLowerCase();
         const items = options.querySelectorAll('li');
         let matchedItem = null;
         items.forEach(item => {
          if(item.textContent.toLowerCase() === text)
           { matchedItem = item;
           }
         });

         if(input.value !== '')
          { if(!matchedItem)
             { if(allow_new)
                { setSelectValue(newSelect, input.value);
                }
               else
                { input.value = '';
                  newSelect.value = '';
                }
             }
          }
         else
          { if(allow_clear)
             { input.value = '';
               newSelect.value = '';
             }
            else
             { input.value = getTextSelected(newSelect);
               newSelect.value = previousValue;
             }
          }

         resetOptions();
         options.style.display = 'none';
         if(isFocused)
          { newSelect.dispatchEvent(new Event('change'));
          }
         isFocused = false;

         /*if(element_onchange !== null)
          { element_onchange.dispatchEvent(new Event('change'));
          }*/
       }

      function resetOptions()
       { if(options.querySelectorAll('.option-error').length > 0)
          { options.querySelector('.option-error').remove();
          }
         const items = options.querySelectorAll('li');
         items.forEach(li => {
          li.style.display = '';
          li.classList.remove('active');
         });
         activeIndex = -1;
       }

      options.addEventListener('click', e => {
       if(e.target.tagName === 'LI')
        { input.value = e.target.textContent;
          setSelectValue(newSelect, e.target.dataset.value, e.target.textContent);
          options.style.display = 'none';
          newSelect.dispatchEvent(new Event('change'));
        }
      });

      document.addEventListener('click', e => {
       if(!e.target.closest('.custom-select'))
        { options.style.display = 'none';
        }
      });

      function ensureOptionVisible(element)
       { const rect = element.getBoundingClientRect();
         const viewportHeight = window.innerHeight || document.documentElement.clientHeight;
         if(rect.bottom > viewportHeight)
          { const scrollAmount = rect.bottom - viewportHeight + 16; // jarak aman
            window.scrollBy({
             top : scrollAmount,
             behavior : 'smooth'
            });
          }
       }

      let activeIndex = -1;

      input.addEventListener('keydown', e => {
       const items = Array.from(options.querySelectorAll('li')).filter(li => li.style.display !== 'none');
       if(!items.length) return;
       if(e.key === 'ArrowDown')
        { e.preventDefault();
          activeIndex = (activeIndex + 1) % items.length;
          setActive(items);
        }
       if(e.key === 'ArrowUp')
        { e.preventDefault();
          activeIndex = (activeIndex - 1 + items.length) % items.length;
          setActive(items);
        }
       if(e.key === 'Enter')
        { e.preventDefault();
          if(activeIndex > -1)
           { items[activeIndex].click();
           }
        }
      });

      function setActive(items)
       { items.forEach(li => li.classList.remove('active'));
         const activeItem = items[activeIndex];
         activeItem.classList.add('active');
         // scroll otomatis ke item aktif
         activeItem.scrollIntoView({
           block: 'nearest'
         });
       }

      function setSelectValue(select, value, text = value)
       { let option = select.querySelector(`option[value="${value}"]`);
         if(!option)
          { option = new Option(text, value);
            select.add(option);
          }
         select.value = value;
       }
    }
 }

function clearSelectChosen(element)
 { element.value = '';
   element.parentNode.querySelector('input[type="text"]').value = '';
 }