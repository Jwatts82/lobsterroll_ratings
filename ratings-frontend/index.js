const BASE_URL = 'http://localhost:3000'

window.addEventListener("DOMContentLoaded", () => {
    getRolls()
})


function getRolls() {
    let main = document.getElementById('rolls')
    fetch(BASE_URL + '/rolls')
    .then(res => res.json())
    .then(rolls => {
        console.log(rolls)
    })
}