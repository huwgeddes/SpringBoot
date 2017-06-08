<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

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
						<li><a>Data Management</a></li>
						<li><a>Search</a></li>
						<li><a class="btn btn-md btn-danger" href="/logout">Logout</a><li>
					</ul>
				</div>
			</nav>
			
		</div>

		<div v-cloak id="tabDetails" data-component="views/datamanagement/tabdetails">	
			
			<div class="row">
				<h3 class="">Data Management</h3>
				
				<form>
					<div class="form-group">
						<label for="patientId" class="sr-only">Patient Id:</label>
						<div class="col-sm-4">
							<input required class="form-control" type="text" v-model="patientId" placeholder="Patient Id" name="patientId">
						</div>
					</div>
					<div class="col-sm-2">
						<button v-bind:disabled="isNotNumeric" type="button" v-on:click="findPatient" class="btn btn-primary btn-block">Search</button>
					</div>
				</form>
				
				<div class="col-sm-2">
			      <button v-on:click="createNewPatient" class="btn btn-primary btn-block">Create New</button>
			    </div>
			
			</div>
			
			<div class="row" style="margin-top:20px" v-show="showResults">
	
				<h3>Results</h3>
				
				<div class="col-sm-12">
					<ul class="nav nav-tabs">
						<li class="active"><a  href="#patient-tab" data-toggle="tab">Patient</a></li>
						<li><a href="#cancer-tab" data-toggle="tab">Episodes</a></li>
					</ul>
					
					<div class="tab-content panel">
						<patient-tab v-bind:patient="patient"></patient-tab>
						<cancer-tab v-bind:patient="patient"></cancer-tab>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>