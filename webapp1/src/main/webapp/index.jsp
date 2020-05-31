<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" rel="stylesheet">
        <style>
            h1 {
                font-size : 60px; 
            }
            td {
                font-size: 25px;
                padding: 10px;
                text-align: center;
            }
            input {
                font-size: 20px;
                border-radius: 5px;
                border-color: darkblue;
                border-right: 0px;
                border-left: 0px;
                border-top: 0px;
            }
            body {
                background-color: darkslateblue;
            }
            #div1 {
                height: 550px;
                width: 465px;
            }
            #div2 {
                height: 550px;
                width: 550px;
            }
            img {
                height: 400px;
                width : 400px;
                border-radius: 15px;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="row mt-2"></div>
            <div class="row">
                <div class="col-md-1"></div>
                <div class="col-md-5">
                    <div id="div1" class="jumbotron">
                        <center><h2>VChat</h2></center>
                        <img src="https://img.freepik.com/free-vector/messenger-application-flat-style_23-2147792779.jpg?size=338&ext=jpg">
                    </div>
                </div>
                <div class="col-md-4">
                    <div id="div2" class="jumbotron">
                        <br><br><br><br>
                    <center><h2>Login</h2></center>
                        <center>
                            <form action="login" method="POST">
                                <table>
                                    <tr>
                                        <td>Username :</td>
                                        <td><input type="text" name="username" placeholder="User name" autofocus></td>
                                    </tr>
                                    <tr>
                                        <td>Password :</td>
                                        <td><input type="password" name="password" placeholder="Password" autofocus></td>
                                    </tr>
                                    <tr>
                                        <td><input type="submit" class="btn btn-success" value="Sign Up"></td>
                                        <td><input type="submit" class="btn btn-success" value="Sign In"></td>
                                    </tr>
                                </table>
                            </form>
                        </center>
                    </div>
                </div>
                <div class="col-md-2"></div>
            </div>
        </div>
    </body>
</html>
