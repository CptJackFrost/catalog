window.addEventListener('DOMContentLoaded', () =>{
    'use strict'
    

    buildTable(data);

})

const data = {
    1: {
        name: 'Наушники',
        category: 'Аудиотехника',
        price: 2000,
        popularity: 999
    }
}

function buildTable(data){
    const table = document.getElementsByClassName('cat_table')[0];
    const newRow = table.insertRow(-1);
    for (let key in data[1]) {
        newRow.insertCell(-1).innerHTML = data[1][key];
    }
}