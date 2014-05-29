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

# date spinners
jQuery ($) ->
  date = new Date()

  # data for the counters
  month_data = [42, 68, 72, 53, 103, 84, 63, 29, 48, 61, 98, 110]

  $("#tickets_last_month").countTo
    from: Math.floor(month_data[date.getMonth()] / 2)
    to: month_data[date.getMonth()]
    speed: 1000
    refreshInterval: 50

  lines = month_data[date.getMonth()] * 22 / 7 * date.getDay()
  $("#lines_this_week").countTo
    from: Math.floor(lines / 2)
    to: Math.floor(lines)
    speed: 2000
    refreshInterval: 50

  return


# navigation
$ ->
  $(".toggle-nav").click ->
    toggleNav()
    return
  return

toggleNav = ->
  if $(".wrapper").hasClass("show-nav")
    $(".wrapper").removeClass "show-nav"
  else
    $(".wrapper").addClass "show-nav"
  return

$ ->
  $(".project").click ->
    $(".project.active").removeClass "active"
    $(this).addClass "active"
    return
