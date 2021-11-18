/**
 * 회원가입
 */
 



/*이메일 아이디로 변환*/

let emailId = '';
let emailDomain = '';
let memberId = '';

	
	$('#email-id').change(function(){
		emailId = $(this).val(); 
		memberId = emailId + '@' + emailDomain;
		$("#member-id").val(memberId);
	});
	
	
	
	
	/*let manual = manual + '<input class="form-control" placeholder="입력해주세요" size="1" value="">'
	manual = manual + ' <button class="email-input__domain__expand active" aria-label="초기화" type="button" tabindex="-1">'
	manual = manual + '<svg class="icon" width="10" height="10" preserveAspectRatio="xMidYMid meet" style="fill: currentcolor;">'
	manual = manual + '<path fill-rule="evenodd" d="M5 4L8.5.3l1 1.1L6.2 5l3.5 3.6-1 1L5 6.1 1.4 9.6l-1-1L3.9 5 .4 1.5l1.1-1L5 3.8z">'
	manual = manual + '</path></svg></button></span>'*/

	$("#email-domain-select").change(function(){
		
		//이메일 직접입력 - 나중에 해결
		if($(this).val() == 'manual') {
			
			$(this).parent().innerHTML = manual;
			
		}
		
		emailDomain = $(this).val();
		memberId = emailId + '@' + emailDomain;
		$("#member-id").val(memberId);
	});
	

/*비밀번호 확인*/
$('.pwcheck').blur(function(){
	if($(this).val() != $('.essential-pw').val()) {
		$('.messege-pwcheck').show();
	}
});


/*닉네임*/
//중복 금지

$('.nickname').blur(function(){
	let nickname = $('.nickname').val();
	nickname = nickname.trim();
	
	$.get('./nicknameCheckAjax?nickname='+nickname,function(data){
		data = data.trim();
		if(data == 0) {
			$('.messege-nickname-check').show();
		}else {
			$('.messege-nickname-check').hide();
		}
	});
	
});




/*약관 동의*/







$("#joinBtn").click(function(){
	alert('click');
});

/*필수 입력 항목*/
//아이디
$('.essential-id').blur(function(){
	if($(this).val().trim() == '') {
		$('.messege-essential-id').show();
	}else {
		$('.messege-essential-id').hide();
	}
	
});

//비밀번호 - 비밀번호 조건
$('.essential-pw').blur(function(){
	var pw = $(this).val().trim();
	var num = pw.search(/[0-9]/g);
	var eng = pw.search(/[a-z]/ig);
	
	if($(this).val().trim() == '') {
		$('.messege-essential-pw').show();
		$('.messege-essential-pw').text('필수입력 항목입니다.');
	}else if(pw.length < 8 || (num < 0 || eng < 0)) {
	    $('.messege-essential-pw').show();
		$('.messege-essential-pw').text('비밀번호는 영문, 숫자를 포함하여 8자 이상이어야 합니다.');
	}else if(pw.search(/\s/) != -1) {
		$('.messege-essential-pw').show();
		$('.messege-essential-pw').text('비밀번호는 공백 없이 입력해주세요.');
	}else {
		$('.messege-essential-pw').hide();
	}
	
});

//닉네임
$('.essential-nm').blur(function(){
	if($(this).val().trim() == '') {
		$('.messege-essential-nm').show();
	}else {
		$('.messege-essential-nm').hide();
	}
	
});

