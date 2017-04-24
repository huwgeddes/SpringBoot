<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:th="http://www.thymeleaf.org">

<head>
<title>Home Page</title>

<script src="https://unpkg.com/vue"></script>
<script src="https://unpkg.com/vue-resource"></script>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">


</head>

<body>
	<div class="container">
	
		<form action="/logout" method="get">
			<button class="btn btn-md btn-danger btn-block" name="registration"
				type="Submit">Logout</button>
		</form>    
		
		<div class="panel-group" style="margin-top:40px">
			<div class="panel panel-primary">
				<div id="app">
				  {{ message }}
				  
				  <ul>
					  <li v-for="user in users">
					    {{ user.username }}
					  </li>
				  </ul>
				  <button v-on:click="getUsers">Reverse Message</button>
				</div>
			</div>
		</div>
		
	</div>
	
	<script src="/js/myvue.js"></script>
	
</body>
</html>