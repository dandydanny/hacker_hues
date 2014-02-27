$(document).ready(function() {
  console.log("JS ready!");
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
  $("#create-user-button").click(function(event){
    console.log("event fired");
    event.preventDefault();
    $("#login-form").animate({top:"-10em"});
    $("#signup-form").animate({top:"0.1em"});
  });

  $("#login-user-button").click(function(event){
    event.preventDefault();
    $("#signup-form").animate({top:"-10em"});
    $("#login-form").animate({top:"0.1em"});
  });
});
