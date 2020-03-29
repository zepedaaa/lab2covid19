<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>YouVideo</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans&display=swap" rel="stylesheet">
    <link href="../../Content/Site.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <h1>YouVideo</h1>
    <p>&nbsp;</p>
    <h3>Menú de opciones</h3>
    <a href="/Video/Create">Agregar video</a>
    <br />
    <a href="/Video/Delete">Eliminar video</a>
    <br />
    <a href="/Video/Edit">Modificar video</a>
    <br />
    <h3>Lista de Videos</h3>
    <% 
        foreach (System.Data.DataRow video in ((System.Data.DataTable)ViewData["datavideo"]).Rows)
        {%>

    <iframe width="280" height="157.5" src="<%: video["url"].ToString() %>" 
    frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" 
    allowfullscreen></iframe>
    <%
        }           
    %>
</body>
</html>
