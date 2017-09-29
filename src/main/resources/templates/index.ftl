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
            <#include "data/searchPanel.ftl">
			<#include "data/resultsPanel.ftl">
		</div>
	</div>
</body>
</html>