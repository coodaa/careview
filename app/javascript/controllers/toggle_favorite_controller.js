import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle-favorite"
export default class extends Controller {
  static targets = [ "star", "text" ]

  connect() {
    console.log("Hello from our first Stimulus controller")
  }

  toggleRating(event) {
    // this.starTarget.classList.toggle("favorited")
    if (this.starTarget.classList.contains("favorited")) {
      this.starTarget.classList.remove("favorited")
      this.textTarget.innerText = "Removed from favorites"
    } else {
      this.starTarget.classList.add("favorited")
      this.textTarget.innerText = "Added to favorites"
    }
  }
}
