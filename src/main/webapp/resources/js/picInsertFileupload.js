/**
 *  파일 업로드 하기 - picture 사진
 */
 
 // 1. fileupload 버튼 클릭했을때 파일 불러오기
let addButton= '<button type="button" class="css-190fdl2-CardAddButton eg53srj0 addButton">추가하기</button>'
var idNum=0;

 
 $('.fileupload').click(function(){
	
	//$('.fileupload').parent('div').remove();
	//$('.newfile').append(file);
	$('.file').click();
	
})/*
$('.files').on('click', '.fileupload', function(){
	$('.file').click();
	
	$('.files').append(imagediv);
})*/


$("#file").change(function(){
	setThumbnail(obj, event);
});
 function setThumbnail(){
	

	let reader = new FileReader();

	$('.fileupload').attr('style', 'display:none');
	reader.onload = function(event){
		console.log("event.target", event.target);
	console.log("event.target.result", event.target.result);
		var img = document.createElement("img");
		img.setAttribute("src", event.target.result);
		img.style.maxWidth='100%';
		img.style.height='auto';
		alert(idNum==0)
		if(idNum==0){
		 const l='<div class="upload" style="width: 360px; height: 300px;" id="imageContainer0">'
		 $(".files").append(l);
		document.querySelector('div#imageContainer0').appendChild(img);
		}
		console.log('썸네일 실행')
	};
	reader.readAsDataURL(event.target.files[0]);
	console.log('이미지')
	//$('#imageContainer').append(imgControl);
	$(".files").append(addButton);

}





$('.newfile').on('click', '.addButton', function(){
	idNum++;
	alert('클릭');
	$('.newfile').children('.addButton').remove();
	let list = makeList();
	$('.list').append(list); //ol
	alert('append');
	//$('.files').append(imagediv);
	//$('.newfile').append(addfile);
	$('.file').click(); 
	//$('#addfile').attr('onchange', 'setThumbnail(event)');
	//$('.files').append(imagediv);
	
	
})



function makeList(){
	let list = '<h1>yyy</h1><li class="css-bvb3rb-CardListLi eg53srj1"><div class="css-10n24i7-CardDiv e19p9qev2 newfile"><div class="css-8e6x5e-CardItemDiv e1peeabv2 "><div class="css-4d4cqx-CardItemLeft e1peeabv1 files ">';
	/*list = list + '<input type="file" name="files" class= "file" data-num="'+idNum+'" accept="image/**" style="display:none;" onchange="setThumbnail(this, event);"><button class="css-1h7vqm-UploadButton em8wpqo4 fileupload" type="button" >';*/
	list = list +'<div class="css-k2po69-UploadButtonContent em8wpqo3"><svg width="48" height="48" viewBox="0 0 48 48" fill="currentColor" preserveAspectRatio="xMidYMid meet" class="css-utuafj-UploadCameraIcon em8wpqo2"><path d="M11.952 9.778l2.397-5.994A1.778 1.778 0 0 1 16 2.667h16c.727 0 1.38.442 1.65 1.117l2.398 5.994h10.174c.982 0 1.778.796 1.778 1.778v32c0 .981-.796 1.777-1.778 1.777H1.778A1.778 1.778 0 0 1 0 43.556v-32c0-.982.796-1.778 1.778-1.778h10.174zM24 38c6.075 0 11-4.925 11-11s-4.925-11-11-11-11 4.925-11 11 4.925 11 11 11z"></path></svg><span class="css-xvgt90-UploadTitle em8wpqo1">사진 올리기</span>';
	list = list +'<span class="css-o7lg39-UploadDescription em8wpqo0">(*최대 10장까지)</span></div></button></div>'
	list = list + '<div class="upload" style="width: 360px; height: 300px;" id="imageContainer'+idNum+'"></div>'
	list = list + '</div></li>'
	return list;
}

