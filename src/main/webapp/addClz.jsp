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

        <h1>Add class</h1>

        <form action="/addClz" method="post">

            classId:<br>
            <input type="text" name="id" >
            <br>

            teacherId:<br>
        <%--    <input type="text" name="teacherId" >--%>
        <%--    <br/>--%>

            <select name="teacherId">
                <%
                    for (Teacher teacher:Data.teacherArrayList){
                        out.print("<option value='"+teacher.getId()+"'>"+teacher.getId()+"</option>");
                    }
                %>
            </select>

            <br/>

            batch details:<br>
            <input type="text" name="batchDetails" >
            <br><br>


            <table>
                <tr>
                    <th>Monday</th>
                    <th>Tuesday</th>
                    <th>Wensday</th>
                </tr>

                    <%
                        int count = 0;
                        for (int i = 0;i<2;i++){
                            out.print("<tr>");
                            out.print("<td><input type='text' name='sub"+(++count)+"' placeholder='subject'> <input type='text' name='level"+(count)+"' placeholder='level' ></td>");
                            out.print("<td><input type='text' name='sub"+(++count)+"' placeholder='subject'> <input type='text' name='level"+(count)+"' placeholder='level' ></td>");
                            out.print("<td><input type='text' name='sub"+(++count)+"' placeholder='subject'> <input type='text' name='level"+(count)+"' placeholder='level' ></td>");
                            out.print("</tr>");
                        }
                    %>

            </table>

            <input type="submit" value="Submit" placeholder="subject">
        </form>
        <%out.print(Data.teacherArrayList.toString());%>

    </body>
</html>