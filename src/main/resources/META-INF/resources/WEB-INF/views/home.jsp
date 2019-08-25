<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<html>

<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.8/css/solid.css">
<script src="https://use.fontawesome.com/releases/v5.0.7/js/all.js"></script>
<link rel="stylesheet" type="text/css" href="style.css">
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
</head>
<body>
	<hr>
	<div class="container">
		<div class="header clearfix">
			<nav>
				<ul class="nav nav-pills float-right">
					<li class="nav-item"><a class="nav-link active" href="#">Home
							<span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"><a class="nav-link"
						href="conversiontable">Conversion Table</a></li>
					<li class="nav-item"><a class="nav-link" href="logtable">Logs</a>
					</li>
				</ul>
			</nav>
			<h3 class="text-muted">Forex Conversion</h3>

		</div>

		<hr>
		<form action="/convert" method="POST">
			<div class="jumbotron center">
				<div class="row">
					<div class="col-sm-6">

						<div class="form-group" name="Original_Currency">
							<label for="sel1">Original currency :</label> <select
								class="form-control" id="sel1" name="currency_from"
								value="${currency_to}">
								<option value="${currency_to}" selected disabled>${currency_from}</option>
								<c:forEach var="Currency" items="${CurrencyList}">
									<option value="${Currency}">${Currency}</option>>
                            	</c:forEach>

							</select>
						</div>

					</div>
					<div class="col-sm-6">
						<div class="form-group" name="Convert_Currency">
							<label for="sel1">Convert to currency :</label> <select
								class="form-control" id="sel1" name="currency_to"
								value="${currency_to}">
								<option value="${currency_to}" selected disabled>${currency_to}</option>
								<c:forEach var="Currency" items="${CurrencyList}">
									<option value="${Currency}">${Currency}</option>>
                            	</c:forEach>

							</select>
						</div>

					</div>
				</div>
				<div class="row">
					<div class="col-sm-6">
						<input class="form-control" type="number" name="input_value"
							value="${input_value}">
					</div>
					<div class="col-sm-6">
						<input class="form-control" type="number" name="output_value"
							value="${output_value}">
					</div>
				</div>
			</div>

			<button type="submit" class="btn btn-default">Convert</button>
		</form>
	</div>
</body>

</html>

