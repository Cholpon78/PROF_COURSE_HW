const input = document.querySelector('.input input');
const inputDown = document.querySelector('.input-down');

input.addEventListener('focus', function() {
  input.style.display = 'none';
  inputDown.style.display = 'block';
})

