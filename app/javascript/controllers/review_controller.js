import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="ratings-bar"
export default class extends Controller {
  static values = {
    ratings: Number
  }
  static targets = [
    "rating",
    "frame"
  ]

  connect() {
    this.#drawRating(this.ratingTarget, this.ratingsValue);

  }

  #drawRating(target, rate) {
    const height = this.frameTarget.clientHeight;
    const width = this.frameTarget.clientWidth;
    target.height = height;
    target.width = width;
    const ctx = target.getContext('2d');
    ctx.beginPath();
    ctx.fillStyle = '#FFC93C';
    const step = (width / 10);
    const progress = (rate * step);
    ctx.fillRect(0, 0, progress, height);

    ctx.fillStyle = '#31326F';
    console.log(step);
    ctx.font = 'bold 12px Open Sans';
    ctx.fillText(`${rate}`, (progress - (step / 1.2)), (height / 1.4));
  }
}
