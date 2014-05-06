<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : results
    Created on : 14/Abr/2014, 23:00:55
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
                        <button type="button" name="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> <a class="navbar-brand" href="index.jsp">PullMan</a>
                    </div>
                </nav>
            </div>
        </div>
        <div class="page-header">
            <h1>
                PullMan <small>- Comparador de viagens de autocarros</small>
            </h1>
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
                            <div class="panel-heading">Resultados</div>

                            <!-- Table -->
                            <table id="table" class="table">
                                <tr> 
                                    <th class="text-center">Origem</th>
                                    <th class="text-center">Destino</th>
                                    <th class="text-center">Hora</th>
                                    <th class="text-center">Companhia</th>
                                    <th class="text-center">Lugares Livres</th>
                                    <th class="text-center">Preço</th>
                                    <th class="text-center">Reserva</th>
                                </tr>                
                                <tr>
                                    <td class="text-center">Aveiro</td>
                                    <td class="text-center">Lisboa</td>
                                    <td class="text-center">19:00</td>
                                    <td class="text-center"><img src="http://makeitpossible.aiesec.pt/images/parceiros/rede_expressos.png" class="img-rounded" width="100" height="50"></td>
                                    <td class="text-center">4</td>
                                    <td class="text-center">6,50 EUR</td>
                                    <td class="text-center">
                                        <form method="post" action="Payment.jsp">
                                            <button  type="submit" class="btn btn-toolbar">Reservar</button></form>                        
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-center">Aveiro</td>
                                    <td class="text-center">Lisboa</td>
                                    <td class="text-center">20:15</td>
                                    <td class="text-center"><img src="http://www.adverta.co.uk/news/wp-content/uploads/2012/08/logo-transdev.jpg" class="img-rounded" width="100" height="50"></td>
                                    <td class="text-center">13</td>
                                    <td class="text-center">5,00 EUR</td>
                                    <td class="text-center">
                                        <form method="post" action="Payment.jsp">
                                            <button  type="submit" class="btn btn-toolbar">Reservar</button></form>                        
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-center">Aveiro</td>
                                    <td class="text-center">Lisboa</td>
                                    <td class="text-center">22:00</td>
                                    <td class="text-center"><img src="http://makeitpossible.aiesec.pt/images/parceiros/rede_expressos.png" class="img-rounded" width="100" height="50"></td>
                                    <td class="text-center">1</td>
                                    <td class="text-center">4,50 EUR</td>
                                    <td class="text-center">
                                        <form method="post" action="Payment.jsp">
                                            <button  type="submit" class="btn btn-toolbar">Reservar</button></form>                        
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-center">Aveiro</td>
                                    <td class="text-center">Lisboa</td>
                                    <td class="text-center">22:00</td>
                                    <td class="text-center"><img src="http://makeitpossible.aiesec.pt/images/parceiros/rede_expressos.png" class="img-rounded" width="100" height="50"></td>
                                    <td class="text-center" id="sits">0</td>
                                    <td class="text-center">4,50 EUR</td>
                                    <td class="text-center">
                                        <script>
                                            function val()
                                            {
                                                var x = document.getElementById("sits").innerHTML;
                                                if (x == 0)
                                                {
                                                    alert("Não existem lugares disponiveis neste autocarro!");
                                                }
                                            }
                                        </script>
                                        <form method="post" action="Payment.jsp">
                                            <button id="rsv" onclick="val()" type="submit" class="btn btn-toolbar">Reservar</button></form>                        
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
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

</body>


