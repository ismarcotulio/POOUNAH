/**
 * 
 */

//window.onload = loadData;

function store(){
	console.group("Store Request");
	writeData(function(){
		$.post("controllers/store.jsp",{},function(data){
			try{
				var json = JSON.parse(`${data}`.trim());
				if(json.status){
					console.log("Exito.");
				}else{
					console.error("Fracaso desde el controller.");
				}
			}catch(ex){
				console.error("Fracaso en la respuesta del servidor.");
				console.group("Exception variable");
				console.error(ex);
				console.groupEnd();
			}
			console.groupEnd();
		}).fail(function(){
			console.error("Fracaso en la peticion Ajax.");
			console.groupEnd();
		});
	});
}

function validation(){
	
	var userName = user.value;
	var userPassword = password.value;
	
	$.post("controllers/auth.jsp",{"userName":userName,"userPaswoord":userPassword},function(data){
		
		var json = JSON.parse(`${data}`.trim());
		
		if(json.status){
			location = "index.jsp";
		}else{
			
			var body = document.querySelector("body");
			var em = ErrorManager();
			var errorTag = em.insertTag(body);
			em.show(errorTag);
			
			setTimeout(function(){
				em.hide(errorTag);
				
			}, 5000);
		}
	});
}

function loadData(){
	$.post("controllers/read.jsp",{},function(data){
		
		var json = JSON.parse(`${data}`.trim());
		
		if(json.status){
			userName.value = json.name;
			userAge.value = json.age;
			userId.value = json.id;
			userDescription.value = json.description;
		}
		console.log(`Read: ${json.status}`);
	});
}
/*
function writeData2(){
	
	var userName_form = userName.value;
	var userAge_form = userAge.value;
	var userId_form = userId.value;
	var userDescription_form = userDescription.value;
	
	$.post("controllers/write.jsp",{
		"name":userName_form,
		"age":userAge_form,
		"id":userId_form,
		"description":userDescription_form
	}, function(data){
		var json = JSON.parse(`${data}`.trim());
		
		if(json.status){
			loadData();
		}
		console.log(`Write: ${json.status}`);
	});
	
	var isTyping = false;
	var time = 300;
	var timeOut;
	
	function change(obj){
		clearTimeout(timeOut);
		isTyping = true;
		
		timeOut = setTimeout(function(){
			writeData();
			isTyping = false;
		}, time);
	}
}
*/
function writeData(f){
	
	var userName_form = userName.value;
	var userAge_form = userAge.value;
	var userId_form = userId.value;
	var userDescription_form = userDescription.value;
	
	$.post("controllers/write.jsp",{
		"name":userName_form,
		"age":userAge_form,
		"id":userId_form,
		"description":userDescription_form
	}, function(data){
		try{
			var json = JSON.parse(`${data}`.trim());
			if(json.status){
				if(typeof f == "function") f();
			}else{
				console.error("Fracaso desde el Controller Write.");
			}
		}catch(ex){
			console.error("Fracaso en la respuesta del servidor desde Write.");
			console.group("Exception variable");
			console.error(ex);
			console.groupEnd();
		}
	}).fail(function(){
		console.error("Fracaso en la peticion Ajax 'Write Data'.");
	});
	
	var isTyping = false;
	var time = 300;
	var timeOut;
	
	function change(obj){
		clearTimeout(timeOut);
		isTyping = true;
		
		timeOut = setTimeout(function(){
			writeData();
			isTyping = false;
		}, time);
	}
}