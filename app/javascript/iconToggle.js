document.addEventListener("DOMContentLoaded", function() {
    const homeLink = document.getElementById("home-link");
    const defaultIcon = homeLink.querySelector(".home-icon-default");
    const activeIcon = homeLink.querySelector(".home-icon-active");
  
    // Check if already on the home page and set initial state
    if (homeLink.classList.contains("active-link")) {
      defaultIcon.style.display = "none";
      activeIcon.style.display = "inline";
    }
  
    // Listen for click event to toggle active state
    homeLink.addEventListener("click", function(event) {
      // Prevent navigation if needed during testing
      event.preventDefault();
  
      // Toggle icons and apply active-link class for styling
      homeLink.classList.toggle("active-link");
  
      if (homeLink.classList.contains("active-link")) {
        defaultIcon.style.display = "none";
        activeIcon.style.display = "inline";
      } else {
        defaultIcon.style.display = "inline";
        activeIcon.style.display = "none";
      }
    });
});
  