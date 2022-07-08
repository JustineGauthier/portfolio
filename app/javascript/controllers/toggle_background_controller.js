import { Controller } from "stimulus"
export default class extends Controller {

  background() {
    this.element.classList.toggle("blue")
  }
}
