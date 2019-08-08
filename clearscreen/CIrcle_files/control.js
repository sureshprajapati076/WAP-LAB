$(function(){

	"use strict";
	let timerId=null;
	let timerForOpacity=null;
	
	
	$('#start').click(showCircle);
	$('#stop').click(reset);

	function reset() {
		$('#width').removeAttr("disabled");
		$('#number').removeAttr("disabled");

		$('#rate').removeAttr("disabled");
		$('.circle').remove();
		$('#start').removeAttr("disabled");
		$('#stop').attr("disabled","disabled");
		$('#width').val(50);
		$('#growAmt').val(1);
		$('#rate').val(350);
		$('#number').val(10);
	}
	
	function showCircle(){
		$('#width').attr("disabled","disabled");
		$('#number').attr("disabled","disabled");

		$('#rate').attr("disabled","disabled");
		$('#stop').removeAttr("disabled");
		$('#start').attr("disabled","disabled");


		$('#result').text('Pop Out All Circles').css("background-color","#008CBA");
		let width=$('#width').val();


		$('.circle').remove();
		$('.circle').show();

		let count=parseInt($('#number').val());

		for(let i=0;i<count;i++){
		var $newCircle = $('<div />').appendTo('body');
		$newCircle.addClass("circle");
		let col="rgb("+Math.floor(Math.random() * 255)+","+Math.floor(Math.random() * 255)+","+Math.floor(Math.random() * 255) +")";
		$newCircle.css({"background-color":col,
						"top":Math.random()*200,
						"left":Math.random()*200,
						"height":width,
						"width":width


		});

		$newCircle.click(hide).mouseenter(changeOpacity).mouseleave(resetOpacity);
		}

		//$(body).append($('<div class="circle"></div>'));



		timerId=setInterval(grow,parseInt($('#rate').val()));



		
		
	}
	
	
	
	
	
	
	
	function grow(evt){
			let growAmt=parseInt($('#growAmt').val());
			
		let circles=$('.circle');

if(countCirclePops===parseInt($('#number').val())){
	$('#result').text('All Circles Poped in Time You win!!! Start Again to play again!!!').css("background-color","green");
	countCirclePops=0;

	clearInterval(timerId);
}
		for(let circle of circles) {

			let newDiameter = parseInt($(circle).height()) + growAmt + "px";
			let newLeft = parseInt($(circle).css("left")) - growAmt /2 + "px";
			let newTop = parseInt($(circle).css("top")) - growAmt /2 + "px";


			$(circle).css("width", newDiameter);
			$(circle).css("height", newDiameter);
			//$(circle).css("top",newTop);
			//$(circle).css("left",newLeft);

		}
		
	}
	
	// $('.circle').click(function(evt){$(this).hide();});
	$('.circle').click(hide);
	
	let countCirclePops=0;
function hide(evt){
	//alert('hiding');
	countCirclePops++;
	$(this).css("visibility","hidden");
//	$(this).hide();

	
	
}

function changeOpacity(evt) {

	 timerForOpacity=setInterval((evt) => {
		 let currentOpacity = parseFloat($(this).css("opacity"));

	//alert(currentOpacity);

	let next = currentOpacity - 0.1;
	//let next=Number(currentOpacity).toFixed(2) - Number(0.01).toFixed(2);
	//alert(Number(currentOpacity).toFixed(2));

	$(this).css("opacity", next);


},200);



}

function resetOpacity(evt){

	clearInterval(timerForOpacity);
	$(this).css("opacity","1");

}

	
	
	
	
	
});