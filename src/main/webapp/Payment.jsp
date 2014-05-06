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

    <!-- Main jumbotron for a primary marketing message or call to action
    
    https://github.com/paypal/rest-api-sdk-java -> Repositório do sdk do paypal
    
    -->
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
                    <div class="panel-heading">Pagamento</div>

                    <div class="panel-body">
                        <div class="input-group">
                            <span class="input-group-addon">Nº de Lugares: </span>
                            <input id="lugares" onchange="PPP()" style="alignment-adjust: central" type="number" name="password" class="form-control" width="500" height="20">
                        </div>
                        <p></p>
                        <div class="input-group">
                            <span class="input-group-addon">Preço: </span>
                            <input id="preco" style="alignment-adjust: central" type="text" name="password" class="form-control" disabled>
                        </div>
                        
                        <div class="panel-body">
                            <form method="post" action="index.jsp">
                                <img onclick="LLL()" style="float: right;" alt="buy now with PayPal" border="0" src="https://www.paypalobjects.com/webstatic/en_US/btn/btn_buynow_pp_142x27.png" />
                            </form>
                        </div>
                    </div>
                    <p></p>
                </div>
            </div>
        </div>

        <script>
            function LLL() {
                alert("Lugar reservado com sucesso!");
                 window.location.href = 'index.jsp';
            }
            
            function PPP() {
               var x = document.getElementById("lugares");
               document.getElementById("preco").value = x.value*5+" EUR";
              
            }
        </script>
        <hr> 
        <div class="container">     

            <footer>
                <p>&copy; Company 2014</p>
            </footer>
        </div> 