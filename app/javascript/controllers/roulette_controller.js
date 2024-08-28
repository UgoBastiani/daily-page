import { Controller } from "stimulus";

const wait = (amount = 0) => new Promise((resolve) => setTimeout(resolve, amount));

export default class extends Controller {
  connect() {
    this.swiper = new Swiper(".mySwiper", {
      effect: "cards",
    });
  }

  async start() {
    const totalElements = document.querySelectorAll(".swiper-slide").length;

    const midpoint = Math.floor(totalElements / 2);
    let lastOutput = 130;

    for (let i = 0; i < midpoint; i++) {
      this.swiper.slideNext();

      if (i >= midpoint - 5) {
        lastOutput += 100;
        await wait(lastOutput);
      } else {
        await wait(130);
      }
    }
  }
}
