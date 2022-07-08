import { Controller } from "stimulus"
export default class extends Controller {
  static targets = ["input"]

  background() {
    // console.log('coucou')
    this.backgroundTarget.classList.toggle("body", "d-none")
  }
}
