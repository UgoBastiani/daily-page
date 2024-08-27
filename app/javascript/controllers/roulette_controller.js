import { Controller } from "stimulus";

export default class extends Controller {
  static values = { favorites: Array }; // Define a value to hold the favorites books
  static targets = [ "list" ]
  connect() {
    console.log(this.favoritesValue);
    this.favoritesValue = this.favoritesValue; // Access the favorites array value
    this.rand = (min, max) => Math.floor(Math.random() * (max - min)) + min;
    this.play(); // Call the play function when the controller connects

  }

  play() {
    // const rand = (min, max) => Math.floor(Math.random() * (max - min)) + min;
    const width = 80;
    const wrap = document.querySelector('.roulette-container .wrap');

    this.spin_promise = (index) => {
      return new Promise((resolve, reject) => {
        if (index >= 0 && index < this.favoritesValue.length) {
          let pixels = width * (index + 1);
          let circles = 1760 * 15; // 15 circles
          pixels -= 80;
          pixels = this.rand(pixels + 2, pixels + 79);
          pixels += circles;
          pixels *= -1;

          wrap.style.backgroundPosition = `${pixels + (wrap.offsetWidth / 2)}px`;

          setTimeout(() => {
            wrap.style.transition = "none";
            let pos = (((pixels * -1) - circles) * -1) + (wrap.offsetWidth / 2);
            wrap.style.backgroundPosition = `${pos}px`;
            setTimeout(() => {
              wrap.style.transition = "background-position 5s";
              resolve();
            }, 510);
          }, 5000 + 700);
        } else {
          reject(new Error("Invalid book index"));
        }
      });
    };



    this.#runPlay(); // Start the game
  }

  disconnect() {
    this.#runPlay = false
  }

  #runPlay = () => {
    let index = this.rand(0, this.favoritesValue.length); // Randomly select a book index

    this.spin_promise(index).then(() => {
      console.log("[Ended]");
      let bookDisplay = document.createElement("div");
      bookDisplay.setAttribute("class", "book-display");
      bookDisplay.innerHTML = `
        <img src="${this.favoritesValue[index].thumbnail}" alt="${this.favoritesValue[index].title}">
        <p>${this.favoritesValue[index].title}</p>
      `;
      this.listTarget.appendChild(bookDisplay);

      setTimeout(() => {
        console.log("[Start game]");
        this.#runPlay();
      }, 2500);
    }).catch(error => console.error(error));
  };
}
