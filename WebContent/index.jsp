<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <html>
    <head>
        <title>Online QR Gen</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
        <header>
            <nav class="navbar navbar-expand-md navbar-dark" style="background-color: lightseagreen">
                <div>
                	<h1 style="color:white">QR Code Generator</h1>
                    <!-- <a href="" class="navbar-brand"> QR Code Generator </a> -->
                </div>
            </nav>
        </header>
        <br>
        <div class="container col-md-5">
            <div class="card">
                <div class="card-body">
                    <form action="qrgen" method="post">
                    <caption>
                        <h2>
                            Generate QR code:
                        </h2>
                    </caption>

                    <fieldset class="form-group">
                        <label>Enter input: </label>
                        <textarea name="qrInput" class="form-control" rows="10" cols="10" required="required"></textarea>
                    </fieldset>

                    <button type="submit" class="btn btn-success">Generate -></button>
                    </form>
                </div>
            </div>
        </div>
    </body>
    </html>