function getMessage() {
	const urlParams = new URLSearchParams(window.location.search);
	alert("gg");
	
    const myParam = urlParams.get('message');
    if(myParam!=""){
    	alert(myParam);
    }
}

function checkInput() {
	
	var code = document.forms["form"]["code"].value;
	var nom = document.forms["form"]["name"].value;

	if (code == null || code =="" || nom == null || nom == ""){
		document.getElementById("label").style.display = 'block';
		return false;
	}

	return true;
}

function hidelabel(){
	document.getElementById("label").style.display = 'none';
}

function remove(){
	document.forms["form"]["code"].value = "";
	document.forms["form"]["name"].value = "";
}