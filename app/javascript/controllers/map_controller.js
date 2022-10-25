import { Controller } from "@hotwired/stimulus"
import mapboxgl from "mapbox-gl"
// import MapboxGeocoder from "@mapbox/mapbox-gl-geocoder"


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
      center: [57.5522, -20.3484], // starting position [lng, lat]
      zoom: 9,
      // starting zoom
    });

      // this.ll = new mapboxgl.LngLat(-123.9749, 40.7736);
      // console.log(ll.lng);

    // Add geolocate control to the map.
    this.map.addControl(
      new mapboxgl.GeolocateControl({
      positionOptions: {
      enableHighAccuracy: true
      },
      // When active the map will receive updates to the device's location as it changes.
      trackUserLocation: true,
      // Draw an arrow next to the location dot to indicate which direction the device is heading.
      showUserHeading: true
      })
    );

    this.map.on('click', (e) => {
      document.getElementById('info').innerHTML =
      // `e.lngLat` is the longitude, latitude geographical position of the event.
      JSON.stringify(e.lngLat.wrap());

    });

    setTimeout(function() {  myLocation(); }, 1500);
    ///
  }

  #fetchAddress() {
    url = `https://api.mapbox.com/geocoding/v5/mapbox.places/${lat}%2C%20${long}.json?access_token=${key}`

  }

}


function myLocation() {
  // console.log("test")
  document.querySelector(".mapboxgl-ctrl-icon").click();
}
