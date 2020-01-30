<%@ page import="com.example.demo.Data" %>
<%@ page import="com.example.demo.Module.Teacher" %>
<%@ page import="com.example.demo.Module.Student" %>
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



<table>
    <h1>View Student</h1>
    <tr>
        <th>Student Id</th>
        <th>Student name</th>
        <th>class id</th>
        <th>Parent id</th>
        <th>Parent name</th>
        <th>Edit</th>


        <%
            int count = 0;
            for (Student student:Data.studentArrayList){
                out.print("<tr>");
                out.print("<td>"+student.getId()+"</td>");
                out.print("<td>"+student.getName()+"</td>");
                out.print("<td>"+student.getClzId()+"</td>");
                out.print("<td>"+student.getParent().getParentId()+"</td>");
                out.print("<td>"+student.getParent().getParentName()+"</td>");
                out.print("<td>"+"<a href='/editStudent?id="+count+"'>Edit</a>"+"</td>");
                out.print("</tr>");
                count++;
            }
        %>
    </tr>
</table>
<%out.print(Data.teacherArrayList.toString());%>
</body>
</html>