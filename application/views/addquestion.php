<!DOCTYPE html>
<html>
	<head>
		<script src="https://code.jquery.com/jquery-3.2.0.min.js"/>
		<script>
			$(document).ready(function(){
				$('form').each(function() { this.reset() });
			});
		</script>
	</head>
	<body>

		<form action="https://users.zirki.ai/airtelwhack/dummy/addquestion" method="post" id="nameform">

			Questions: <br/> <textarea name="question" rows="10" cols="100" ></textarea><br/>
			Answer: <br/><textarea name="answer" rows="10" cols="100"></textarea><br/>
			<button type="submit" form="nameform" value="Submit">Submit</button>
		</from>
	</body>
</html>
