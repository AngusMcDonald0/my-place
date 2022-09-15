import { Controller } from "@hotwired/stimulus"

//  Connects to data-controller="transactions"
export default class extends Controller {
  static targets = ["form"]

  connect() {
    console.log(this.formTarget);
  }

  displayForm(event) {
    if (event.currentTarget.innerText === "Hide Form") {
      event.currentTarget.innerText = "+ Add Transaction";
    } else {
      event.currentTarget.innerText = "Hide Form";
    }

    this.formTarget.classList.toggle("d-none");
  }
}
