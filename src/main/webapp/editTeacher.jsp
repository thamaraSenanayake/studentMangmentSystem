<%@ page import="com.example.demo.Data" %>
<Html>

    <head>
        <style>
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

        <h1>editTeacher</h1>

        <%
            int id = Integer.parseInt(request.getParameter("id"));
            String teacherId = Data.teacherArrayList.get(id).getId();
            String name = Data.teacherArrayList.get(id).getName();
        %>

        <form action="/editTeacher" method="post">

            <input type="text" name="count" value="<%= id%>" style="display: none">
            Id:<br>
            <input type="text" name="id" value="<%= teacherId%>" readonly="readonly">
            <br>

            name:<br>
            <input type="text" name="name" value="<%= name%>">

            <br><br>

            <input type="submit" value="Submit">
        </form>
    </body>
</Html>