# Pin npm packages by running ./bin/importmap

pin "application"
pin "trix"
pin "iconToggle", to: "javascript/iconToggle.js"
pin "@rails/actiontext", to: "actiontext.esm.js"
pin "@rails/ujs", to: "@rails--ujs.js" # @7.1.3
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "flowbite" # @3.1.2
pin "@popperjs/core", to: "@popperjs--core.js" # @2.11.8 - This alias is often created by the pin command, it's fine to keep.
pin "flowbite-datepicker" # @1.3.2
