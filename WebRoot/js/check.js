function checkDW(){
		var temp = document.getElementsByName("dw");
		var reg = /^[0-9]*$/;
		for(var i =0;i<temp.length;i++){
			if(temp[i].value == ""){
				alert("您输入的信息不符合规定，错误在党委工作部第"+(i+1)+"列");
				return false;
			}
			if (!reg.test(temp[i].value)) {
				alert("您输入的信息不符合规定，错误在党委工作部第"+(i+1)+"列");
				return false;
			}else if(i<2){
				if(parseInt(temp[i].value) < 0 || parseInt(temp[i].value) > 20){
					alert("您输入的信息不符合规定，错误在党委工作部第"+(i+1)+"列");
					return false;
				}
			}else if(parseInt(temp[i].value) < 0 || parseInt(temp[i].value) > 15){
				alert("您输入的信息不符合规定，错误在党委工作部第"+(i+1)+"列");
				return false;
			}
		}
		return true;
		
	}
	function checkXZ(){
		var temp = document.getElementsByName("xz");
		var reg = /^[0-9]*$/;
		for(var i =0;i<temp.length;i++){
			if(temp[i].value == ""){
				alert("您输入的信息不符合规定，错误在行政办公室第"+(i+1)+"列");
				return false;
			}
			if (!reg.test(temp[i].value)) {
				alert("您输入的信息不符合规定，错误在行政办公室第"+(i+1)+"列");
				return false;
			}else if(i<2){
				if(parseInt(temp[i].value) < 0 || parseInt(temp[i].value) > 20){
					alert("您输入的信息不符合规定，错误在行政办公室第"+(i+1)+"列");
					return false;
				}
			}else if(parseInt(temp[i].value) < 0 || parseInt(temp[i].value) > 15){
				alert("您输入的信息不符合规定，错误在行政办公室第"+(i+1)+"列");
				return false;
			}
		}
		return true;
		
	}
	function checkJJ(){
		var temp = document.getElementsByName("jj");
		var reg = /^[0-9]*$/;
		for(var i =0;i<temp.length;i++){
			if(temp[i].value == ""){
				alert("您输入的信息不符合规定，错误在纪监审办公室第"+(i+1)+"列");
				return false;
			}
			if (!reg.test(temp[i].value)) {
				alert("您输入的信息不符合规定，错误在纪监审办公室第"+(i+1)+"列");
				return false;
			}else if(i<2){
				if(parseInt(temp[i].value) < 0 || parseInt(temp[i].value) > 20){
					alert("您输入的信息不符合规定，错误在纪监审办公室第"+(i+1)+"列");
					return false;
				}
			}else if(parseInt(temp[i].value) < 0 || parseInt(temp[i].value) > 15){
				alert("您输入的信息不符合规定，错误在纪监审办公室第"+(i+1)+"列");
				return false;
			}
		}
		return true;
		
	}
	function checkGH(){
		var temp = document.getElementsByName("gh");
		var reg = /^[0-9]*$/;
		for(var i =0;i<temp.length;i++){
			if(temp[i].value == ""){
				alert("您输入的信息不符合规定，错误在工会第"+(i+1)+"列");
				return false;
			}
			if (!reg.test(temp[i].value)) {
				alert("您输入的信息不符合规定，错误在工会第"+(i+1)+"列");
				return false;
			}else if(i<2){
				if(parseInt(temp[i].value) < 0 || parseInt(temp[i].value) > 20){
					alert("您输入的信息不符合规定，错误在工会第"+(i+1)+"列");
					return false;
				}
			}else if(parseInt(temp[i].value) < 0 || parseInt(temp[i].value) > 15){
				alert("您输入的信息不符合规定，错误在工会第"+(i+1)+"列");
				return false;
			}
		}
		return true;
		
	}
	function checkTW(){
		var temp = document.getElementsByName("tw");
		var reg = /^[0-9]*$/;
		for(var i =0;i<temp.length;i++){
			if(temp[i].value == ""){
				alert("您输入的信息不符合规定，错误在团委第"+(i+1)+"列");
				return false;
			}
			if (!reg.test(temp[i].value)) {
				alert("您输入的信息不符合规定，错误在团委第"+(i+1)+"列");
				return false;
			}else if(i<2){
				if(parseInt(temp[i].value) < 0 || parseInt(temp[i].value) > 20){
					alert("您输入的信息不符合规定，错误在团委第"+(i+1)+"列");
					return false;
				}
			}else if(parseInt(temp[i].value) < 0 || parseInt(temp[i].value) > 15){
				alert("您输入的信息不符合规定，错误在团委第"+(i+1)+"列");
				return false;
			}
		}
		return true;
		
	}
	function checkJK(){
		var temp = document.getElementsByName("jk");
		var reg = /^[0-9]*$/;
		for(var i =0;i<temp.length;i++){
			if(temp[i].value == ""){
				alert("您输入的信息不符合规定，错误在教科部第"+(i+1)+"列");
				return false;
			}
			if (!reg.test(temp[i].value)) {
				alert("您输入的信息不符合规定，错误在教科部第"+(i+1)+"列");
				return false;
			}else if(i<2){
				if(parseInt(temp[i].value) < 0 || parseInt(temp[i].value) > 20){
					alert("您输入的信息不符合规定，错误在教科部第"+(i+1)+"列");
					return false;
				}
			}else if(parseInt(temp[i].value) < 0 || parseInt(temp[i].value) > 15){
				alert("您输入的信息不符合规定，错误在教科部第"+(i+1)+"列");
				return false;
			}
		}
		return true;
		
	}
	function checkXS(){
		var temp = document.getElementsByName("xs");
		var reg = /^[0-9]*$/;
		for(var i =0;i<temp.length;i++){
			if(temp[i].value == ""){
				alert("您输入的信息不符合规定，错误在学生工作处第"+(i+1)+"列");
				return false;
			}
			if (!reg.test(temp[i].value)) {
				alert("您输入的信息不符合规定，错误在学生工作处第"+(i+1)+"列");
				return false;
			}else if(i<2){
				if(parseInt(temp[i].value) < 0 || parseInt(temp[i].value) > 20){
					alert("您输入的信息不符合规定，错误在学生工作处第"+(i+1)+"列");
					return false;
				}
			}else if(parseInt(temp[i].value) < 0 || parseInt(temp[i].value) > 15){
				alert("您输入的信息不符合规定，错误在学生工作处第"+(i+1)+"列");
				return false;
			}
		}
		return true;
		
	}
	function checkCW(){
		var temp = document.getElementsByName("cw");
		var reg = /^[0-9]*$/;
		for(var i =0;i<temp.length;i++){
			if(temp[i].value == ""){
				alert("您输入的信息不符合规定，错误在财务部第"+(i+1)+"列");
				return false;
			}
			if (!reg.test(temp[i].value)) {
				alert("您输入的信息不符合规定，错误在财务部第"+(i+1)+"列");
				return false;
			}else if(i<2){
				if(parseInt(temp[i].value) < 0 || parseInt(temp[i].value) > 20){
					alert("您输入的信息不符合规定，错误在财务部第"+(i+1)+"列");
					return false;
				}
			}else if(parseInt(temp[i].value) < 0 || parseInt(temp[i].value) > 15){
				alert("您输入的信息不符合规定，错误在财务部第"+(i+1)+"列");
				return false;
			}
		}
		return true;
		
	}
	function checkZC(){
		var temp = document.getElementsByName("zc");
		var reg = /^[0-9]*$/;
		for(var i =0;i<temp.length;i++){
			if(temp[i].value == ""){
				alert("您输入的信息不符合规定，错误在资产部第"+(i+1)+"列");
				return false;
			}
			if (!reg.test(temp[i].value)) {
				alert("您输入的信息不符合规定，错误在资产部第"+(i+1)+"列");
				return false;
			}else if(i<2){
				if(parseInt(temp[i].value) < 0 || parseInt(temp[i].value) > 20){
					alert("您输入的信息不符合规定，错误在资产部第"+(i+1)+"列");
					return false;
				}
			}else if(parseInt(temp[i].value) < 0 || parseInt(temp[i].value) > 15){
				alert("您输入的信息不符合规定，错误在资产部第"+(i+1)+"列");
				return false;
			}
		}
		return true;
		
	}
	function checkHZ(){
		var temp = document.getElementsByName("hz");
		var reg = /^[0-9]*$/;
		for(var i =0;i<temp.length;i++){
			if(temp[i].value == ""){
				alert("您输入的信息不符合规定，错误在合作办学办公室第"+(i+1)+"列");
				return false;
			}
			if (!reg.test(temp[i].value)) {
				alert("您输入的信息不符合规定，错误在合作办学办公室第"+(i+1)+"列");
				return false;
			}else if(i<2){
				if(parseInt(temp[i].value) < 0 || parseInt(temp[i].value) > 20){
					alert("您输入的信息不符合规定，错误在合作办学办公室第"+(i+1)+"列");
					return false;
				}
			}else if(parseInt(temp[i].value) < 0 || parseInt(temp[i].value) > 15){
				alert("您输入的信息不符合规定，错误在合作办学办公室第"+(i+1)+"列");
				return false;
			}
		}
		return true;
		
	}
	function checkAQ(){
		var temp = document.getElementsByName("aq");
		var reg = /^[0-9]*$/;
		for(var i =0;i<temp.length;i++){
			if(temp[i].value == ""){
				alert("您输入的信息不符合规定，错误在安全保卫部第"+(i+1)+"列");
				return false;
			}
			if (!reg.test(temp[i].value)) {
				alert("您输入的信息不符合规定，错误在安全保卫部第"+(i+1)+"列");
				return false;
			}else if(i<2){
				if(parseInt(temp[i].value) < 0 || parseInt(temp[i].value) > 20){
					alert("您输入的信息不符合规定，错误在安全保卫部第"+(i+1)+"列");
					return false;
				}
			}else if(parseInt(temp[i].value) < 0 || parseInt(temp[i].value) > 15){
				alert("您输入的信息不符合规定，错误在安全保卫部第"+(i+1)+"列");
				return false;
			}
		}
		return true;
		
	}
	function checkLT(){
		var temp = document.getElementsByName("lt");
		var reg = /^[0-9]*$/;
		for(var i =0;i<temp.length;i++){
			if(temp[i].value == ""){
				alert("您输入的信息不符合规定，错误在离退休工作办公室第"+(i+1)+"列");
				return false;
			}
			if (!reg.test(temp[i].value)) {
				alert("您输入的信息不符合规定，错误在离退休工作办公室第"+(i+1)+"列");
				return false;
			}else if(i<2){
				if(parseInt(temp[i].value) < 0 || parseInt(temp[i].value) > 20){
					alert("您输入的信息不符合规定，错误在离退休工作办公室第"+(i+1)+"列");
					return false;
				}
			}else if(parseInt(temp[i].value) < 0 || parseInt(temp[i].value) > 15){
				alert("您输入的信息不符合规定，错误在离退休工作办公室第"+(i+1)+"列");
				return false;
			}
		}
		return true;
		
	}
	function checkHQ(){
		var temp = document.getElementsByName("hq");
		var reg = /^[0-9]*$/;
		for(var i =0;i<temp.length;i++){
			if(temp[i].value == ""){
				alert("您输入的信息不符合规定，错误在后勤管理处第"+(i+1)+"列");
				return false;
			}
			if (!reg.test(temp[i].value)) {
				alert("您输入的信息不符合规定，错误在后勤管理处第"+(i+1)+"列");
				return false;
			}else if(i<2){
				if(parseInt(temp[i].value) < 0 || parseInt(temp[i].value) > 20){
					alert("您输入的信息不符合规定，错误在后勤管理处第"+(i+1)+"列");
					return false;
				}
			}else if(parseInt(temp[i].value) < 0 || parseInt(temp[i].value) > 15){
				alert("您输入的信息不符合规定，错误在后勤管理处第"+(i+1)+"列");
				return false;
			}
		}
		return true;
		
	}
	function checkTS(){
		var temp = document.getElementsByName("ts");
		var reg = /^[0-9]*$/;
		for(var i =0;i<temp.length;i++){
			if(temp[i].value == ""){
				alert("您输入的信息不符合规定，错误在图书馆第"+(i+1)+"列");
				return false;
			}
			if (!reg.test(temp[i].value)) {
				alert("您输入的信息不符合规定，错误在图书馆第"+(i+1)+"列");
				return false;
			}else if(i<2){
				if(parseInt(temp[i].value) < 0 || parseInt(temp[i].value) > 20){
					alert("您输入的信息不符合规定，错误在图书馆第"+(i+1)+"列");
					return false;
				}
			}else if(parseInt(temp[i].value) < 0 || parseInt(temp[i].value) > 15){
				alert("您输入的信息不符合规定，错误在图书馆第"+(i+1)+"列");
				return false;
			}
		}
		return true;
		
	}
	function checkRL(){
		var temp = document.getElementsByName("rl");
		var reg = /^[0-9]*$/;
		for(var i =0;i<temp.length;i++){
			if(temp[i].value == ""){
				alert("您输入的信息不符合规定，错误在人力资源部第"+(i+1)+"列");
				return false;
			}
			if (!reg.test(temp[i].value)) {
				alert("您输入的信息不符合规定，错误在人力资源部第"+(i+1)+"列");
				return false;
			}else if(i<2){
				if(parseInt(temp[i].value) < 0 || parseInt(temp[i].value) > 20){
					alert("您输入的信息不符合规定，错误在人力资源部第"+(i+1)+"列");
					return false;
				}
			}else if(parseInt(temp[i].value) < 0 || parseInt(temp[i].value) > 15){
				alert("您输入的信息不符合规定，错误在人力资源部第"+(i+1)+"列");
				return false;
			}
		}
		return true;
		
	}