document.addEventListener("DOMContentLoaded", function () {
    const sidenav = document.getElementById("mySidenav");
    const menuBtn = document.querySelector(".menu-btn");
    const closeBtn = document.querySelector(".closebtn");

    menuBtn.addEventListener("click", function () {
        sidenav.classList.toggle("open"); // Toggle sidebar visibility
    });

    closeBtn.addEventListener("click", function () {
        sidenav.classList.toggle("open"); // Toggle sidebar visibility
    });
});

document.addEventListener("DOMContentLoaded", async function () {
    const container = document.querySelector(".container");

    try {
        const response = await fetch("http://localhost:5000/api/items"); // Fetch data
        const items = await response.json(); // Convert to JSON

        container.innerHTML = items
            .map(
                (item) => `
                <div class="card">
                    <img src="${item.image}" alt="${item.name}" class="card--avatar">
                    <h2 class="card--title">${item.name}</h2>
                    <p>Price: $${item.price}</p>
                    <p>${item.description}</p>
                    <a href="#" class="card--link">Buy Now</a>
                </div>
            `
            )
            .join("");
    } catch (error) {
        console.error("Error fetching items:", error);
    }
});

