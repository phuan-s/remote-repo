var flag = 1; // 1表示明文显示， 0表示密文显示

function login(){
	var acc1 = document.getElementById("account1").value;
	var pw1 = document.getElementById("pw1").value;
	
	if(acc1 == "admin" && pw1 == "111"){
		alert("登录成功");
	}else{
		alert("shibai");
	}
}

// 图片点击+密码框修改
function change(){
	var pw1 = document.getElementById("pw1");
	var eye = document.getElementById("eye");
	
	if(flag == 1){
		pw1.type = "password";
		eye.src = "img/eye_open.png";
		flag = 0;
	}else{
		pw1.type = "text";
		eye.src = "img/eye_close.png";
		flag = 1;
	}
	
	// BOM
$("button").click(function(){
	$(this).css("background", "pink")
	$(this).siblings("button").css("background","")
}
)