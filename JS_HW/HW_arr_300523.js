/*Задание: Создание массива объектов студентов
Создайте пустой массив с именем "students".
Добавьте в массив несколько объектов, представляющих студентов.
Каждый объект должен иметь свойства, такие как "имя", "возраст", "курс" и т. д.*/
const students = []
 students.push({name: "Cholpon", age: 43, course: "Frontend"})
 students.push({name: "Alex", age: 37, course: "Frontend"})
 students.push({name: "Anna", age: 25, course: "Frontend"})

console.log(students);

const newStudent = prompt("Сколько студентов добавить")


// const students = [
// {
//     name: 'Cholpon',
//     age: 45,
//     course: 'Frontend'
// },
// {
//     name: 'Alex',
//     age: 32,
//     course: 'Frontend'
// },
// {
//     name: 'Anna',
//     age: 25,
//     course: 'Frontend'
// }
// ];
// console.log(students)


/*Задание: Получение свойства объекта из массива
Используя массив "students" из предыдущего задания, выберите любой объект из массива.
Выведите значение свойства "имя" этого объекта в консоль.*/

// console.log(students[0].name)
// console.log(students[1].name)
// console.log(students[2].name)

// /* Задание: Изменение значения свойства объекта
// Используя массив "students" из первого задания, выберите любой объект из массива.
// Измените значение свойства "возраст" этого объекта на новое значение.
// Выведите обновленное значение свойства "возраст" в консоль.
//  */
// const changeAgeStudent = students[0];
// changeAgeStudent.age = 44;

// console.log(changeAgeStudent);
// console.log(students);

// /*  Задание: Добавление нового свойства в объект
// Используя массив "students" из первого задания, выберите любой объект из массива.
// Добавьте новое свойство "город" в этот объект и установите его равным названию города, в котором живет студент.
// Выведите обновленный объект в консоль.
//  */
// students[0].city = 'Koln';
// console.log(students[0]);
// console.log(students);

// /*  Задание: Итерация по массиву объектов
// Используя массив "students" из первого задания, выполните итерацию по каждому объекту в массиве.
// Выведите свойство "имя" каждого объекта в консоль.
//  */

// for (let i = 0; i < students.length; i++) {
//     console.log(students[i].name)
// }

// students.forEach((el) => {
//     console.log(el.name);
// })