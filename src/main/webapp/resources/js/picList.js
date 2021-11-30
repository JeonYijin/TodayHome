/**
 * 
 */



//정렬 
function dropAll() {
    document.getElementById("all").classList.toggle("show");
}

//주거형태
function dropHouse() {
    document.getElementById("house").classList.toggle("show");
}

//공간
function dropArea() {
    document.getElementById("area").classList.toggle("show");
}


//평수
function dropPyeong() {
    document.getElementById("pyeong").classList.toggle("show");
}


//스타일
function dropStyle() {
    document.getElementById("style").classList.toggle("show");
}




window.onclick = function(event) {
  if (!event.target.matches('.dropbtn')) {

    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
}