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



    <table>
        <tr>
            <th>Teacher Id</th>
            <th>teacher name</th>
            <th>Edit</th>


            <%
                int count = 0;
                for (Teacher teacher:Data.teacherArrayList){
                     out.print("<tr>");
                     out.print("<td>"+teacher.getId()+"</td>");
                     out.print("<td>"+teacher.getName()+"</td>");
                     out.print("<td>"+"<a href='/editTeacher?id="+count+"'>Edit</a>"+"</td>");
                     out.print("</tr>");
                     count++;
                }
            %>
        </tr>
    </table>
        <%out.print(Data.teacherArrayList.toString());%>
    </body>
</html>