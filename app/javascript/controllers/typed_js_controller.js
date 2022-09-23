import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

export default class extends Controller {
  static values = {
    name: String
  }

  connect() {
    console.log("typed");
    console.log(this.nameValue);
    new Typed(this.element, {
      strings: [`Welcome back ${this.nameValue}`],
      typeSpeed: 55,
      showCursor: false
    })
  }
}
