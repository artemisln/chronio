function toggleSearchBox() {
  const searchContainer = document.querySelector(".search-container");
  searchContainer.classList.toggle("expanded");
}

// Make this function globally available
window.toggleSearchBox = toggleSearchBox;
