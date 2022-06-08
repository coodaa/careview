import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="show-all-reviews"
export default class extends Controller {
  static targets = ["allReviews", "moreButton", "lessButton"]
  connect() {
    this.showLess()
  }

  showMore() {
    this.moreButtonTarget.hidden = true
    this.allReviewsTarget.style.height = "unset"
    this.allReviewsTarget.style.visibility = "visible"
    this.lessButtonTarget.hidden = false
    console.log('show all')
  }

  showLess() {
    this.moreButtonTarget.hidden = false
    this.allReviewsTarget.style.visibility = "hidden"
    this.allReviewsTarget.style.height = "0px"
    this.lessButtonTarget.hidden = true
    console.log('show less')
  }
}
