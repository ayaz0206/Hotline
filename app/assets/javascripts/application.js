// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery.ui.all
//= require foundation
//= require inputosaurus
//= require rails-timeago
// require turbolinks
//= require_tree .


function submitAnswer() {
	$('.correct-ans').click(function(event){
		var response = $(this).data('id');
		var question = $(this).data('question');
		$.post('/responses/mark_answer', {response: response, question_id: question});
		location.reload();
		event.preventDefault();
	});
}


$(function(){ 
	$(document).foundation(); 
	$('#widget1').inputosaurus({
    width : '250px'
	});

	submitAnswer();

});
