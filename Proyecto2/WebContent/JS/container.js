/**
 * 
 */

function control( element){
	if(element.id == "artBar"){
		if(element.dataset.status == "false"){
			showLeft();
			element.dataset.status = "true";
		}else{
			if(element.dataset.status == "true"){
				hideLeft();
				element.dataset.status = "false";
			}
		}
	}
	if(element.id == "shopBar"){
		if(element.dataset.status == "false"){
			showRight();
			element.dataset.status = "true";
		}else{
			if(element.dataset.status == "true"){
				hideRight();
				element.dataset.status = "false";
			}
		}
	}
	if(element.id == "btnLibrary"){
		if(element.dataset.status == "false"){
			showViewLibrary();
			element.dataset.status = "true";
		}
	}
	if(element.id == "btnPlaylist"){
		if(element.dataset.status == "false"){
			showViewPlaylist();
			element.dataset.status = "true";
		}
	}
	if(element.id == "btnInfo"){
		if(element.dataset.status == "false"){
			showViewInfo();
			element.dataset.status = "true";
		}
	}
}

function showLeft(){
	centerContainer.style.width = "50%";
	centerContainer.style.float = "right";
	leftContainer.style.display = "block";
	shopBar.style.display = "none";
}

function hideLeft(){
	centerContainer.style.width = "100%";
	centerContainer.style.float = "left";
	leftContainer.style.display = "none";
	shopBar.style.display = "block";
}

function showRight(){
	centerContainer.style.width = "50%";
	rightContainer.style.display = "block";
	artBar.style.display = "none";
}

function hideRight(){
	centerContainer.style.width = "100%";
	rightContainer.style.display = "none";
	artBar.style.display = "block";
}

function showViewLibrary(){
	btnPlaylist.dataset.status = "false";
	btnInfo.dataset.status = "false";
	playlistContainer.style.display = "none";
	infoContainer.style.display = "none";
	libraryContainer.style.display = "block";
}

function showViewPlaylist(){
	btnLibrary.dataset.status = "false";
	btnInfo.dataset.status = "false";
	playlistContainer.style.display = "block";
	infoContainer.style.display = "none";
	libraryContainer.style.display = "none";
}
function showViewInfo(){
	btnPlaylist.dataset.status = "false";
	btnLibrary.dataset.status = "false";
	playlistContainer.style.display = "none";
	infoContainer.style.display = "block";
	libraryContainer.style.display = "none";
}

