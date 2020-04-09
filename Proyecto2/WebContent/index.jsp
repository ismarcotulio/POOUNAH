<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width">
	<title>Reproductor</title>
	<link rel='stylesheet' type='text/css' href='CSS/container.css'>
	<link rel='stylesheet' type='text/css' href='CSS/widget.css'>
</head>
<body>

<div class="container" id="allContainer">
	<div class="container" id="leftContainer">
		<div class="container" id="headerLContainer">
			<button class="widget leftButton" id="btnLibrary" data-status="true" onclick="control(this)">Library</button>
			<button class="widget leftButton" id="btnPlaylist" data-status="false" onclick="control(this)">Playlist</button>
			<button class="widget leftButton" id="btnInfo" data-status="false" onclick="control(this)">About</button>
		</div>
		<div class="container" id="bodyLContainer">
			<div class="container" id="libraryContainer">
				<div class="widget" id="library"></div>
			</div>
			<div class="container" id="playlistContainer">
				<div class="widget" id="playlist"></div>
			</div>
			<div class="container" id="infoContainer">
				<div class="widget" id="info"></div>
			</div>
			<div></div>
		</div>
	</div>
	<div class="container" id="centerContainer">
		<div class="container" id="headerContainer">
			<div class="container" id="artBarContainer">
				<button class="widget" id="artBar" data-status="false" onclick="control(this)">artBar</button>
			</div>
			<div class="container" id="findContainer">
				<input type="text" id="find">
			</div>
			<div class="container" id="shopBarContainer">
				<button class="widget" id="shopBar" data-status="false" onclick="control(this)">shopBar</button>
			</div>
		</div>
		<div class="container" id="bodyContainer">
			<div class="container" id="lyricContainer">
				<div class="widget" id="lyric"></div>
			</div>
			<div class="container" id="artContainer">
				<div class="widget" id="album"></div>
				<div class="widget" id="title"></div>
			</div>
			<div class="container" id="letraContainer">
				<div class="widget" id="letra"></div>
			</div>
		</div>
		<div class="container" id="footerContainer">
			<div class="container" id="buttonContainer">
				<div class="container" id="btnContainer">
					<div class="widget btn" id="reload"></div>
					<div class="widget btn" id="previous"></div>
					<div class="widget btn" id="play"></div>
					<div class="widget btn" id="next"></div>
					<div class="widget btn" id="mute"></div>
				</div>
			</div>
			<div class="container" id="barContainer">
				<div class="widget" id="bar"></div>
			</div>
		</div>
	</div>
	<div class="container" id="rightContainer">
		<div class="widget" id="shopList">
			<button class="wiidget" id="shop">shop</button>
		</div>
	</div>
</div>
<script src="JS/container.js"></script>
</body>
</html>