/**
 *  파일 업로드 하기 - picture 사진
 */
 
 // 1. fileupload 버튼 클릭했을때 파일 불러오기
let addButton= '<button type="button" class="css-190fdl2-CardAddButton eg53srj0 addButton">추가하기</button>'
 let num=0;
 let imagediv = '<div class="upload" style="width: 360px; height: 300px;" id="imageContainer'+num+'"></div>'
 
 $('.fileupload').click(function(){
	
	//$('.fileupload').parent('div').remove();
	//$('.newfile').append(file);
	$('.file').click();
	$('.files').append(imagediv);
})/*
$('.files').on('click', '.fileupload', function(){
	$('.file').click();
	
	$('.files').append(imagediv);
})*/

 function setThumbnail(obj, event){
	let reader = new FileReader();
	let num= $(obj).attr("data-num");
	console.log("num :", num);
	$('.fileupload').attr('style', 'display:none');
	reader.onload = function(event){
		var img = document.createElement("img");
		img.setAttribute("src", event.target.result);
		img.style.maxWidth='100%';
		img.style.height='auto';
		
		document.querySelector('div#imageContainer'+num).appendChild(img);
		
		console.log('썸네일 실행')
	};
	reader.readAsDataURL(event.target.files[0]);
	console.log('이미지')
	//$('#imageContainer').append(imgControl);
	$('.newfile').append(addButton);

}


let addfile ='<div class="css-k2po69-UploadButtonContent em8wpqo3">';
addfile = addfile+ '<svg width="48" height="48" viewBox="0 0 48 48" fill="currentColor" preserveAspectRatio="xMidYMid meet" class="css-utuafj-UploadCameraIcon em8wpqo2"><path d="M11.952 9.778l2.397-5.994A1.778 1.778 0 0 1 16 2.667h16c.727 0 1.38.442 1.65 1.117l2.398 5.994h10.174c.982 0 1.778.796 1.778 1.778v32c0 .981-.796 1.777-1.778 1.777H1.778A1.778 1.778 0 0 1 0 43.556v-32c0-.982.796-1.778 1.778-1.778h10.174zM24 38c6.075 0 11-4.925 11-11s-4.925-11-11-11-11 4.925-11 11 4.925 11 11 11z"></path></svg>';
addfile = addfile+'<span class="css-xvgt90-UploadTitle em8wpqo1">사진 올리기</span><span class="css-o7lg39-UploadDescription em8wpqo0">(*최대 10장까지)</span></div>'; 
/*<div class="css-k2po69-UploadButtonContent em8wpqo3">
<svg width="48" height="48" viewBox="0 0 48 48" fill="currentColor" preserveAspectRatio="xMidYMid meet" class="css-utuafj-UploadCameraIcon em8wpqo2"><path d="M11.952 9.778l2.397-5.994A1.778 1.778 0 0 1 16 2.667h16c.727 0 1.38.442 1.65 1.117l2.398 5.994h10.174c.982 0 1.778.796 1.778 1.778v32c0 .981-.796 1.777-1.778 1.777H1.778A1.778 1.778 0 0 1 0 43.556v-32c0-.982.796-1.778 1.778-1.778h10.174zM24 38c6.075 0 11-4.925 11-11s-4.925-11-11-11-11 4.925-11 11 4.925 11 11 11z"></path></svg>
<span class="css-xvgt90-UploadTitle em8wpqo1">사진 올리기</span>
<span class="css-o7lg39-UploadDescription em8wpqo0">(*최대 10장까지)</span>
</div>*/

addfile= '<input type="file" name="files" id= "addfile" accept="image/**" style="display:none;" >'

$('.newfile').on('click', '.addButton', function(){
	num++;
	alert('클릭');
	let list = makeList();
	$('.list').append(list); //ol
	alert('append');
	//$('.files').append(imagediv);
	$('.newfile').children('.addButton').remove();
	//$('.newfile').append(addfile);
	$('.file').click();
	//$('#addfile').attr('onchange', 'setThumbnail(event)');
	//$('.files').append(imagediv);
	
	
})

//이미지 담는 div 안에 넣을 div
let imgControl = '<div class="css-1ejfrh0-ActionsDiv e1vm9wpy0"><button class="css-3m8peh-ActionButton e1vm9wpy1" type="button" aria-label="사진 다시 올리기" title="사진 다시 올리기">';
imgControl = imgControl+'<svg class="icon" width="24" height="24" fill="currentColor" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet"><path d="M17.9 10a6.4 6.4 0 0 0-6-4.5c-3.6 0-6.4 2.9-6.4 6.5s2.8 6.5 6.3 6.5c2.2 0 4.1-1 5.3-2.9a.7.7 0 1 1 1.2.8 7.8 7.8 0 0 1-6.5 3.6C7.5 20 4 16.4 4 12s3.5-8 7.8-8c3.4 0 6.3 2.2 7.4 5.3l.7-1.4a.7.7 0 1 1 1.3.7l-1.8 3.1a.7.7 0 0 1-1 .3l-3-1.8a.7.7 0 1 1 .7-1.3l1.8 1z"></path></svg>';
imgControl = imgControl+'</button><button class="css-3m8peh-ActionButton e1vm9wpy1" type="button" aria-label="삭제" title="삭제"><svg class="icon" width="24" height="24" fill="currentColor" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet"><path d="M6 19V7h12v12a2 2 0 0 1-2 2H8a2 2 0 0 1-2-2zM19 4v2H5V4h3.5l1-1h5l1 1H19z"></path></svg></button>';
imgControl = imgControl+'<button class="e1w4vsrt1 css-hdcpxp-ActionButton-ImageActionPc e1vm9wpy1" type="button" aria-label="위로 올리기" title="위로 올리기"><svg class="icon" width="24" height="24" fill="currentColor" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet"><path d="M19.5 17L12 9.75 4.5 17 3 15.62 12 7l9 8.62z"></path></svg></button><button class="e1w4vsrt1 css-hdcpxp-ActionButton-ImageActionPc e1vm9wpy1" type="button" aria-label="아래로 내리기" title="아래로 내리기"><svg class="icon" width="24" height="24" fill="currentColor" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet"><path d="M4.5 7l7.5 7.25L19.5 7 21 8.38 12 17 3 8.38z"></path></svg></button><button class="e1w4vsrt2 css-1v2l8zz-ActionButton-ImageActionMobile e1vm9wpy1" type="button" aria-label="순서 바꾸기" title="순서 바꾸기"><svg class="icon" width="24" height="24" fill="currentColor" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet"><path d="M18 10H6l6-6 6 6zM6 14h12l-6 6-6-6z"></path></svg></button></div>';


function makeList(){
	let list = '<li class="css-bvb3rb-CardListLi eg53srj1"><div class="css-10n24i7-CardDiv e19p9qev2 newfile"><div class="css-8e6x5e-CardItemDiv e1peeabv2 "><div class="css-4d4cqx-CardItemLeft e1peeabv1 files ">';
	list = list + '<input type="file" name="files" class= "file" data-num="'+num+'" accept="image/**" style="display:none;" onchange="setThumbnail(this, event);"><button class="css-1h7vqm-UploadButton em8wpqo4 fileupload" type="button" >';
	list = list +'<div class="css-k2po69-UploadButtonContent em8wpqo3"><svg width="48" height="48" viewBox="0 0 48 48" fill="currentColor" preserveAspectRatio="xMidYMid meet" class="css-utuafj-UploadCameraIcon em8wpqo2"><path d="M11.952 9.778l2.397-5.994A1.778 1.778 0 0 1 16 2.667h16c.727 0 1.38.442 1.65 1.117l2.398 5.994h10.174c.982 0 1.778.796 1.778 1.778v32c0 .981-.796 1.777-1.778 1.777H1.778A1.778 1.778 0 0 1 0 43.556v-32c0-.982.796-1.778 1.778-1.778h10.174zM24 38c6.075 0 11-4.925 11-11s-4.925-11-11-11-11 4.925-11 11 4.925 11 11 11z"></path></svg><span class="css-xvgt90-UploadTitle em8wpqo1">사진 올리기</span>';
	list = list +'<span class="css-o7lg39-UploadDescription em8wpqo0">(*최대 10장까지)</span></div></button></div></div></li>'
	return list;
}

