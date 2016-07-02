$(document).ready(function(){
  $('.checkbox_active').change(function() {
    var id = $(this).val();
    if($(this).is(":checked")) {
      $.get( "http://localhost:3000/stations/"+id+"/active/true.json", function( data ) {
        console.log(data);
      });
    }else{
      $.get( "http://localhost:3000/stations/"+id+"/active/false.json", function( data ) {
        console.log(data);
      });
    }
  });

  $('.checkbox_deleted').change(function() {
    var id = $(this).val();
    if($(this).is(":checked")) {
      console.log('Esta chequeado '+id);
    }else{
      console.log('No Esta chequeado '+id);
    }
  });
});