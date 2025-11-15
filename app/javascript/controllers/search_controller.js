import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="search"
export default class extends Controller {
  static targets = ["form", "input"]

  open() {
    this.formTarget.classList.remove("hidden")
    this.formTarget.classList.add("flex")
    this.inputTarget.focus()
    document.body.classList.add("overflow-hidden")
  }

  close() {
    this.formTarget.classList.add("hidden")
    this.formTarget.classList.remove("flex")
    document.body.classList.remove("overflow-hidden")
  }
}