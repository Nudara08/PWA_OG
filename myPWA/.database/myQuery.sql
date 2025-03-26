-- CREATE TABLE EXTENSION(extID INTEGER NOT NULL PRIMARY KEY, name TEXT NOT NULL, hyperlink TEXT NOT NULL, about TEXT NOT NULL, image TEXT NOT NULL, language TEXT NOT NULL);

-- INSERT INTO extension(extID, name, hyperlink, about, image, language)
-- VALUES (X, "", "", "", ""); -- Insert template

-- INSERT INTO extension(extID, name, hyperlink, about, image, language) VALUES 
-- (4, "Live Server", "https://marketplace.visualstudio.com/items?itemName=ritwickdey.LiveServer", "Launch a development local Server with live reload feature for static & dynamic pages", "https://ritwickdey.gallerycdn.vsassets.io/extensions/ritwickdey/liveserver/5.7.9/1661914858952/Microsoft.VisualStudio.Services.Icons.Default", "HTML CSS JS");
-- SELECT * FROM extension;

CREATE TABLE IF NOT EXISTS Events (
    eventID INTEGER NOT NULL PRIMARY KEY, 
    name TEXT NOT NULL, 
    hyperlink TEXT NOT NULL, 
    about TEXT NOT NULL, 
    image TEXT NOT NULL, 
    event_date TEXT NOT NULL,  -- Renamed from 'date' to 'event_date'
    time TEXT NOT NULL
);

INSERT INTO Events (name, hyperlink, about, image, event_date, time)
VALUES
("Total Solar Eclipse", "event.html", "A total solar eclipse visible across North America.", "solar_eclipse.jpg", "2025-08-12", "11:00 AM"),
("Perseid Meteor Shower Peak", "event.html", "One of the best annual meteor showers, peaking this night.", "perseid_meteor.jpg", "2025-08-13", "02:00 AM"),
("Lunar Eclipse", "event.html", "A stunning total lunar eclipse visible worldwide.", "lunar_eclipse.jpg", "2025-09-07", "09:45 PM"),
("Blue Moon", "event.html", "A rare second full moon in a calendar month.", "blue_moon.jpg", "2025-10-31", "10:30 PM"),
("Jupiter at Opposition", "event.html", "Jupiter will be closest to Earth, shining brightly.", "jupiter_opposition.jpg", "2025-11-14", "11:00 PM"),
("Geminid Meteor Shower", "event.html", "A spectacular meteor shower with up to 120 meteors per hour.", "geminid_meteor.jpg", "2025-12-14", "03:00 AM"),
("Comet C/2025 P1", "event.html", "A newly discovered comet expected to be visible to the naked eye.", "comet_p1.jpg", "2026-01-22", "08:30 PM"),
("Saturn at Opposition", "event.html", "Saturn will be at its closest and brightest.", "saturn_opposition.jpg", "2026-02-18", "10:00 PM"),
("Venus and Mars Conjunction", "event.html", "Venus and Mars will appear very close together.", "venus_mars.jpg", "2026-03-05", "07:45 PM"),
("Eta Aquariids Meteor Shower", "event.html", "A meteor shower associated with Halleys Comet.", "eta_aquariids.jpg", "2026-05-06", "04:00 AM"),
("Annular Solar Eclipse", "event.html", "A “ring of fire” eclipse visible from select locations.", "annular_eclipse.jpg", "2026-06-13", "01:15 PM"),
("Supermoon", "event.html", "The Moon will appear larger and brighter than usual.", "supermoon.jpg", "2026-07-10", "09:30 PM"),
("Neptune at Opposition", "event.html", "Neptune will be closest to Earth, visible with telescopes.", "neptune_opposition.jpg", "2026-09-18", "11:15 PM"),
("Orionid Meteor Shower", "event.html", "A meteor shower produced by Halleys Comet.", "orionid_meteor.jpg", "2026-10-21", "03:30 AM"),
("Partial Lunar Eclipse", "event.html", "A partial eclipse of the Moon will be visible.", "partial_lunar.jpg", "2026-11-28", "10:45 PM"),
("Uranus at Opposition", "event.html", "Uranus will be at its brightest and visible with binoculars.", "uranus_opposition.jpg", "2026-12-09", "09:00 PM"),
("Quadrantid Meteor Shower", "event.html", "A brief but intense meteor shower.", "quadrantid_meteor.jpg", "2027-01-04", "05:00 AM"),
("Total Lunar Eclipse", "event.html", "The Moon will turn red during this total eclipse.", "total_lunar.jpg", "2027-02-20", "08:50 PM"),
("Mercury at Greatest Elongation", "event.html", "Best time to view Mercury at its farthest from the Sun.", "mercury_elongation.jpg", "2027-03-15", "06:30 PM"),
("Lyrid Meteor Shower", "event.html", "An annual meteor shower with bright fireballs.", "lyrid_meteor.jpg", "2027-04-22", "02:45 AM"),
("Mars at Opposition", "event.html", "Mars will be closest to Earth, glowing bright red.", "mars_opposition.jpg", "2027-06-10", "10:30 PM"),
("Delta Aquariids Meteor Shower", "event.html", "A moderate meteor shower best viewed in dark skies.", "delta_aquariids.jpg", "2027-07-30", "03:15 AM"),
("Solar Eclipse", "event.html", "A spectacular total solar eclipse visible from Africa.", "solar_eclipse_2027.jpg", "2027-08-02", "12:00 PM"),
("Venus at Greatest Brightness", "event.html", "Venus will shine brilliantly in the evening sky.", "venus_brightness.jpg", "2027-09-14", "07:00 PM"),
("Leonid Meteor Shower", "event.html", "A famous meteor shower known for occasional meteor storms.", "leonid_meteor.jpg", "2027-11-17", "04:30 AM");

SELECT * FROM Events;
-- SELECT * FROM extension WHERE date = '2025';