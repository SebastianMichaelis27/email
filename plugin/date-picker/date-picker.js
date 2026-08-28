function setDatePicker(input, allow_clear = true)
 { if(!input) return;
   // buat wrapper
   const wrapper = document.createElement('div');
   wrapper.className = 'datepicker';
   //clone input
   const newInput = input.cloneNode(true);
   newInput.setAttribute('readonly', true);
   newInput.style['padding-right'] = '20px';
   //box input
   const box_input = document.createElement('div');
   box_input.className = 'box-input-calender';
   box_input.appendChild(newInput);
   //clear input
   const clear_input = document.createElement('div');
   clear_input.className = 'clear-calender';
   clear_input.innerHTML = '&times;';
   box_input.appendChild(clear_input);
   //calendar element
   const calendar = document.createElement('div');
   calendar.className = 'calendar';
   calendar.innerHTML = `
    <div class='calendar-header'>
     <select class='monthSelect'></select>
     <div class='year-nav'>
      <button type='button' class='prevYear'>◀</button>
      <span class='yearLabel'></span>
      <button type='button' class='nextYear'>▶</button>
     </div>
    </div>
    <div class='calendar-days'>
     <div>Min</div><div>Sen</div><div>Sel</div><div>Rab</div><div>Kam</div><div>Jum</div><div>Sab</div>
    </div>
    <div class='calendar-dates'></div>
   `;
   // replace input
   input.replaceWith(wrapper);
   wrapper.appendChild(box_input);
   wrapper.appendChild(calendar);
   
   const datesContainer = newInput.parentNode.parentNode.querySelector('div.calendar-dates');
   const monthSelect = newInput.parentNode.parentNode.querySelector('.monthSelect');
   const yearLabel = newInput.parentNode.parentNode.querySelector('.yearLabel');
   const prevYear = newInput.parentNode.parentNode.querySelector('.prevYear');
   const nextYear = newInput.parentNode.parentNode.querySelector('.nextYear');
   const clearInput = newInput.parentNode.querySelector('.clear-calender');
   let currentDate = new Date();
   let selectedDate = null;

   if(!allow_clear)
    { clearInput.style.display = 'none';
    }

   //SET CLEAR INPUT
   if(newInput.value == '')
    { clearInput.style.display = 'none';
    }
   else
    { if(allow_clear)
       { clearInput.style.display = 'block';
       }
    }
   clearInput.onclick = () => {
    newInput.value = '';
    clearInput.style.display = 'none';
    newInput.dispatchEvent(new Event('change'));
   }

   //BUKA DATEPICKER
   newInput.onclick = () => {
    calendar.style.display = 'block';
    const parsed = parseInputDate(newInput.value);
    if(parsed)
     { selectedDate = parsed;
       currentDate = new Date(parsed);
     }
    initHeader();
    renderCalendar();
    ensureCalendarVisible(calendar);
   };

   //KLIK DI LUAR
   document.addEventListener('click', e => {
    if(!e.target.closest('.datepicker'))
     { calendar.style.display = 'none';
     }
   });

   //INIT HEADER
   function initHeader()
    { const months = ['Januari','Februari','Maret','April','Mei','Juni', 'Juli','Agustus','September','Oktober','November','Desember'];
      monthSelect.innerHTML = '';
      months.forEach((m, i) => {
       monthSelect.add(new Option(m, i));
      });
      monthSelect.value = currentDate.getMonth();
      yearLabel.textContent = currentDate.getFullYear();
    }

   //EVENT HEADER
   monthSelect.onchange = () => {
    currentDate.setMonth(parseInt(monthSelect.value));
    renderCalendar();
   };
   prevYear.onclick = () => {
    currentDate.setFullYear(currentDate.getFullYear() - 1);
    yearLabel.textContent = currentDate.getFullYear();
    renderCalendar();
   };
   nextYear.onclick = () => {
    currentDate.setFullYear(currentDate.getFullYear() + 1);
    yearLabel.textContent = currentDate.getFullYear();
    renderCalendar();
   };

   //RENDER KALENDER
   function renderCalendar()
    { datesContainer.innerHTML = '';
      const year = currentDate.getFullYear();
      const month = currentDate.getMonth();
      const firstDay = new Date(year, month, 1).getDay();
      const daysInMonth = new Date(year, month + 1, 0).getDate();
      for(let i = 0; i < firstDay; i++)
       { datesContainer.appendChild(document.createElement('div'));
       }
      for(let d = 1; d <= daysInMonth; d++)
       { const day = document.createElement('div');
         day.textContent = d;
         //TANDAI HARI INI
         const today = new Date();
         if(d === today.getDate() && month === today.getMonth() && year === today.getFullYear())
          { day.classList.add('today');
          }
         //TANDAI TANGGAL TERPILIH
         if(selectedDate && selectedDate.getDate() === d && selectedDate.getMonth() === month && selectedDate.getFullYear() === year)
          { day.classList.add('selected');
          }
         day.onclick = () => {
          selectedDate = new Date(year, month, d);
          currentDate = new Date(selectedDate);
          newInput.value = formatDate(selectedDate);
          calendar.style.display = 'none';
          if(allow_clear)
           { clearInput.style.display = 'block';
           }
          newInput.dispatchEvent(new Event('change'));
         };
         datesContainer.appendChild(day);
       }
    }

   //FORMAT & PARSE TANGGAL
   function formatDate(date)
    { const d = String(date.getDate()).padStart(2, '0');
      const m = String(date.getMonth() + 1).padStart(2, '0');
      const y = date.getFullYear();
      return `${d}-${m}-${y}`;
    }

   function parseInputDate(value)
    { if(!value) return null;
      const parts = value.split('-');
      if(parts.length !== 3) return null;
      const day = parseInt(parts[0], 10);
      const month = parseInt(parts[1], 10) - 1;
      const year = parseInt(parts[2], 10);
      const date = new Date(year, month, day);
      if(date.getDate() !== day || date.getMonth() !== month || date.getFullYear() !== year) return null;
      return date;
    }

   function ensureCalendarVisible(calendarEl)
    { const rect = calendarEl.getBoundingClientRect();
      const viewportHeight = window.innerHeight || document.documentElement.clientHeight;
      if(rect.bottom > viewportHeight)
       { const scrollAmount = rect.bottom - viewportHeight + 16; // jarak aman
         window.scrollBy({
          top : scrollAmount,
          behavior : 'smooth'
         });
       }
    }
 }