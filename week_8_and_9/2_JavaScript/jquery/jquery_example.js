$(document).ready(function(){
 
//RELEASE 0: 
  //Link this script and the jQuery library to the jquery_example.html file and analyze what this code does. 
 
		$('body').css({'background-color': 'pink'})
 
//RELEASE 1:
  //Add code here to select elements of the DOM 
 		var bodyElement = $('body')
 
//RELEASE 2: 
  // Add code here to modify the css and html of DOM elements
 		$('.mascot h1').html('coyotes')
 		$('.mascot h1').css({'color': 'darkred',
 												 'border': '2px solid', 
 													'border-color': 'red',
 													'visibility': 'hidden'})

 
//RELEASE 3: Event Listener
  // Add the code for the event listener here 
 		var tiger = 'http://upload.wikimedia.org/wikipedia/commons/4/49/Panthera_tigris_tigris.jpg' 

 		// $('img').on('mouseover', function(e){
 		//     e.preventDefault()
 		//     $(this).attr('src', tiger)
 		//  })

  	// 	$('img').on('mouseout', function(e){
 		//     e.preventDefault()
 		//     $(this).attr('src', "http://www.statesymbolsusa.org/IMAGES/South_Dakota/coyote_eastern_380.jpg")
 		//  })


  	$('img').hover(function() {
  			$(this).attr('src', tiger);
  	}, function() {
  			$(this).attr('src', "http://www.statesymbolsusa.org/IMAGES/South_Dakota/coyote_eastern_380.jpg");
  	})
 
//RELEASE 4 : Experiment on your own
 
 
 
 
 
 
})  // end of the document.ready function: do not remove or write DOM manipulation below this.
