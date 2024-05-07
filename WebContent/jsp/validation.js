/**
 * 
 */
const form = document.querySelector("form");
const submitbtn = document.querySelector(".submit");
const  id = document.querySelector(".id");

form.addEventListener("submit",(e)=>{
	e.preventDefault();
	if(id.value == "" ){
		alert("학번을 입력하지 않았습니다.")
	}else{
		form.submit();
	}
	
})