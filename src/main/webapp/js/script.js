
var timer = null,
    index = 0,
    pics = document.getElementsByClassName("banner-slide"),
    lis = document.getElementsByTagName("li");



function byId(id){
    return typeof(id) === "string"?document.getElementById(id):id;
}
 
function slideImg() {
    var main = byId("main");
    var banner = byId("banner");
    main.onmouseover = function(){
        stopAutoPlay();
    }
    main.onmouseout = function(){
        startAutoPlay();
    }
    main.onmouseout();
 

    for(var i=0;i<pics.length;i++){
        lis[i].id = i;
          
        lis[i].onclick = function(){
          
            index = this.id;
            changeImg();
        }
    }
}

function startAutoPlay(){
    timer = setInterval(function(){
        index++;
        if(index>3){
            index = 0;
        }
        changeImg();
    },2000);
}

function stopAutoPlay(){
    if (timer) {
        clearInterval(timer);
    }
}

function changeImg(){
    for(var i=0;i<pics.length;i++){
        pics[i].style.display = "none";
        lis[i].className = "";
    }
    pics[index].style.display = "block";
    lis[index].className = "changeColor";
}
 
slideImg();
