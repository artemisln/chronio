import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["searchContainer"];

  toggle() {
    this.searchContainerTarget.classList.toggle("expanded");
  }
} 