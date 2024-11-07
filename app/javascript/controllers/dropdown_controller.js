import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["menu", "languageMenu"];

  toggle(event) {
    event.stopPropagation();
    event.preventDefault();
    this.menuTarget.classList.toggle("hidden");
  }

  close() {
    if (!this.menuTarget.classList.contains("hidden")) {
      this.menuTarget.classList.add("hidden");
    }
    if (!this.languageMenuTarget.classList.contains("hidden")) {
      this.languageMenuTarget.classList.add("hidden");
    }
  }

  toggleLanguage(event) {
    event.stopPropagation();
    this.languageMenuTarget.classList.toggle("hidden");
  }

  closeUnlessDropdown(event) {
    if (!this.element.contains(event.target)) {
      this.close();
    }
  }
}