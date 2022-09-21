import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="submit-transaction"
export default class extends Controller {
  static targets = ["form", "page"]

  connect() {
  }

  submitForm(e) {
    e.preventDefault();
    const url = this.formTarget.action;
    fetch(url, {
      method: "POST",
      headers: { "Accept": "application/json" },
      body: new FormData(this.formTarget)
    })
      .then(response => response.json())
      .then(data => {
        console.log(data);
        if (data.form_with_errors) {
          this.formTarget.outerHTML = data.form_with_errors;
        }
        if (data.entire_page) {
          console.log("work");
          this.pageTarget.outerHTML = data.entire_page;
          this.element.classList = "";
          this.element.style = "";
          this.element.lastChild.remove();
        }
      })
  }
}
