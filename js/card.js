window.addEventListener('DOMContentLoaded', () =>{
    'use strict'

    const a = location.href.split('=')[1];
    const name = document.querySelector('h2.name');
    const category = document.querySelector('td.category');
    const price = document.querySelector('td.price');
    const images = document.querySelector('.images');
    
    function addImage(string){
        let newImg = document.createElement('img');
        newImg.className = "image";
        newImg.src = string;
        images.appendChild(newImg);
    }
    
    const query = fetch(`http://localhost/catalog/server.php?getGoods&id=${a}`);
    query.then(response => response.json())
        .then(result => {
            console.log(result);
            name.textContent = result[0][0];
            category.textContent = result[0][1];
            price.textContent = `${result[0][2]} рублей`;
            for (let array of result){
                addImage(array[3]);
            }
        })
    console.log(a);

})