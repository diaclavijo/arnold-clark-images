var images_fail = 0
$( document ).ready(function(){
  $( '.image' ).error(function(){
    $( '#'.concat(this.id) ).remove();
    console.log(this.id);
    images_fail += 1;
    if ( images_fail > 5 ) {
      $( "#error_load_images" ).show();
    }
  });
});






