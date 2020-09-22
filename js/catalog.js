window.addEventListener('DOMContentLoaded', () =>{
    'use strict'
    
    
    const query = fetch('http://localhost/catalog/server.php?getGoods')
                        .then(response => response.json())
                        .then(result => {tableBuilder(result)});
                    })




//innerHTML = `<a href="#">${data[1][key]}</a>`

function tableBuilder(data){
    const table = document.getElementsByClassName('cat_table')[0];
    for (let row of data){
        const newRow = table.insertRow(-1);
        for (let key in row) {
            if (key == 0){
                continue;
            } else 
            if (key == 1){
                newRow.insertCell(-1).innerHTML = `<a href="card.html?id=${row[0]}">${row[key]}</a>`;
            } else {
                newRow.insertCell(-1).innerHTML = row[key];
            }
        }
    }
}
