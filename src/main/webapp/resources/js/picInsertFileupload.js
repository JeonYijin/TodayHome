/**
 *  파일 업로드 하기 - picture 사진
 */
 
//추가버튼 addButton
let addButton= '<button type="button" class="css-190fdl2-CardAddButton eg53srj0 addButton">추가하기</button>'
//추가 될때마다 번호로 정리
var idNum=0;
//img넣을 div 생성
let imgv= '<div class="upload"  id="imageContainer0">';
//삭제하기 인덱스
let delNum=0;


//fileupload -> 원래의 사진올리기 클릭하면 숨겨진 input file 클릭하기, img div 생성

 $('.fileupload').click(function(){

	$('.file'+idNum).click();
	$('.files').append(imgv);
	
})

//썸네일 함수

 function setThumbnail(){
	
	//fileReader 객체 생성
	let reader = new FileReader();
	//기존의 사진 올리기 숨기기
	$('.fileupload').attr('style', 'display:none');
	
	//$('.fileupload').remove();
	//onload 될때 이벤트 생성
	reader.onload = function(event){
		//console.log("event.target", event.target);
		//console.log("event.target.result", event.target.result);
		
		//img 태그 생성
		var img = document.createElement("img");
		//img에 src 속성 설정 - 값은 이벤트 결과
		img.setAttribute("src", event.target.result);
		img.style.maxWidth='100%';
		img.style.height='auto';
		//alert("1번",idNum==0)
		// img 태그를 미리 만들어 둔 img div에 추가하기
		document.querySelector('div#imageContainer'+idNum+'').appendChild(img);
		console.log('썸네일 실행')
	};
	
	// readAsDataURL을 통해 이벤트에 저장되어있는 file 불러오기 -> 최종적 썸네일 불러오기
	reader.readAsDataURL(event.target.files[0]);
	console.log('이미지')
	//추가버튼 보여주기
	$('.addButton').attr('style', 'display:block');
	//사진 삭제 버튼 delButton
	let delButton= '<div class="btnControl'+delNum+'"><button type="button" class="delete" title="'+delNum+'">x</button><div>';
	//삭제 버튼 각 사진마다 보여주기
	$('.newfile'+idNum+'').append(delButton);
	let radio = '<input type="radio" name="idx" id="radioIdx'+raNum+'"  style="display: inline;">';
	$('.btnControl'+delNum+'').append(radio);
	//console.log("radio num", idxNum);

}

//추가 버튼을 클릭했을 때 새로운 li 태그가 추가되게 하고 li 태그 내에 input file이 클릭되도록 함 => 바로 사진을 등록할 수 있게

$('.addButton').click(function(){
	idNum++;
	delNum++;
	raNum++;
	let list = makeList();
	$('.list').append(list); //ol
	$('.file'+idNum).click(); 
})

//--------------------------------------------------------------------------
//각 사진별로 인덱스 주기 - 대표 이미지 설정
let raNum = 0;
//let radio = '<input type="radio" name="idx" value=1 style="display: inline;">';
//let radio = '<input type="radio" name="idx" id="radioIdx'+raNum+'" style="display: inline;">';

$('#upload').click(function(){
	let idxNum = $('input:radio[name=idx]:checked');
	console.log(idxNum)
	$(idxNum).attr('value', 1);
	console.log($(idxNum).attr('value'));
	$(idxNum).attr('name', 'idx1');
	//idx가 하나만 넘어가는데 multipart에 추가할 수 있나
	let falseIdx= document.getElementsByName('idx');
	$(falseIdx).attr('value',2);
	console.log($(falseIdx).attr('id'));
	//$('input:radio[name=idx]:checked').attr('value',1);
	//$('#frm').submit();
	
});


//let idxNum = $('input:radio[name=idx]:checked').val();





//삭제하기 버튼 클릭시 사진 삭제
$(document).on('click', '.delete', function(){
	alert($(this).attr("title"));
	let titleNum = $(this).attr("title");
	$('#imageContainer'+titleNum+'').remove();
	$('.btnControl'+titleNum+'').remove()
	if(titleNum==0){
		$('.addButton').attr('style', 'display:none');		
		$('.fileupload').attr('style', 'display:block');
	}
	
	
	
})





// 추가버튼을 클릭하면 추가되는 li 태그
function makeList(){
	let list = '<li class="css-bvb3rb-CardListLi eg53srj1"><div class="css-10n24i7-CardDiv e19p9qev2 newfile'+idNum+'"><div class="css-8e6x5e-CardItemDiv e1peeabv2 "><div class="css-4d4cqx-CardItemLeft e1peeabv1 files">';
	list = list + '<input type="file" name="files" class= "file'+idNum+' " accept="image/**" style="display:none;" onchange="setThumbnail(this, event);">';
	list = list + '<div class="upload" id="imageContainer'+idNum+'"></div>';	
	list = list +'<button class="css-1h7vqm-UploadButton em8wpqo4 fileupload" type="button" ><div class="css-k2po69-UploadButtonContent em8wpqo3"><svg width="48" height="48" viewBox="0 0 48 48" fill="currentColor" preserveAspectRatio="xMidYMid meet" class="css-utuafj-UploadCameraIcon em8wpqo2"><path d="M11.952 9.778l2.397-5.994A1.778 1.778 0 0 1 16 2.667h16c.727 0 1.38.442 1.65 1.117l2.398 5.994h10.174c.982 0 1.778.796 1.778 1.778v32c0 .981-.796 1.777-1.778 1.777H1.778A1.778 1.778 0 0 1 0 43.556v-32c0-.982.796-1.778 1.778-1.778h10.174zM24 38c6.075 0 11-4.925 11-11s-4.925-11-11-11-11 4.925-11 11 4.925 11 11 11z"></path></svg><span class="css-xvgt90-UploadTitle em8wpqo1">사진 올리기</span>';
	list = list +'<span class="css-o7lg39-UploadDescription em8wpqo0">(*최대 10장까지)</span></div></button></div>'
	list = list + '</div></li>'
	return list;
}

//---------------------------------------------------------------------

//새로고침, 뒤로가기 버튼 누를때 alert 창
/*window.onbeforeunload = function(e){
	var text = 'dialog text here';
	e.returnValue= text;
	return text;
}*/




















































