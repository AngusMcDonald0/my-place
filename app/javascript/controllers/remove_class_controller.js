import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="remove-class"
export default class extends Controller {
  static classes = ["toRemove"]

  static values = {
    delay: Number
  }

  connect() {
    setTimeout(() => {
      this.element.classList.remove(this.toRemoveClass);
    }, this.delayValue)
  }
}
