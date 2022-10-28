import { Controller } from "@hotwired/stimulus"
import { Popup } from "mapbox-gl"

// Connects to data-controller="answer"
export default class extends Controller {
  static values = {
    ans: String
  }

  connect() {
    console.log("Hello world")
  }
  disable() {
    if(this.element.innerText == this.ansValue){
      this.element.style.backgroundColor = "#16f943"

    }
    else {
      this.element.setAttribute("disabled", "")
      this.element.style.backgroundColor = "#f91616"

    }
  }
}
