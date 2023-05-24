const links = document.querySelectorAll('.jewelery');

const imagePaths = [
  './style/block2/img1.png',
  './style/block2/img2.png',
  './style/block2/img3.png',
  './style/block2/img4.png',
  './style/block2/img5.png',
  './style/block2/img6.png',
];

links.forEach((link, index) => {
    if (index < imagePaths.length) {
    link.style.backgroundImage = `url('${imagePaths[index]}')`;
  }
});

const article = document.querySelectorAll('.article')
const imgArticle = [
  './style/block4/art1.png',
  './style/block4/art2.png',
  './style/block4/art3.png',
]
article.forEach((link, index) => {
if (img < imgArticle.length) {
  link.style.backgroundImage = `url('${imgArticle[index]})`;
}
});