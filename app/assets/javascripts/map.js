var userGeo = document.getElementById("taco-map");
var userLat = 0;
var userLong = 0;

function initialize() {
    // Get the coordinates
    // First try from session storage
    var sessionUserLat = window.sessionStorage.userLat; //if I make my index page pull tacos with Angular, I can use this sessionStorage to get user location and only display tacos based on that location ~ KBhatt
    var sessionUserLong = window.sessionStorage.userLong;
    if (sessionUserLat === undefined || sessionUserLong === undefined)  {
    	if (navigator.geolocation) {
    		navigator.geolocation.getCurrentPosition(setPosition);
    	} else {
    		loadScript();
    	}

    } else{
    	userLat = parseFloat(sessionUserLat);
    	userLong = parseFloat(sessionUserLong);
    	console.log('userLat is', userLat);
    	console.log('userLong is', userLong);
    	loadScript();
    }
  }
  function setPosition(position) {
  	userLat =  position.coords.latitude;
  	userLong = position.coords.longitude; 
  	window.sessionStorage.setItem('userLat', userLat);
  	window.sessionStorage.setItem('userLong', userLong);
  	loadScript();
  }
    //Eventually after camp, I'll need to remove the userLat/Long at some point based on some condition - for example, time, changed location, etc. 
    //Here is the way to get that done: window.sessionStorage.removeItem('userLat')

// Map-based scripts
function initializeMap() {
	console.log(userLat,userLong)
	var mapOptions = {
		zoom: 18,
      //below centered the map based on a hard-coded set of coordinates, but I'd like to grab a visitor's location with cookies
      center: new google.maps.LatLng(userLat,userLong),
      mapTypeControl: false,
      scrollwheel: false,
      draggable: true,
      panControl: true,
      zoomControl: false
    };
    var map = new google.maps.Map(document.getElementById('taco-map'), mapOptions);
    var stylez = [
    {
    	"featureType": "all",
    	"elementType": "labels.text.fill",
    	"stylers": [
    	{
    		"saturation": 36
    	},
    	{
    		"color": "#000000"
    	},
    	{
    		"lightness": 40
    	}
    	]
    },
    {
    	"featureType": "all",
    	"elementType": "labels.text.stroke",
    	"stylers": [
    	{
    		"visibility": "on"
    	},
    	{
    		"color": "#000000"
    	},
    	{
    		"lightness": 16
    	}
    	]
    },
    {
    	"featureType": "all",
    	"elementType": "labels.icon",
    	"stylers": [
    	{
    		"visibility": "off"
    	}
    	]
    },
    {
    	"featureType": "administrative",
    	"elementType": "geometry.fill",
    	"stylers": [
    	{
    		"color": "#000000"
    	},
    	{
    		"lightness": 20
    	}
    	]
    },
    {
    	"featureType": "administrative",
    	"elementType": "geometry.stroke",
    	"stylers": [
    	{
    		"color": "#000000"
    	},
    	{
    		"lightness": 17
    	},
    	{
    		"weight": 1.2
    	}
    	]
    },
    {
    	"featureType": "landscape",
    	"elementType": "geometry",
    	"stylers": [
    	{
    		"color": "#000000"
    	},
    	{
    		"lightness": 20
    	}
    	]
    },
    {
    	"featureType": "poi",
    	"elementType": "geometry",
    	"stylers": [
    	{
    		"color": "#000000"
    	},
    	{
    		"lightness": 21
    	}
    	]
    },
    {
    	"featureType": "road.highway",
    	"elementType": "geometry.fill",
    	"stylers": [
    	{
    		"color": "#000000"
    	},
    	{
    		"lightness": 17
    	}
    	]
    },
    {
    	"featureType": "road.highway",
    	"elementType": "geometry.stroke",
    	"stylers": [
    	{
    		"color": "#000000"
    	},
    	{
    		"lightness": 29
    	},
    	{
    		"weight": 0.2
    	}
    	]
    },
    {
    	"featureType": "road.arterial",
    	"elementType": "geometry",
    	"stylers": [
    	{
    		"color": "#000000"
    	},
    	{
    		"lightness": 18
    	}
    	]
    },
    {
    	"featureType": "road.local",
    	"elementType": "geometry",
    	"stylers": [
    	{
    		"color": "#000000"
    	},
    	{
    		"lightness": 16
    	}
    	]
    },
    {
    	"featureType": "transit",
    	"elementType": "geometry",
    	"stylers": [
    	{
    		"color": "#000000"
    	},
    	{
    		"lightness": 19
    	}
    	]
    },
    {
    	"featureType": "water",
    	"elementType": "geometry",
    	"stylers": [
    	{
    		"color": "#111111"
    	},
    	{
    		"lightness": 17
    	}
    	]
    }
    ];

    var mapType = new google.maps.StyledMapType(stylez, { name:"Grayscale" });
    map.mapTypes.set('Grayscale', mapType);
    map.setMapTypeId('Grayscale');

    function showInfoWindow(event){
    	var contentString = '<h4>' + this.title + '</h4><p>' + this.address + '</p><p><a href="http://maps.google.com/?q=' + this.address + '" target="_blank">Map It!</a></p>';
    	var infowindow = new google.maps.InfoWindow({
    		content: contentString,
    		maxWidth: 200
    	});
    	infowindow.open(map, this);
    }

    $.get('/api/v1/restaurants.json', function (data){
        var bounds = new google.maps.LatLngBounds();//1-A.variable for setting boundaries
        for(var i = 0; i < data.restaurants.length; i++){
        	var restaurant = data.restaurants[i];
        	if(restaurant.latitude < userLat + 0.1 && restaurant.longitude > userLong - 0.1 && restaurant.latitude > userLat - 0.1 && restaurant.longitude < userLong + 0.1){
        		var companyPos = new google.maps.LatLng(restaurant.latitude,restaurant.longitude);
        		bounds.extend(companyPos);
        	}else{
        		var companyPos = new google.maps.LatLng(restaurant.latitude,restaurant.longitude);
        	}
            // var companyPos = new google.maps.LatLng(restaurant.latitude,restaurant.longitude);
            var image = 'https://s3.amazonaws.com/taquistador/pin_45.png';
            var companyMarker = new google.maps.Marker({
            	position: companyPos,
            	map: map,
            	title: restaurant.name,
            	address: restaurant.address,
            	animation: google.maps.Animation.DROP,
            	icon: image,
            	zIndex: 3000});
            google.maps.event.addListener(companyMarker, 'click', showInfoWindow);
          }
        map.fitBounds(bounds);//1-B.sets bounds and center
      })

google.maps.event.addDomListener(window, "resize", function() {
	var center = map.getCenter();
	google.maps.event.trigger(map, "resize");
	map.setCenter(center);
});

}
function loadScript() {
	var script = document.createElement('script');
	script.type = 'text/javascript';
	script.src = 'https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=true&' + 'callback=initializeMap';
	document.body.appendChild(script);
}

window.onload = initialize;
// window.onload = loadScript;

function clearMap(){
	window.sessionStorage.removeItem('userLat',userLat);
	window.sessionStorage.removeItem('userLong',userLong);
}

//- Using a function pointer:
//document.getElementById("refreshMap").onclick(clearMap);

$(document).ready(function(){
	$('#refreshMap').click(function(){
		clearMap();
	});
});