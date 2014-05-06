<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="Classes.Trips"%>
<%@page import="java.util.List"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : index
    Created on : 11/Abr/2014, 16:10:46
    Author     : João Pedro
--%>


<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->

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
        <meta charset="utf-8">
        <title>Bootstrap 3, from LayoutIt!</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">

        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">

        <!-- Fav and touch icons -->
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="img/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="img/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="img/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="img/apple-touch-icon-57-precomposed.png">
        <link rel="shortcut icon" href="img/favicon.png">

        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <script type="text/javascript" src="js/scripts.js"></script>

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
        <script src="js/bootstrap-datepicker.js"></script>
        <script src="js/main.js"></script>


        <link rel="stylesheet" href="css/datepicker.css">
        <link rel="stylesheet" href="js/bootstrap-datepicker.js">

        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.js"></script>
        <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.11.0.js"><\/script>')</script>

        <script src="js/vendor/bootstrap.min.js"></script>

        <script src="js/main.js"></script>
        <script src="js/bootstrap-datepicker.js"></script>

        <!-- Google Analytics: change UA-XXXXX-X to be your site's ID. -->
        <script>
                    (function(b, o, i, l, e, r) {
                    b.GoogleAnalyticsObject = l;
                            b[l] || (b[l] =
                            function() {
                            (b[l].q = b[l].q || []).push(arguments)
                            });
                            b[l].l = + new Date;
                            e = o.createElement(i);
                            r = o.getElementsByTagName(i)[0];
                            e.src = '//www.google-analytics.            r.parentNode.insertBefore(e, r)
                    }(window, document, 'script', 'ga')        ga('create', 'UA-XXXXX-X');
                            ga('send', 'pageview');</script>
    </head>

    <body>
        <div class="container">
            <div class="row clearfix">
                <div class="col-md-12 column">
                    <nav class="navbar navbar-default" role="navigation">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> <a class="navbar-brand" href="index.jsp">PullMan</a>
                        </div>
                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">


                            <div class="navbar-form navbar-right" role="form">
                                <div class="form-group">
                                    <form method="post" action="registo.jsp">
                                        <button type="submit" class="btn btn-default">Registar</button>
                                    </form>
                                </div>     
                            </div>
                            <div class="navbar-form navbar-right" role="form">
                                <div class="form-group">
                                    <form method="post" action="HomeLoginDone.jsp">
                                        <button type="submit" class="btn btn-warning">Login</button>
                                    </form>  
                                </div>     
                            </div> 
                            <div class="navbar-form navbar-right" role="form">
                                <div class="form-group">
                                    <input name="pass" type="password" placeholder="Password" class="form-control">
                                </div>     
                            </div>   
                            <div class="navbar-form navbar-right" role="form">
                                <div class="form-group">
                                    <input name="username" type="text" placeholder="Username" class="form-control">
                                </div>     
                            </div>  


                        </div>

                    </nav>
                </div>
            </div>
            <div class="page-header">
                <h1>
                    PullMan <small>- Comparador de viagens de autocarros</small>
                </h1>
            </div>
            <div class="carousel slide" id="carousel-632519">
                <ol class="carousel-indicators">
                    <li class="active" data-slide-to="0" data-target="#carousel-632519">
                    </li>
                    <li data-slide-to="1" data-target="#carousel-632519">
                    </li>
                    <li data-slide-to="2" data-target="#carousel-632519">
                    </li>
                </ol>
                <div class="carousel-inner">
                    <div class="item active">
                        <img alt="" src="http://lorempixel.com/1600/500/transport/7">
                        <div class="carousel-caption">
                            <h4>
                                Alugar um autocarro para qualquer ponto do pais
                            </h4>
                            <p>
                                Em qualquer dia acedendo simplesmente à plataforma web do PullMan e requisitando o seu lugar com pelo menos 15 dias de antecedência.
                            </p>
                        </div>
                    </div>
                    <div class="item">
                        <img alt="" src="http://lorempixel.com/1600/500/transport/4">
                        <div class="carousel-caption">
                            <h4>
                                Planeamento de Viagens
                            </h4>
                            <p>
                                Reserva de lugares para a sua viagem facilitando assim o seu planeamento
                            </p>
                        </div>
                    </div>
                    <div class="item">
                        <img alt="" src="http://lorempixel.com/1600/500/transport/3">
                        <div class="carousel-caption">
                            <h4>
                                Comudidade
                            </h4>
                            <p>
                                Pode reservar o seu lugar a partir de qualquer lugar tanto do sofá de sua casa como enquanto está a beber um café numa esplanada 
                            </p>
                        </div>
                    </div>
                </div> <a class="left carousel-control" href="#carousel-632519" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> <a class="right carousel-control" href="#carousel-632519" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
            </div>
            <p></p>
            <hr>
            <div></div>

            <form class="form-horizontal" role="form">
                <div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Origem: </label>
                        <div class="col-sm-10">
                            <select name="dataCombo" class="selectpicker">
                                <option data-hidden="true">Escolha a Origem</option>
                                <%
                                    String sql = "select distinct origin from TRIPS";
                                    try {
                                        Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/sample", "app", "app");
                                        Statement s = con.createStatement();
                                        ResultSet rs = s.executeQuery(sql);
                                        while (rs.next()) {
                                            String cd = rs.getString(1);
                                %>
                                <option value="<%out.println(cd);%>"><%out.println(cd);%></option>
                                <%
                                        }
                                        rs.close();
                                        s.close();
                                        con.close();
                                    } catch (SQLException e) {
                                        out.println("con error");
                                    }%>
                            </select>
                        </div>
                    </div>
                </div> 
                <div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Destino: </label>
                        <div class="col-sm-10">
                            <select id="dataCombo2" class="selectpicker">
                                <option data-hidden="true">Escolha o Destino</option>

                                <%
                                    String sql2 = "select distinct destination from TRIPS";
                                    try {
                                        Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/sample", "app", "app");
                                        Statement s = con.createStatement();
                                        ResultSet rs = s.executeQuery(sql2);
                                        while (rs.next()) {
                                            String cd = rs.getString(1);
                                %>
                                <option value="<%out.println(cd);%>"><%out.println(cd);%></option>
                                <%
                                        }
                                        rs.close();
                                        s.close();
                                        con.close();
                                    } catch (SQLException e) {
                                        out.println("con error");
                                    }%>

                            </select>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label">Extras: </label>
                    <div class="col-sm-10">
                        <div class="container">
                            <div class="row">
                                <div class='col-sm-6'>
                                    <div class="form-group">
                                        <div>
                                            <label class="checkbox-inline">
                                                <input type="checkbox" id="inlineCheckbox1" value="option1"> WiFi
                                            </label>
                                            <label class="checkbox-inline">
                                                <input type="checkbox" id="inlineCheckbox2" value="option2"> Ar Condicionado
                                            </label>
                                            <label class="checkbox-inline">
                                                <input type="checkbox" id="inlineCheckbox3" value="option3"> Mobilidade Especial
                                            </label>                                   
                                        </div>
                                    </div>
                                </div>       
                            </div>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label">Horário: </label>
                    <div class="col-sm-10">
                        <div class="container">
                            <div class="row">
                                <div class='col-sm-6'>
                                    <div class="form-group">
                                        <input type="date" class="form-control" />
                                    </div>
                                </div>       
                            </div>
                        </div>
                    </div>
            </form>
            <div class="form-group">
                <form method="post" action="results.jsp">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button style="float: next; margin-left: 515px" type="submit" class="btn btn-warning">Procurar</button>
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
</html>

