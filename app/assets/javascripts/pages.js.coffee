initialize = ->
  myLatlng = new google.maps.LatLng(47.465061, 19.029002)
  mapOptions =
    zoom: 15
    center: myLatlng
    disableDefaultUI: true
    draggable: ($(document).width() > 480)

  map = new google.maps.Map(document.getElementById("map-canvas"), mapOptions)
  marker = new google.maps.Marker(
    position: myLatlng
    map: map
    title: "AppMaintainers"
  )
  return
google.maps.event.addDomListener window, "load", initialize

# date spinners
$ ->
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

  # navigation
  $(".toggle-nav").click (e) ->
    toggleNav()
    e.preventDefault()
    return

  # esc from menu
  $(document).keyup (e) ->  
    toggleNav()  if $("#wrapper").hasClass("show-nav")  if e.keyCode is 27
    return
  $(document).mouseup () ->
    toggleNav() if $("#wrapper").hasClass("show-nav")  
    return

  ###
  $(document).on "pageinit", "#landing", ->
    $(document).on "swipeleft swiperight", "#landing", (e) ->
      if $.mobile.activePage.jqmData("panel") isnt "open"
        if e.type is "swipeleft"
          $(".menu").panel "open"
        else $(".content").panel "open"  if e.type is "swiperight"
      return
    return
  ###

  #$(".toggle-nav").click ->
  #  $('.wrapper').toggleClass('show-nav')

  # project
  $(".project").click ->
    if window.innerWidth > 767
      card_id = $(@).attr("id").split("-")[1]
      $("#one-#{card_id}").addClass("animated bounceInRight")
      $("#one-#{card_id} td.title, #one-#{card_id} td.category").css('background-color', $(@).css('background-color') )
    else
      $(".project.active").removeClass "active"
      $(this).addClass "active"
    return

  $(".sign a").click ->
    project = $(@).parents('.one-project')
    project.addClass("animated bounceOutLeft")
    #project.one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend', project.removeClass("animated bounceInRight bounceOutLeft"))
    setTimeout (->
      project.removeClass("animated bounceInRight bounceOutLeft")
      return
    ), 500
    return

  $(".coins").click ->
    logo = $(".coins")
    logo.addClass("animated flip")
    setTimeout (->
      logo.removeClass("animated flip")
      return
    ), 1000
    return

  $(".profil").click ->
    prof = $(".profil h4")
    prof.removeClass("desc")
    #prof.one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend', prof.addClass("desc"))
    return

  $(".menu li a").on "click", (e) ->
    e.preventDefault()
    setTimeout "$.scrollTo( $(\"" + $(this).attr("href") + "\"), 500 )", 500
    return

  $(".header_bar li a").on "click", (e) ->
    e.preventDefault()
    setTimeout "$.scrollTo( $(\"" + $(this).attr("href") + "\"), 500 )"
    return

  return

toggleNav = ->
  if $(".wrapper").hasClass("show-nav")
    $(".wrapper").removeClass "show-nav"
  else
    $(".wrapper").addClass "show-nav"
  return
