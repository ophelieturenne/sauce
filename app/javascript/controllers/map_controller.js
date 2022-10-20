import { Controller } from "@hotwired/stimulus"
import mapboxgl from "mapbox-gl"
// Connects to data-controller="map"
export default class extends Controller {
  static values = {
    apiKey: String,

  }

  connect() {
    mapboxgl.accessToken = this.apiKeyValue

    this.map = new mapboxgl.Map({
      container: this.element, // container ID
      style: 'mapbox://styles/mapbox/streets-v10', // style URL
      center: [-74.5, 40], // starting position [lng, lat]
      zoom: 9, // starting zoom
      });
      map.on('style.load', () => {
      // map.setFog({}); // Set the default atmosphere style
    });
  }
}
