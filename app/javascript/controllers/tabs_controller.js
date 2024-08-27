import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="tabs"
export default class extends Controller {
  connect() {
    // console.log(this.element.querySelectorAll('a[data-bs-toggle="tab"]'))
    this.element.querySelectorAll('a[data-bs-toggle="tab"]').forEach(tab => {
      tab.addEventListener("shown.bs.tab", event => {
        console.log(event.target.getAttribute("href"))
        const hash = event.target.getAttribute("href");
        console.log(hash)
        history.replaceState(null, null, hash);
      });
    });

    // Show the correct tab on page load based on the URL hash
    const hash = window.location.hash;
    if (hash) {
      const tab = new bootstrap.Tab(this.element.querySelector(`a[href="${hash}"]`));
      tab.show();
    }
  }
}
