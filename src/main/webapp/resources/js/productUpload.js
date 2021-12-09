/**
 * 상품 등록 
 */
 
//할인 가격 계산
let original_price = '';
let discount_rate = '';
let discount_price = '';

$('#pr_price').on('blur', function(){
	original_price = $('#pr_price').val().trim();
	discount_rate = (100-$('#pr_discount').val().trim() )/ 100
	discount_price = original_price * discount_rate;
	$('#pr_dPrice').val(discount_price);
});

$('#pr_discount').on('blur', function(){
	original_price = $('#pr_price').val().trim();
	discount_rate = (100-$('#pr_discount').val().trim() )/ 100
	discount_price = original_price * discount_rate;
	$('#pr_dPrice').val(discount_price);
});


