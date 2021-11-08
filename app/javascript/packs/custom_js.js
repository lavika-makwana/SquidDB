$( document ).ready(function() {
  $("input#content_types").attr("disabled", true);
  $(".add-type").hide();
  $("#season-area").hide();
  
  $('select#content_types').on('input', function() {
    if(this.value == 'Add a new type')
    {
      $(".add-type").show();
      $("input#content_types").attr("disabled", false);
    }
    else{
      $(".add-type").hide();
      $("input#content_types").attr("disabled", true);

    }
  });

  $( ".has_season" ).click(function() {
    $( "#season-area" ).toggle();
  });
  
});