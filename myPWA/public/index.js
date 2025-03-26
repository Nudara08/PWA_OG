const sqlite3 = require("sqlite3").verbose();
const db = new sqlite3.Database(".database/datasource.db");

// Fetch events from the database
fetch('/events') // Adjust the endpoint as necessary
    .then(response => response.json())
    .then(events => {
        const eventContainer = document.querySelector('.event-container');
        eventContainer.innerHTML = ''; // Clear existing content
        events.forEach(event => {
            const card = document.createElement('div');
            card.className = 'card';
            card.innerHTML = `
                <img src="${event.image}" alt="${event.name}" class="card--avatar">
                <h2 class="card--title">${event.name}</h2>
                <p>${event.about}</p>
                <a href="${event.hyperlink}" class="card--link">View Event</a>
            `;
            eventContainer.appendChild(card);
        });
    })
    .catch(error => console.error('Error fetching events:', error));
            '",\n"image":"' +
            row.image +
            '",\n"language":"' +
            row.language;
        myCounter++;
        if (myCounter == rows.length) {
            myString = myString + '"\n}\n';
        } else {
            myString = myString + '"\n},\n';
        }

    // console.log(myString);
    var fs = require("fs");
    fs.writeFile("public/frontEndData.json", myString + "]", function (err) {
        if (err) {
            console.log(err);
        }
    });

// New code to fetch events and display them as cards
fetch('/events') // Adjust the endpoint as necessary
    .then(response => response.json())
    .then(events => {
        const eventContainer = document.querySelector('.event-container');
        events.forEach(event => {
            const card = document.createElement('div');
            card.className = 'card';
            card.innerHTML = `
                <img src="${event.image}" alt="${event.title}" class="card--avatar">
                <h2 class="card--title">${event.title}</h2>
                <p>${event.description}</p>
                <a href="${event.link}" class="card--link">View Event</a>
            `;
            eventContainer.appendChild(card);
        });
    })
    .catch(error => console.error('Error fetching events:', error));

const express = require('express');
const path = require('path');
const app = express();
const authString = btoa(`applicationId:applicationSecret`);
app.use(express.static(path.join(__dirname, 'public')));

app.get("/", function (req, res) {
    res.sendFile(path.join(__dirname, 'public', 'index.html'));
});
app.listen(5000, () => console.log("Server is running on port 8000 visit http://localhost:5000/ or http://127.0.0.1:5000 to access your website"));