/**
 *  connected: house_write.jsp
 */


	$('.editor-cover-image-input__empty').click(function(){
		$('#thumbnail-input').trigger("click");	
	})		


	$(function() {
		$("#thumbnail-input").on('change', function(){
			readURL(this);
		});
	});

				
	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();
			reader.onload = function (e) {
				$('#View').attr('src', e.target.result);
				}
			$('editor-cover-image-input__empty').attr('style', 'display:none;');
			$('#View').removeAttr('hidden');
			$('.editor-cover-image-input').html($('#hidden-man').html());
			reader.readAsDataURL(input.files[0]);
		}
	}


    $('.editor-submit-menu-pc-button').click(function(){
    	var house_id=$('[name=house_id]').val();
    	var house_nickname=$('[name=house_nickname]').val();
    	var house_title=$('[name=house_title]').val();

    	 
    	if(house_id!='' && house_nickname!=''&&house_title!=''){
	    	$('[name=house-feed__form]').attr('action', '/housewarming/write');			
	    	$('[name=house-feed__form]').submit();
    	}
    	
    }) 