$(function(){

	"use strict";
	let timerId=null;
	let timerForOpacity=null;
	
	
	$('#start').click(showCircle);
	
	
	function showCircle(){


		$('#result').text('Pop Out All Circles');
		let width=$('#width').val();
	
		let num=$('#number').val();

		$('.circle').remove();
		$('.circle').show().css({"height":width,"width":width,"top":"200px","left":"50%"});

		let count=parseInt($('#number').val());

		for(let i=0;i<count;i++){
		var $newCircle = $('<div />').appendTo('body');
		$newCircle.addClass("circle");
		let col="rgb("+Math.floor(Math.random() * 255)+","+Math.floor(Math.random() * 255)+","+Math.floor(Math.random() * 255) +")";
		$newCircle.css("background-color",col);
		$newCircle.css("top",Math.random()*200);
			$newCircle.css("left",Math.random()*200);
		$newCircle.click(hide);
		$newCircle.mouseenter(changeOpacity);
		$newCircle.mouseleave(resetOpacity);
		}

		//$(body).append($('<div class="circle"></div>'));



		timerId=setInterval(grow,$('#rate').val());



		
		
	}
	
	
	
	
	
	
	
	function grow(evt){
			let growAmt=parseInt($('#growAmt').val());
			
		let circles=$('.circle');

if(countCirclePops===parseInt($('#number').val())){
	$('#result').text('All Circles Poped in Time You win!!! Refresh page to load again!!!');
	countCirclePops=-1;

	clearInterval(timerId);
}
		for(let circle of circles) {

			let newDiameter = parseInt($(circle).height()) + growAmt + "px";
			let newLeft = parseInt($(circle).css("left")) - growAmt / 2 + "px";
			let newTop = parseInt($(circle).css("top")) - growAmt / 2 + "px";


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

	 timerForOpacity=setInterval((evt)=>{
										let currentOpacity=parseFloat($(this).css("opacity"));

										//alert(currentOpacity);

										let next=currentOpacity-0.1;
										//let next=Number(currentOpacity).toFixed(2) - Number(0.01).toFixed(2);
										//alert(Number(currentOpacity).toFixed(2));

										$(this).css("opacity",next);


										}









		,200);



}

function resetOpacity(evt){

	clearInterval(timerForOpacity);
	$(this).css("opacity","1");

}

	
	
	
	
	
});