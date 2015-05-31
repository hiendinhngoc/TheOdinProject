//handling action
$(document).ready(function(){
	//run random
	drawingGrid(60, 16, 16);
	changeColor();

	$("#new").click(function(){
		$(".drawing").hide();
		var widthGrid = prompt("Please enter you width:(1..128)",16);
		var heightGrid = prompt("Please enter you height:(1..128)",16);
		var unitSize = 960 / widthGrid;// width (and height) of one square
		var unitsWide = widthGrid;// number of squares along x-axis
		var unitsTall = heightGrid;// number of squares along y-axis
		drawingGrid(unitSize, unitsWide, unitsTall);
		changeColor();
	});
});

function drawingGrid(unitSize, unitsWide, unitsTall){
	var drawing = $('<div class="drawing"></div>').css({
		overflow: 'hidden',
		border: '1px solid #000000',
		width: unitSize * unitsWide
	});
	for(var i = 0; i < unitsWide * unitsTall; i++){
		var randomColor;
		randomColor =  Math.random() * 0x1000000;// 0 < randomColor < 0x1000000
		randomColor = Math.floor(randomColor);// 0 < randomColor <= 0xFFFFFF
		randomColor = randomColor.toString(16);//hex representation randomColor
		randomColor = ("000000" + randomColor).slice(-6);//leading zeros added
		randomColor = "#" + randomColor;// # added
		$('<span class="square"></span>').css({
			display: 'block',
			float: 'left',
			width: unitSize,
			height: unitSize,
			'background-color': randomColor
		}).appendTo(drawing);
	}
	drawing.appendTo($(".random"));
}

//change background-color
function changeColor(){
	$(".square").hover(function(){
		$(this).css("background-color", "white");
	}, function(){
		$(this).css("background-color", "black");
	});
}

//reload my page after press Refresh button
function reloadPage(){
	location.reload();
}
