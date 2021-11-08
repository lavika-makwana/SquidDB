$( document ).ready(function() {

  $(".add-type").hide();

  $('select#content_types').on('input', function() {
    if(this.value == 'Add a new type')
    {
      $(".add-type").show();
    }
    else{
      $(".add-type").hide();
    }
  });

  $( "#content_with_seasons" ).click(function() {
    $( "#seasons-nested-form" ).toggle();
  });
  

});