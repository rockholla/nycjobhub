<script type="text/javascript">

$(document).ready(function(){
	
	var scrollyTime = 250;
	var scrollyWidth = 480; 	// from properties of .scrolly in main.css
	
	// Create event listener for mouse over scrolly tab
	// $('#search-job-scrolly-tab').bind('mouseover', jobSearchScrollyOut);
	// $('#search-job-scrolly-tab').bind('mouseout', jobSearchScrollyBackIn);
	
	$("#search-job-scrolly-tab").mouseenter(function() {
		
		$('#search-job-scrolly-tab').animate(
			{
				'right' : scrollyWidth
			},
			{
				duration: 250,
				easing: 'swing'
			}
		);
		
		$('#search-job-scrolly').animate(
			{
				'right' : 0
			},
			{
				duration: 250,
				easing: 'swing'
			}
		);
	});
	
	$("#search-job-scrolly").mouseleave(function() {
		
		$('#search-job-scrolly-tab').animate(
			{
				'right' : 0
			},
			{
				duration: 500,
				easing: 'swing'
			}
		);
		
		$('#search-job-scrolly').animate(
			{
				'right' : -scrollyWidth
			},
			{
				duration: 500,
				easing: 'swing'
			}
		);		
	});
	
	$("#build-resume-scrolly-tab").mouseenter(function() {
		
		$('#build-resume-scrolly-tab').animate(
			{
				'right' : scrollyWidth
			},
			{
				duration: 250,
				easing: 'swing'
			}
		);
		
		$('#build-resume-scrolly').animate(
			{
				'right' : 0
			},
			{
				duration: 250,
				easing: 'swing'
			}
		);
	});
	
	$("#build-resume-scrolly").mouseleave(function() {
		
		$('#build-resume-scrolly-tab').animate(
			{
				'right' : 0
			},
			{
				duration: 500,
				easing: 'swing'
			}
		);
		
		$('#build-resume-scrolly').animate(
			{
				'right' : -scrollyWidth
			},
			{
				duration: 500,
				easing: 'swing'
			}
		);		
	});
	
});

</script>