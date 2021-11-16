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
			for(var key of result){
				
			}
			

/*			var arr = result.split(']');
			var arr0 = arr.split('d');
			var arr1 = arr[0].trim();
			var arr2 = arr[1].trim();
//			$(location).href('href', './cscenter?category='+arr1[0].category);
			$('.trigger').trigger('click') */
			
		},
		error : function(){
			alert('실패요~');
		}
	})
}
