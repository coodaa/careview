import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="show-all-reviews"
export default class extends Controller {
  static targets = ["moreButton", "lessButton"]
  connect() {
    this.showLess()
  }

  showMore() {
    this.moreButtonTarget.hidden = true
    this.lessButtonTarget.hidden = false
    console.log('show all')
  }

  showLess() {
    this.moreButtonTarget.hidden = false
    this.lessButtonTarget.hidden = true
    console.log('show less')
  }
}
