<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="utf-8"%>
	
<!DOCTYPE html>
<html>

<head>

	<!-- Ruta Base para todas nuestras url relativas -->
	<!-- <base href="< %=request.getContextPath()+"/"%>"> -->

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!--   poner el icono de la empresa cuando lo tenga
    <link rel="icon" type="image/ico" href="images/favicon.ico">
    -->

    <title>Contabilidad año 2015</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">
    
    <!-- JQuery DataTables CSS -->
	<link href="css/jquery.dataTables.css" rel="stylesheet">
	<link href="css/jquery.dataTables_themeroller.css" rel="stylesheet">

	<!-- Bootstrap Core CSS -->
	<link href="css/style.css" rel="stylesheet">
	
	<!-- Custom Fonts -->
	<link href="font-awesome-4.1.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
	
     <!-- Custom CSS -->
    <link href="css/sb-admin-2.css" rel="stylesheet">
    
     <!-- Custom Propio CSS -->
    <link href="css/custompropio.css" rel="stylesheet">
    
    <!-- MetisMenu CSS -->
    <link href="js/plugins/metisMenu/dist/metisMenu.css" rel="stylesheet">
    
    <!-- Datatatble CSS -->
    <link href="css/plugins/dataTables.bootstrap.css" rel="stylesheet" type="text/css">
  
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

	<%			
		String titulo = request.getParameter("titulo");
	%>
		    
<title><%=titulo %></title>

</head>

<body>

    <div id="wrapper">
    	