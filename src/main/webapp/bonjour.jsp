<%@ page import="com.hamdi_dsi21.hamdidsi21.models.Student" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: sarso
  Date: 01/03/2024
  Time: 10:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script
</head>
<body>
<h1>Page Bonjour</h1>
<button type="button" class="btn btn-success">Success</button>
<button type="button" class="btn btn-danger">Danger</button>

<div class="container">
    <div class="row">
        <div class="col-0">
            <h1 style="color: chocolate">Hello World !</h1>
        </div>
    </div>
</div>
<br>

<h2>
    <%
        //String message = (String) request.getAttribute("message");
        //out.print(message);

        session = request.getSession();
        if (session.getAttribute("nom") != null) {
            out.print("Bonjour " + session.getAttribute("nom"));
        }
    %> <br>
        ${ empty message ? "Pas De Message" : message }
</h2>

<form method="post" action="bonjour">
    <label for="nom" class="form-label">Nom : </label>
    <input type="text" name="Nom" id="Nom" placeholder="Your Name" class="form-control w-25"/> <br>
    <input type="text" name="Age" id="Age" placeholder="Your Age" class="form-control w-25"/> <br>
    <input type="submit" class="btn btn-primary"/>
</form>

<%--<table class="table table-dark table-striped">
    <thead>
    <tr>
        <th scope="col">#</th>
        <th scope="col">Name</th>
    </tr>
    </thead>
    <tbody> </tbody> <tfoot></tfoot> </table>
--%>

<%
    out.print("<table class='table table-striped'>");
    out.print("<tr>");
    out.print("<th>Id</th>");
    out.print("<th>Nom</th>");
    out.print("<th>Age</th>");
    out.print("</tr>");

    List<Student> students = (List<Student>) request.getAttribute("Students");

    if(students!=null){
        for(Student s : students){
            out.print("<tr>");
            out.print("<td>"+s.getId()+"#</td>");
            out.print("<td>"+s.getName()+"</td>");
            out.print("<td>"+s.getAge()+"</td>");
            out.print("</tr>");
        }
    }
    else{
        System.out.print(students);
    }
    out.print("</table>");
%>
    </tbody>
</table>

    <ul>
            <%
                //String[] Students = (String[]) request.getAttribute("Students"); // Jebtha mara l fog ma3ach n3awed

                /*for (int i=0; i<= Students.length-1; i++){
                    out.print(" <li> L'étudiant N°: " + (i+1) + " : " + Students[i] + "<br> </li>");
                }*/
            %>
    </ul>
</body>
</html>
