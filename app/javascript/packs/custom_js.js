$( document ).ready(function() {
  $('select#content_types').on('input', function() {
    alert( this.value );
  });
});