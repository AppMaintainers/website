initialize = ->
  myLatlng = new google.maps.LatLng(47.465061, 19.029002)
  mapOptions =
    zoom: 16
    center: myLatlng
    disableDefaultUI: true

  map = new google.maps.Map(document.getElementById("map-canvas"), mapOptions)
  marker = new google.maps.Marker(
    position: myLatlng
    map: map
    title: "Hello World!"
  )
  return
google.maps.event.addDomListener window, "load", initialize

