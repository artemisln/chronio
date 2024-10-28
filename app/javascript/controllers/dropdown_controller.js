import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["menu", "languageMenu"];

  toggle(event) {
    this.menuTarget.classList.toggle("hidden");
  }

  toggleLanguage(event) {
    event.stopPropagation();
    this.languageMenuTarget.classList.toggle("hidden");
  }

  closeUnlessDropdown(event) {
    if (!this.element.contains(event.target)) {
      this.menuTarget.classList.add("hidden");
      this.languageMenuTarget.classList.add("hidden");
    }
  }
}