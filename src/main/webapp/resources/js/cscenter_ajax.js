/**
 *  cscenter_ajax.js
 */
 
function csAjax(category, num) {
	 $.ajax({
		url : "./cscenter/cscenterAjax",
		type : "GET",
		data : {
			"category" : category,
			"num" : num
		},
		success : function(result){
			var arr = result.split(']');
			var arr1 = arr[0].trim();
			var arr2 = arr[1].trim();
			
			$('.trigger').trigger('click')
			
		},
		error : function(){
			alert('실패요~');
		}
	})
}
