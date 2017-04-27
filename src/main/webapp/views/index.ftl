<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:th="http://www.thymeleaf.org">

<head>
<title>Home Page</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script type="text/javascript" src="/webjars/requirejs/2.2.0/require.js" data-main="/js/main.js"></script>

</head>

<body>
	<div class="container">
	
		<form action="/logout" method="get">
			<button class="btn btn-md btn-danger btn-block" name="registration" type="Submit">Logout</button>
		</form>    
<#--		
		<div class="panel-group" style="margin-top:40px">
			<div class="panel panel-primary">
				<div id="app" data-component="myvue">
				  {{ message }}
				  
				  <ul>
					  <li v-for="user in users">
					    {{ user.username }}
					  </li>
				  </ul>
				  <button class="btn btn-primary" v-on:click="getUsers" v-bind:disabled="isClicked">Get Users</button>
				</div>
			</div>
		</div>
		
		<div id="example" data-component="example">
			{{ total }}
			<simple-counter v-bind:initial="0" v-on:increment="incrementTotal"></simple-counter>
		  	<simple-counter v-bind:initial="0" v-on:increment="incrementTotal"></simple-counter>
		  	<simple-counter v-bind:initial="0" v-on:increment="incrementTotal"></simple-counter>
		</div>

	</div>
-->

	<div id="tabDetails" class="container" data-component="views/datamanagement/tabdetails">	
		<ul class="nav nav-pills">
			<li class="active"><a  href="#patient-tab" data-toggle="tab">Patient</a></li>
			<li><a href="#sample-tab" data-toggle="tab">Samples</a></li>
		</ul>
		
		<div class="tab-content">
			<patient-tab></patient-tab>
			<sample-tab></sample-tab>
		</div>
	</div>
	
</body>
</html>