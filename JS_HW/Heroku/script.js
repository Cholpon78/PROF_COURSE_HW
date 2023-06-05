// Создаем список элементов
const links = [
    { text: 'Data Stores', url: 'https://www.example.com/link1' },
    { text: 'Data Stores', url: 'https://www.example.com/link1' },
    { text: 'Data Stores', url: 'https://www.example.com/link1' },
    { text: 'Data Stores', url: 'https://www.example.com/link1' },
    { text: 'Data Stores', url: 'https://www.example.com/link1' },
    { text: 'Data Stores', url: 'https://www.example.com/link1' },
    { text: 'Data Stores', url: 'https://www.example.com/link1' },
    { text: 'Data Stores', url: 'https://www.example.com/link1' },
    { text: 'Data Stores', url: 'https://www.example.com/link1' },
  
  ];
  
  // Находим список по его id
  const customList = document.getElementById('custom-list');
  
  // Добавляем ссылки в список
  links.forEach(link => {
    const li = document.createElement('li');
    const a = document.createElement('a');
    a.href = link.url;
    a.textContent = link.text;
    li.appendChild(a);
    customList.appendChild(li);
  });
  