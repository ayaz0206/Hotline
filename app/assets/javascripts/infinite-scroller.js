$(function(){ 
	$('#questions').infinitescroll({
    loading: {
    	msg: null,
    	msgText: null
    },

    navSelector  : ".pagination",
    nextSelector : ".next_page",
    itemSelector : "ul#questions li",          

  });
});
