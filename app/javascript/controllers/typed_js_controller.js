import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ["Welcome back", "Your properties await"],
      typeSpeed: 80
    })
  }
}
