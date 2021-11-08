$( document ).ready(function() {
  $(".add-type").hide();
  $( "#season-area" ).hide();
  $(".add-type-new").attr("disabled", true);

  $("#content_content_type").change(function() {
    
    content_selected = $('#content_content_type').find(":selected").text();
    if (content_selected == "Add a new type")
    {
      $(".add-type").show();
      $(".add-type-new").attr("disabled", false);
    }
    else{
      debugger
      $(".add-type").hide();
      $("input#content_content_type").attr("disabled", true);
    }
  })
  
  $( ".has_season" ).click(function() {
    $( "#season-area" ).toggle();
  });
});