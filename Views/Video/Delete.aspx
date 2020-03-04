<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Delete</title>
    <link href="../../Content/Site.css" rel="stylesheet" type="text/css" />
</head>
<body>
<h1>Eliminar video</h1>
    <form action="/Video/Delete" method="post">
        <fieldset>

        <legend>Datos del video</legend>

        <label for="idvideo">IdVideo</label>
        <input type="text" name="IdVideo" />

            <input type="submit" name="Eliminar video" />
        <fieldset>
    </form>
</body>
</html>
