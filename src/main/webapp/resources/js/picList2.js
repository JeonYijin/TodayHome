/**
 * 
 */

 function onClickSelect(e){
	const isActive = e.currentTarget.className.indexOf("active") !== -1;
	if(isActive){
		e.currentTarget.className = "select";
	}else{
	alert('onc')
		e.currentTarget.className = "select active";
	}
}

document.querySelector(".select").addEventListener('click', onClickSelect);

//옵션 클릭하기
function onClickOption(e){
	const selectedValue = e.currentTarget.innerHTML;
	document.querySelector('.text').innerHTML = selectedValue;
}

var optionList = document.querySelectorAll(".option");
for(var i =0; i< optionList.length; i++){
	var option = optionList[i];
	option.addEventListener('click', onClickOption);
}