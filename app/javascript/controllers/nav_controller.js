import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="nav"
export default class extends Controller {
  static targets = ['buton']
  connect() {
    console.log('nav');
    console.log(butonTarget)
  }

  active(){
    this.element.style.color = 'green';
  }
}
