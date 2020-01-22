<%@ page import="com.example.demo.Data" %>
<%@ page import="com.example.demo.Module.Teacher" %>
<html>
<head>
    <style>
        table {
            font-family: arial, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        td, th {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        tr:nth-child(even) {
            background-color: #dddddd;
        }
    </style>
</head>
<body>

<h1>Add class</h1>

<form action="/addClz" method="post">

    classId:<br>
    <input type="text" name="id" >
    <br>

    teacherId:<br>
    <input type="text" name="name" >
    <br/>

    batch details:<br>
    <input type="text" name="classId" >
    <br><br>

    <input type="submit" value="Submit" placeholder="subject">
</form>
<table>
    <tr>
        <th>Monday</th>
        <th>Tuesday</th>
        <th>Wensday</th>


        <%
            int count = 0;
            for (int i = 0;i<3;i++){
                out.print("<tr>");
                out.print("<td><input type='text' name='sub"+(++count)+"' placeholder='subject'> <input type='text' name='level"+(count)+"' placeholder='level' ></td>");
                out.print("<td><input type='text' name='sub"+(++count)+"' placeholder='subject'> <input type='text' name='level"+(count)+"' placeholder='level' ></td>");
                out.print("<td><input type='text' name='sub"+(++count)+"' placeholder='subject'> <input type='text' name='level"+(count)+"' placeholder='level' ></td>");
                out.print("</tr>");
            }
        %>
    </tr>
</table>
<%out.print(Data.teacherArrayList.toString());%>
</body>
</html>