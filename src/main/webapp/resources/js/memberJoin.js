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
	
	
	
	
	/*let manual = '<input class="form-control" placeholder="입력해주세요" size="1" value="">'
	manual = manual + ' <button class="email-input__domain__expand active" aria-label="초기화" type="button" tabindex="-1">'
	manual = manual + '<svg class="icon" width="10" height="10" preserveAspectRatio="xMidYMid meet" style="fill: currentcolor;">'
	manual = manual + '<path fill-rule="evenodd" d="M5 4L8.5.3l1 1.1L6.2 5l3.5 3.6-1 1L5 6.1 1.4 9.6l-1-1L3.9 5 .4 1.5l1.1-1L5 3.8z">'
	manual = manual + '</path></svg></button></span>'*/



	$("#email-domain-select").change(function(){
		
		//이메일 직접입력
		if($(this).val() == 'manual') {
			
			$('#email-domain-select').hide();
			$('#email-domain-manual').attr("type", "text");
			
			$("#email-domain-manual").change(function(){
				emailDomain = $('#email-domain-manual').val();
				memberId = emailId + '@' + emailDomain;
				$("#member-id").val(memberId);
		});
			
		} else {
			$('#email-domain-manual').hide();
			emailDomain = $(this).val();
			memberId = emailId + '@' + emailDomain;
			$("#member-id").val(memberId);
		}
		
	});
	
		
	

/*이메일 인증*/
$(".emailAuthBtn").click(function() {// 메일 입력 유효성 검사
		var mail = $("#member-id").val(); //사용자의 이메일 입력값. 
		
		if (mail == "") {
			alert("메일 주소가 입력되지 않았습니다.");
		} else {
			//mail = mail+"@"+$(".domain").val(); //셀렉트 박스에 @뒤 값들을 더함.
			$.ajax({
				type : 'post',
				url : '/CheckMail',
				data : {
					mail:mail
					},
				dataType :'json',

			});
			alert("인증번호가 전송되었습니다.") 
			isCertification=true; //추후 인증 여부를 알기위한 값
		}
	});




/*비밀번호 확인*/
$('.pwcheck').blur(function(){
	if($(this).val() != $('.essential-pw').val()) {
		$('.messege-pwcheck').show();
	}else if($(this).val() == $('.essential-pw').val()) {
		$('.messege-pwcheck').hide();
	}
});




/*약관 동의*/

//전체 동의 클릭 시 체크, 해제
$('.checkbox-agreeAll').click(function(){
	 var checked = $(this).is(":checked");
	 if(checked) {
		$('.checks').prop("checked", true);
	}else {
		$('.checks').prop("checked", false);
	}
});

//약관 모두 클릭 시 전체 동의 
$('.checks').click(function(){
	let result = true;
	
	$('.checks').each(function(index, item){
		if(!$(this).prop("checked")) {
			result = false;
		}
	});
	
	$('.checkbox-agreeAll').prop("checked", result);
})



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
$('.essential-nm').on({
	//중복금지
	keyup: function() {
			let nickname = $('.nickname').val();
			
			$.get('./nicknameCheckAjax?nickname='+nickname,function(data){
			data = data.trim();
			if(data == 0) {
				$('.messege-nickname-check').show();
			}else {
				$('.messege-nickname-check').hide();
			}
		});
	},
	
	//필수입력 
	blur: function() {
		if($(this).val().trim() == '') {
			$('.messege-essential-nm').show();
		}else {
			$('.messege-essential-nm').hide();
		}
	}
});


//회원가입 버튼
$('#joinBtn').on('click', function(){
	
	
	if($("#member-id").val() == null) {
		alert('필수항목을 입력해주세요');
		var location = document.querySelector("#email-id").offsetTop;
		window.scrollTo({top:location, behavior:'auto'});
		
	}else if($('#password').val() == null) {
		var location = document.querySelector("#password").offsetTop;
		window.scrollTo({top:location, behavior:'auto'});
	}
	
})




