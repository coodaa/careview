import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="map-view"
export default class extends Controller {
  static values = {
    apiKey: String,
    marker: Object
  }

  connect() {
    mapboxgl.accessToken = this.apiKeyValue

    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/mapbox/streets-v10"
    })
    this.#addMarkerToMap()
    this.#fitMapToMarker()
  }

  #addMarkerToMap() {
      const customMarker = document.createElement("div")
      customMarker.className = "marker"
      customMarker.style.backgroundImage = `url('${this.markerValue.image_url}')`
      customMarker.style.backgroundSize = "contain"
      customMarker.style.width = "60px"
      customMarker.style.height = "60px"

      new mapboxgl.Marker(customMarker)
        .setLngLat([this.markerValue.lng, this.markerValue.lat])
        .addTo(this.map)
  }

  #fitMapToMarker() {
    const bounds = new mapboxgl.LngLatBounds()
    bounds.extend([ this.markerValue.lng, this.markerValue.lat ])
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })
  }
}
