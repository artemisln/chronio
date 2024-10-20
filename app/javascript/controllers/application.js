import { Application } from "@hotwired/stimulus";

const application = Application.start();

// Configure Stimulus development experience
application.debug = false;
window.Stimulus   = application;

import Rails from "@rails/ujs";
Rails.start();
console.log("UJS IS RUNNING");

export { application };
