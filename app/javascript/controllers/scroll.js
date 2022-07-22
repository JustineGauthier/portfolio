import { Controller } from "stimulus"
export default class extends Controller {
  static targets = ["button"]

  btnVisibility() {
    if (window.scrollY > 40) {
        this.buttonTarget.style.visibility = "visible";
    } else {
        this.buttonTarget.style.visibility = "hidden";
    }
  };

  scrollToTop() {
    window.scrollTo({
      top: 0,
      behavior: "smooth"
    });
  }
}
