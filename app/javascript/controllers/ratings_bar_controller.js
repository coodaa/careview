import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="ratings-bar"
export default class extends Controller {
  static values = {
    ratings: Object
  }
  static targets = [
    "rating",
    "food",
    "privacy",
    "staff",
    "hygiene",
    "atmosphere",
    "frame"
  ]

  connect() {
    const ratings = this.ratingsValue;
    this.#drawRating(this.ratingTarget, ratings['rating']);
    this.#drawRating(this.foodTarget, ratings['food']);
    this.#drawRating(this.privacyTarget, ratings['privacy']);
    this.#drawRating(this.staffTarget, ratings['staff']);
    this.#drawRating(this.hygieneTarget, ratings['hygiene']);
    this.#drawRating(this.atmosphereTarget, ratings['atmosphere']);
  }

  #drawRating(target, rate) {
    const canvas = target;
    const height = this.frameTarget.clientHeight;
    console.log(rate, height);
    const ctx = canvas.getContext('2d');
    ctx.beginPath();
    ctx.fillStyle = '#FFC93C';
    const progress = (rate * 45);
    ctx.fillRect(0, 0, progress, height);

    ctx.font = 'bold 120px serif Lora';
    ctx.fillText(`${ rate}`, progress + 50, 15);
  }
}
