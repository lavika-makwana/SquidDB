$( document ).ready(function() {

  $(".add-type").hide();
  $("#season-area").hide();
  

  $('select#content_types').on('input', function() {
    if(this.value == 'Add a new type')
    {
      $(".add-type").show();
    }
    else{
      $(".add-type").hide();
    }
  });

  $( ".has_season" ).click(function() {
    $( "#season-area" ).toggle();
  });
  
});