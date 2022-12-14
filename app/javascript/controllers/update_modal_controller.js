import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="update-modal"
export default class extends Controller {
  static targets = [ ]

  connect() {
    console.log("connected")
  }

  updateForm(e) {
    console.log(e.currentTarget)
    const propertyId = e.currentTarget.querySelector("#propertyId").innerText
    const transactionId = e.currentTarget.querySelector("#transactionId").innerText

    const url = `/properties/${propertyId}/transactions/${transactionId}/edit`

    fetch(url, {
      headers: { "Accept": "application/json" }
    })
      .then(response => response.json())
      .then(data => {
        this.element.insertAdjacentHTML("afterbegin", data.form)
      })
  }

  removeForm(e) {
    this.element.children[0].remove();
  }
}
