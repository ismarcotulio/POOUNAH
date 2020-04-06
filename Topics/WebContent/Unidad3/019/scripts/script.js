/**
 * 
 */

//window.onload = loadData;

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

function writeData(){
	
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