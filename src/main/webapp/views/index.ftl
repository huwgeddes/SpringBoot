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
		
		<div class="row navigation-bar">
			<nav class="navbar navbar-default" role="navigation">
				<div class="container-fluid">
					<div class="navbar-header">
						<a class="navbar-brand">A Webapp</a>
					</div>
					<ul class="nav navbar-nav navbar-right">
						<li><a>item one</a></li>
						<li><a>item two</a></li>
					</ul>
				</div>
			</nav>
			
		</div>
		
		<form class="row" action="/logout" method="get">
			<button class="btn btn-md btn-danger btn-block col-sm-12" name="registration" type="Submit">Logout</button>
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

	<div id="tabDetails" data-component="views/datamanagement/tabdetails">	
		
		<div class="row">
			<h3 class="">Heading</h3>
			
			<form>
				<div class="form-group">
					<label for="text-input" class="sr-only">Patient Id:</label>
					<div class="col-sm-4">
						<input class="form-control" type="text" id="text-input" placeholder="Patient Id">
					</div>
				</div>
				<div class="col-sm-2">
					<button class="btn btn-primary">Search</button>
				</div>
			</form>
			
			<div class="col-sm-2 col-sm-offset-4">
		      <button class="btn btn-primary">Create New</button>
		    </div>
		
		</div>
		
		<div class="row">

				<h3>Other Area</h3>

			
			<div class="col-sm-12">
				<ul class="nav nav-tabs">
					<li class="active"><a  href="#patient-tab" data-toggle="tab">Patient</a></li>
					<li><a href="#sample-tab" data-toggle="tab">Samples</a></li>
				</ul>
				
				<div class="tab-content panel">
					<patient-tab></patient-tab>
					<sample-tab></sample-tab>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>