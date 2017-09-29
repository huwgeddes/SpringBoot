<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<title>Home Page</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script type="text/javascript" src="/webjars/requirejs/2.2.0/require.js" data-main="/js/main.js"></script>

</head>

<body>
	<div class="container">

		<#include "./common/navbar.ftl">

		<div>
			
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
						<button type="button" class="btn btn-primary btn-block data-search">Search</button>
					</div>
				</form>
				
				<div class="col-sm-2">
			      <button class="btn btn-primary btn-block">Create New</button>
			    </div>
			
			</div>

			<#include "./data/results.ftl">

		</div>
	</div>
</body>
</html>