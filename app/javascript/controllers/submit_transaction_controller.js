import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="submit-transaction"
export default class extends Controller {
  connect() {
  }

  submitForm(e) {
    e.preventDefault();
    const url = this.element.action;
    fetch(url, {
      method: "POST",
      headers: { "Accept": "text/plain" },
      body: new FormData(this.element)
    })
      .then(response => response.text())
      .then(data => {
        this.element.outerHTML = data;
      })
  }
}
