const BASE_URL = 'http://localhost:3000'

window.addEventListener("DOMContentLoaded", () => {
    getStates()
})


function getStates() {
    let states = document.getElementById('states')
    states.innerHTML = ''
    fetch(BASE_URL + '/rolls')
    .then(res => res.json())
    .then(states => {
        states.map(state => {
        states.innerHTML += `        
        <li>
            <a href="#" data-id="${state.id}">${state.name}</a>
        </li>
        `
        })
        attachClicksToLinks()
    })}


function attachClicksToLinks() {
    const states = document.querySelectorAll('li a')
    states.forEach(state => {
        state.addEventListener('click', displayState)
    })
}

function displayState(e) {
    console.log(e.target)
    let id = e.target.dataset.id
    let states = document.getElementById('states')
    states.innerHTML = ''
    fetch(BASE_URL + `/states/${id}`)
    .then (res => res.json())
    .then(state => {
        states.innerHTML = `
        <h3>${state.name}</h3>
        `
        // state.rolls.forEach(roll => {
        //     console.log(roll)
        // })
    })
}





