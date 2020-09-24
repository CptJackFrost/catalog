window.addEventListener('DOMContentLoaded', () =>{
    'use strict'
    
    
    const query = fetch('http://localhost/catalog/server.php?getGoods')
                        .then(response => response.json())
                        .then(result => {
                            console.log(result);
                            tableBuilder(result)});
                    })




function tableBuilder(data){
    const table = document.getElementsByClassName('cat_table')[0];
    for (let row of data){
        const newRow = table.insertRow(-1);
        let p = row[5] > 1? 1:0; 
        newRow.insertCell(-1).innerHTML = `<a href="card.html?id=${row[0]}">${row[1]}</a>`;
        newRow.insertCell(-1).innerHTML = row[2];
        newRow.insertCell(-1).innerHTML = row[3];        
        newRow.insertCell(-1).innerHTML = row[4] + 10 * p;
    }
}
