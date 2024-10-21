import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dropdown"
export default class extends Controller {
  static targets = ["menu"]

  toggle(e) {
    e.preventDefault()
    this.menuTarget.classList.toggle("hidden")
  }

  closeUnlessDropdown(e){
    if(!this.element.contains(e.target)){
      if (!this.menuTarget.classList.contains("hidden")){
        this.menuTarget.classList.add("hidden")
      }
    }
  }
}
