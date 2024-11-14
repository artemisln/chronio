import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["defaultIcon", "activeIcon"];

  connect() {
    if (this.element.classList.contains("active-link")) {
      this.defaultIconTarget.style.display = "none";
      this.activeIconTarget.style.display = "inline";
    }
  }

  toggle(event) {
    event.preventDefault();
    this.element.classList.toggle("active-link");

    if (this.element.classList.contains("active-link")) {
      this.defaultIconTarget.style.display = "none";
      this.activeIconTarget.style.display = "inline";
    } else {
      this.defaultIconTarget.style.display = "inline";
      this.activeIconTarget.style.display = "none";
    }
  }
} 