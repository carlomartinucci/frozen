
$(document).ready(function(){

	var elem = $('#food-search-input');

   // Save current value of element
   elem.data('oldVal', elem.val());

   // Look for changes in the value
   elem.bind("propertychange change click keyup input paste", function(event){
      // If value has changed...
      if (elem.data('oldVal') != elem.val()) {
       // Updated stored value
       elem.data('oldVal', elem.val());

       // Do action
       $('#food-search-form').trigger('submit.rails');
       console.log("searched: " + $('#food-search-input').val());
     }
   });


});
