import { Controller } from "@hotwired/stimulus"
import mapboxgl from "mapbox-gl"

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
      zoom: 9
      // starting zoom
    });

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

    setTimeout(function() {  myLocation(); }, 3000);

    navigator.geolocation.getCurrentPosition(position => {
      if (this.map.loaded()) {
        const lng = position.coords.longitude;
        const lat = position.coords.latitude;
        console.log('Your current position is:');
        console.log(`Latitude : ${lat}`);
        console.log(`Longitude: ${lng}`);
        const url = `https://api.mapbox.com/geocoding/v5/mapbox.places/${lng}%2C%20${lat}.json?access_token=${this.apiKeyValue}`
        fetch(url)
          .then(response => response.json())
          .then((data) => {
            const address = data.features[0].place_name;
            // console.log(address);
            const popup = new mapboxgl.Popup().setHTML(`<h2>${address}</h2>`)
            // Create a HTML element for your custom marker
            const customMarker = document.createElement("div")
            customMarker.className = "marker"
            // customMarker.style.backgroundImage = `url('https://d26jy9fbi4q9wx.cloudfront.net/assets/logo-ae2beeecce25d711f577b08deb9adfc6c02b673ed106b8d6c3da0f1721d9da33.svg')`
            // customMarker.style.backgroundSize = "contain"
            customMarker.style.width = "25px"
            customMarker.style.height = "25px"

            // Pass the element as an argument to the new marker
            new mapboxgl.Marker(customMarker)
              .setLngLat([lng, lat])
              .setPopup(popup)
              .addTo(this.map)
            this.popItUp();
          })
      }
    })
  }

  popItUp() {
    document.querySelector(".marker.mapboxgl-marker.mapboxgl-marker-anchor-center").click();
  }
}

function myLocation() {
  document.querySelector(".mapboxgl-ctrl-icon").click();
}
