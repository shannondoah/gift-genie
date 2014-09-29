$(document).ready(function() {
	$('#twitter-button').click(function(event) {
   
	});

  $(document).on('click', '#category-panel', function(element) {
    $(this).toggleClass('button');
    if ($(this).find('input').is(':checked') == true) { 
      $(this).find('input').prop('checked', false) 
    }
    else {
      $(this).find('input').prop('checked', true)
    };


    e.preventDefault();
  
  });
});

