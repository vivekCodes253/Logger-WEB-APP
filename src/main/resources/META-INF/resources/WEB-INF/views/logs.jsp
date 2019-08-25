<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>



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
					<li class="nav-item"><a class="nav-link" href="/">Home <span
							class="sr-only">(current)</span></a></li>
					<li class="nav-item"><a class="nav-link"
						href="/conversiontable">Conversion Table</a></li>
					<li class="nav-item"><a class="nav-link active"
						href="logtable">Logs</a></li>
				</ul>
			</nav>
			<h3 class="text-muted">User Logs</h3>

		</div>

		<hr>
		<button class="btn btn-secondary dropdown-toggle" style="float:right" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						    Filters
						  </button>
						<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
						    <a class="dropdown-item" href="/logtable">All</a>
						    <a class="dropdown-item" href="/logtable/debug">Debug</a>
						    <a class="dropdown-item" href="/logtable/info">Info</a>
						    <a class="dropdown-item" href="/logtable/warn">Warn</a>
						    <a class="dropdown-item" href="/logtable/error">Error</a>
						    <a class="dropdown-item" href="/logtable/fatal">Fatal</a>
						  </div>
		<table class="table" style ="margin: auto;
   width: 80% ">
			<thead>
				<tr>
					<th>Logs</th>
					<th>
						
					</th>
				</tr>
			</thead>
			<tbody>
				<c:set var="INFO" value="INFO" />
				<c:set var="WARN" value="WARN" />
				<c:set var="DEBUG" value="DEBUG" />
				<c:set var="ERROR" value="ERROR" />
				<c:set var="FATAL" value="FATAL" />
				<c:forEach var="log" items="${Logs}" varStatus="loop">
				<tr><td></td><td></td></tr>
					<tr><td>${loop.count}</td>
					<c:choose>
						<c:when test="${fn:contains(log, INFO)}" >
							
								<td class="table-active"><ul>${log}</ul></td>
							
						</c:when>
						<c:when test="${fn:contains(log, WARN)}" >
							
								<td class="table-warning"><ul>${log}</ul></td>
							
						</c:when>
						<c:when test="${fn:contains(log, DEBUG)}" >
							
								<td class="table-info"><ul>${log}</ul></td>
							
						</c:when>
						<c:when test="${fn:contains(log, ERROR)}" >
							
								<td class="table-danger"><ul>${log}</ul></td>
							
						</c:when>
						<c:otherwise>
							
								<td class="table-normal"><ul>${log}</ul></td>
						
						</c:otherwise>
					</c:choose>
					</tr>
						
				</c:forEach>


			</tbody>
		</table>
	</div>
</body>

</html>

