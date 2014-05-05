<%-- 
    Document   : registo
    Created on : 14/Abr/2014, 17:30:26
    Author     : João Pedro
--%>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title></title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <style>
        body {
            padding-top: 50px;
            padding-bottom: 20px;
        }
    </style>
    <link rel="stylesheet" href="css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="css/main.css">

    <script src="js/vendor/modernizr-2.6.2-respond-1.1.0.min.js"></script>
    <link rel="stylesheet" href="css/datepicker.css">
    <link rel="stylesheet" href="js/bootstrap-datepicker.js">
</head>
<body>
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-12 column">
                <nav class="navbar navbar-default" role="navigation">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> <a class="navbar-brand" href="index.jsp">PullMan</a>  
                    </div>
                </nav>
            </div>
        </div>
    </div>

    <!-- Main jumbotron for a primary marketing message or call to action -->
    <div class="container">
        <h1></h1>



        <div class="panel panel-default">
            <!-- Default panel contents -->

            <div class="panel-body">
                <div class="input-group">

                </div>
                <p></p>

                <div class="panel panel-default">
                    <!-- Default panel contents -->
                    <div class="panel-heading">Dados</div>


                    <table class="table">
                        <tr> 
                            <th> <div class="panel-body">
                            <div class="input-group">
                                <span class="input-group-addon">Nome: </span>
                                <input id="nome" type="text" name="nome" class="form-control" value="João Pedro" disabled>
                            </div>
                            <p></p>
                            <div class="input-group">
                                <span class="input-group-addon">Username: </span>
                                <input id="username" type="text" name="username" class="form-control" value="joaoppedrosa" disabled>
                            </div>
                            <p></p>
                            <div class="input-group">
                                <span class="input-group-addon">Email: </span>
                                <input id="email" type="email" name="email" class="form-control" value="joaoppedrosa@ua.pt" disabled>
                            </div>
                            <p></p>
                            <div class="input-group">
                                <span class="input-group-addon">Telemóvel </span>
                                <input id="tele" type="text" name="telemovel" class="form-control" value="911999333" disabled>
                                <%
                                %>
                                <script type="text/javascript">
                                    
                                    function myFunction()
                                    {                                      
                                            document.getElementById("tele").disabled = false;
                                            document.getElementById("email").disabled = false;
                                            document.getElementById("username").disabled = false;
                                            document.getElementById("nome").disabled = false;
                                                   document.getElementById("reservas").style.visibility='hidden';
                                            document.getElementById("salvar").disabled = false;        
                                    }
                                    
                                     function myFunction2()
                                    {                                      
                                            document.getElementById("tele").disabled = true;
                                            document.getElementById("email").disabled = true;
                                            document.getElementById("username").disabled = true;
                                            document.getElementById("nome").disabled = true;
                                            document.getElementById("reservas").style.visibility='visible';
                                            document.getElementById("salvar").disabled = true; 
                                    }
                                </script>
                            </div>
                            <p></p>
                        </div></th>
                        <td><img src="http://cdn.controlinveste.pt/Storage/JN/2011/medium/ng1454897.jpg" class="img-rounded" width="200" height="250"></td>
                        </tr>    
                    </table>


                </div>
                <p></p>
                <div class="form-group">
                        <button onclick="myFunction()" margin="20" style="float: right; margin-left: 20px" type="submit" class="btn btn-success">Editar</button>                
                </div>  
                
                 <p></p>
                <div class="form-group">
                    <button  id="salvar" onclick="myFunction2()" margin="20" style="float: right; margin-left: 20px" type="submit" class="btn btn-success" disabled>Salvar</button>                
                </div> 
                <p></p>
                <div class="form-group">
                    <form method="post" action="Reservas.jsp">
                        <button id="reservas" style="float: right; margin-left: 20px" type="submit" class="btn btn-success">Reservas</button>
                    </form>
                </div>


            </div>
        </div>
    </div>
    <hr> 
    <div class="container">     

        <footer>
            <p>&copy; Company 2014</p>
        </footer>
    </div> 