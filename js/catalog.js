window.addEventListener('DOMContentLoaded', () =>{
    'use strict'
    
    
    const newTable = fetch('http://localhost/catalog/server.php?getGoods')
                        .then(response => response.json())
                        .then(result => {tableBuilder(result)});

    //tableBuilder(data);


    
})

/*const data = [
    ['Наушники', 'Аудиотехника', 2000, 999],
    ['Микрофон', 'Что-то там', 9999, 7653]
]*/



//innerHTML = `<a href="#">${data[1][key]}</a>`

function tableBuilder(data){
    const table = document.getElementsByClassName('cat_table')[0];
    for (let row of data){
        const newRow = table.insertRow(-1);
        for (let value of row) {
            newRow.insertCell(-1).innerHTML = value;
        }
    }
}
