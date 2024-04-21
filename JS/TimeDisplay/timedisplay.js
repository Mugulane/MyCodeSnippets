"use strict";

let initialDate;
let initialTime;

function parseInitialDateTime() {
    const timeText = document.getElementById("timeDisplay");
    if (!timeText) {
        console.error('Elementi ei leitud!');
        return;
    }

    const splittedText = timeText.textContent.split(" ");
    const date = splittedText[0];
    const time = splittedText[1];

    const timeParts = time.split(":");
    const dateParts = date.split(".");

    const seconds = parseInt(timeParts[2], 10);
    const minutes = parseInt(timeParts[1], 10);
    const hour = parseInt(timeParts[0], 10);
    const day = parseInt(dateParts[0], 10);
    const month = parseInt(dateParts[1], 10) - 1; // JS kuud algavad 0-st
    const year = parseInt(dateParts[2], 10);

    initialDate = date;
    initialTime = new Date(year, month, day, hour, minutes, seconds);

    if (isNaN(initialTime.getTime())) {
        console.error('Algse kuupäeva ja kellaaja parsimine ebaõnnestus!');
        return;
    }

    updateClock(); // Käivitame esimese uuenduse kohe pärast parsimist
    setInterval(updateClock, 1000); // Käivitame regulaarse uuendamise iga sekundi järel
}

function updateClock() {
    if (!initialTime) {
        console.error('Algne aeg ei ole määratud!');
        return;
    }

    initialTime = new Date(initialTime.getTime() + 1000); // Lisame ühe sekundi

    const formattedTime = initialTime.toLocaleString('et-EE', {
        hour: '2-digit',
        minute: '2-digit',
        second: '2-digit',
        hour12: false
    }).replace(',', '');

    const timeText = document.getElementById("timeDisplay");
    if (timeText) {
        timeText.textContent = `${initialDate} ${formattedTime}`;
    } else {
        console.error('Elementi ei leitud uuesti!');
    }
}

// Käivitame esmase parsimise ja seadistame intervalli
parseInitialDateTime();
