// $(window).load(function() {
//   loadScript();
// });

// var map;

// function initialize() {
        
//   var mapOptions = {
//           center: new google.maps.LatLng(30.055487, 31.279766),
//           zoom: 8,
//           mapTypeId: google.maps.MapTypeId.NORMAL,
//           panControl: true,
//           scaleControl: false,
//           streetViewControl: true,
//           overviewMapControl: true
//         };
//         // initializing map
//         map = new google.maps.Map(document.getElementById("taco-map"),mapOptions);
        
//    // geocoding 
//       var geocoding  = new google.maps.Geocoder();
//       $("#submit_button_geocoding").click(function(){
//         codeAddress(geocoding);
//       });
//       $("#submit_button_reverse").click(function(){
//         codeLatLng(geocoding);
//       });
      
   
// }

// function codeAddress(geocoding){
//   var address = $("#search_box_geocoding").val();
//   if(address.length > 0){
//     geocoding.geocode({'address': address},function(results, status){
//       if(status == google.maps.GeocoderStatus.OK){
//         map.setCenter(results[0].geometry.location);
//         var marker  =  new google.maps.Marker({
//           map: map,
//           position: results[0].geometry.location
//         });
//         }else{
//         alert("Geocode was not successful for the following reason: " + status);
//       }
//     });
//   }else{
//     alert("Search field can't be blank");
//   }
// }

// function loadScript() {
//   console.log("map loading ...");
//   var script = document.createElement('script');
//   script.type = 'text/javascript';
//   //'https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyBJYFdplGeKUUEmGZ-vL4ydiSZ09Khsa_o&sensor=false&libraries=drawing'
//   script.src = 'https://maps.googleapis.com/maps/api/js?v=3.exp' +
//     //'&v=3.14'+
//     //'&key=AIzaSyBJYFdplGeKUUEmGZ-vL4ydiSZ09Khsa_o'+
//     '&libraries=drawing'+
//     '&callback=initialize';
//   document.body.appendChild(script);
// }