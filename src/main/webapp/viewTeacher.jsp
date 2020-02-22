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
            ul {
                list-style-type: none;
                margin: 0;
                padding: 0;
                overflow: hidden;
                background-color: #333;
            }

            li {
                float: left;
            }

            li a {
                display: block;
                color: white;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
            }

            li a:hover {
                background-color: #111;
            }
        </style>
    </head>
    <body>

        <ul>
            <li><a class="" href="/addStudent">Add Student</a></li>
            <li><a href="/viewStudent">View Student</a></li>
            <li><a href="/addClz">Add Clz</a></li>
            <li><a href="/viewClz">View Clz</a></li>
            <li><a href="/addTeacher">Add Teacher</a></li>
            <li><a href="/viewTeacher">View Teacher</a></li>
        </ul>

        <h1>
            View Teacher
        </h1>

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