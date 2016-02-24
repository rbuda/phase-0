// U3.W9:JQuery


// I worked on this challenge [by myself, with: ].
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})

//RELEASE 2:
  //Add code here to select elements of the DOM

bodyElement = $('body');
h1Element = $('h1');
headerElement  = $('header');
mascotClass = $('.mascot');
logoElement = $('.mascot img');

//RELEASE 3:
  // Add code here to modify the css and html of DOM elements

mascotClass.css({'border': '2px solid #000'})
logoElement.css({'border': '3px dashed #000'})

cohort = $('.mascot h1')
cohort.html()

//RELEASE 4: Event Listener
  // Add the code for the event listener here

  $('img').mouseover(function() {
    // e.preventDefault()
    $(this).attr('src', 'http://www.soulmunchies.com/wp-content/uploads/2010/07/Bubbles_underwater_theme-80x60.jpg')
  })


//RELEASE 5: Experiment on your own

// What is jQuery? It is the library for JavaScript.  Handles the manipulation of websites with JS.  

// What does jQuery do for you? Handles manipulation of websites to give them actions, movements, changes in display etc.

// What did you learn about the DOM while working on this challenge? Accessing parents gives an array of its' children.

})  // end of the document.ready function: do not remove or write DOM manipulation below this