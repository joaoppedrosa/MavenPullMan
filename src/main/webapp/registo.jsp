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
                    <div class="panel-heading">Registo</div>

                    <div class="panel-body">
                        <div class="input-group">
                            <span class="input-group-addon">Nome: </span>
                            <input type="text" name="nome" class="form-control" placeholder="Nome do utilizador">
                        </div>
                        <p></p>
                        <div class="input-group">
                            <span class="input-group-addon">Username: </span>
                            <input type="text" name="username" class="form-control" placeholder="Username do utilizador">
                        </div>
                        <p></p>
                        <div class="input-group">
                            <span class="input-group-addon">Password: </span>
                            <input type="text" name="password" class="form-control" placeholder="Password do utilizador">
                        </div>
                         <p></p>
                        <div class="input-group">
                            <span class="input-group-addon">Email: </span>
                            <input type="email" name="nome" class="form-control" placeholder="Email do utilizador">
                        </div>
                          <p></p>
                        <div class="input-group">
                            <span class="input-group-addon">Telemóvel </span>
                            <input type="text" name="nome" class="form-control" placeholder="Telemóvel do utilizador">
                        </div>
                           <p></p>
                        <div class="input-group">
                            <span class="input-group-addon">Foto: </span>
                            <input type="file" name="nome" class="form-control" placeholder="Foto do utilizador">
                        </div>
                    </div>
                </div>
                <p></p>
                <form method="post" action="index.jsp">
                    <button style="float: right;" type="submit" class="btn btn-warning">Registar</button>
                </form>
            </div>
        </div>
    </div>
    <hr> 
    <div class="container">     

        <footer>
            <p>&copy; Company 2014</p>
        </footer>
    </div> 