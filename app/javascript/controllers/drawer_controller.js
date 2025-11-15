import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="drawer"
export default class extends Controller {
  static targets = ["menu", "overlay"]

  connect() {
    this.overlayTarget.addEventListener("click", () => this.close())
  }

  toggle() {
    this.menuTarget.classList.toggle("translate-x-full")
    this.overlayTarget.classList.toggle("hidden")
    document.body.classList.toggle("overflow-hidden")
  }

  close() {
    this.menuTarget.classList.add("translate-x-full")
    this.overlayTarget.classList.add("hidden")
    document.body.classList.remove("overflow-hidden")
  }
}