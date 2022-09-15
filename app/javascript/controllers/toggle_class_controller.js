import { Controller } from "@hotwired/stimulus"

//  Connects to data-controller="transactions"
export default class extends Controller {
  static classes = [ "active" ]
  static targets = ["toggleElement"]

  connect() {
    console.log(this.toggleElementTargets);
  }

  displayDrop() {
    this.toggleElementTarget.classList.toggle(this.activeClass);
  }
}
