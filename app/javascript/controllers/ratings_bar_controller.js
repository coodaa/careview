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
    const height = this.frameTarget.clientHeight;
    const width = this.frameTarget.clientWidth;
    target.height = height;
    target.width = width;
    const ctx = target.getContext('2d');
    ctx.beginPath();
    ctx.fillStyle = '#FFC93C';
    const step = (width / 5);
    const progress = (rate * step);
    ctx.fillRect(0, 0, progress, height);

    ctx.fillStyle = '#31326F';
    console.log(step);
    ctx.font = 'bold 12px Open Sans';
    ctx.fillText(`${rate}`, 15, (height / 1.4));
  }
}
