const datebtn = document.querySelectorAll(".btn");
const dateInfo = document.querySelectorAll(".dateinfo");
datebtn.forEach(onBtnClick);
function onBtnClick(item){
    item.addEventListener("click",function(){
        let curId=item.getAttribute("data-btn");
        let elem=document.getElementById(curId);
        //console.log(elem);
        elem.classList.remove("disabled");
        
        
       
        
        
    });
}
