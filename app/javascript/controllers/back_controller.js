import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="back"
export default class extends Controller {
  // app/javascript/controllers/back_controller.js
  connect() {
    this.activateTabFromAnchor()
  }

  activateTabFromAnchor() {
    const activeTab = window.location.hash
    if (activeTab) {
      const tabLink = document.querySelector(`a[href="${activeTab}"]`)
      if (tabLink) {
        // Utilise Bootstrap Tab pour activer l'onglet
        const tab = new bootstrap.Tab(tabLink)
        tab.show()
      }
    }
  }
}
