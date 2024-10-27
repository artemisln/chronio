import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="dropdown"
export default class extends Controller {
  static targets = ["menu"];

  connect() {
    console.log("Dropdown controller connected");
  }

  toggle(event) {
    event.preventDefault();
    this.menuTarget.classList.toggle("hidden");
  }

  close(){
    if (!this.menuTarget.classList.contains("hidden")){
      this.menuTarget.classList.add("hidden");
    }
  }

  closeUnlessDropdown(e){
    if(!this.element.contains(e.target)){
      this.close();
    }
  }
}
