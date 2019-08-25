<!DOCTYPE html>
<%@ taglib prefix = "form"  uri = "http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>



<html>

<head>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/solid.css">
  <script src="https://use.fontawesome.com/releases/v5.0.7/js/all.js"></script>
  <link rel="stylesheet" type="text/css" href="style.css">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  </head>
<body>
    <hr>
    <div class="container">
        <div class="header clearfix">
                <nav>
                        <ul class="nav nav-pills float-right">
                          <li class="nav-item">
                            <a class="nav-link" href="/">Home <span class="sr-only">(current)</span></a>
                          </li>
                          <li class="nav-item">
                            <a class="nav-link active" href="/conversiontable">Conversion Table</a>
                          </li>
                          <li class="nav-item">
                            <a class="nav-link" href="logtable">Logs</a>
                          </li>
                        </ul>
                      </nav>
                      <h3 class="text-muted">Forex USD Conversion Rates</h3>
              
        </div>

        <hr>
        			<table class="table table-striped">
					  <thead>
					    <tr>
					    	<c:forEach var="Currency" items = "${CurrencyList}">
                                  <th>${Currency}</th>
                            </c:forEach>
					    </tr>
					  </thead>
					  <tbody>
					    <tr>
					      <c:forEach var="Value" items = "${ValueList}">
                                  <td>${Value}</td>
                            </c:forEach>
					    </tr>
					    
					  </tbody>
					</table>
    </div>
</body>

  </html>

