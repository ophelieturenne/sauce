import { Controller } from "@hotwired/stimulus"

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
      this.element.innerText = "alert!"
    }
    else {
      this.element.setAttribute("disabled", "")
    }


  }
}
