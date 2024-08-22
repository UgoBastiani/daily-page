import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="questionnaire-home"
export default class extends Controller {
  static targets = ["question1", "question2", "question3"]

  connect() {
    console.log("Questionnaire controller connected")
  }

  selectMood(event) {
    this.storeValue(event)
    console.log(this.storeValue)
    this.question1Target.classList.add("d-none")
    this.question2Target.classList.remove("d-none")
  }

  selectPages(event) {
    this.storeValue(event)
    this.question2Target.classList.add("d-none")
    this.question3Target.classList.remove("d-none")
  }

  selectAge(event) {
    this.storeValue(event)
    this.question3Target.classList.add("d-none")
    this.element.submit()
  }

  storeValue(event) {
    const input = document.createElement("input")
    input.type = "hidden"
    input.name = event.target.name
    input.value = event.target.value
    this.element.appendChild(input)
    event.preventDefault()
  }
}
