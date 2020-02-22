<%@ page import="com.example.demo.Data" %>
<%@ page import="com.example.demo.Module.Clz" %>
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


        <h1>Edit Student</h1>

        <%
            int id = Integer.parseInt(request.getParameter("id"));
            String studentId = Data.studentArrayList.get(id).getId();
            String studentName = Data.studentArrayList.get(id).getName();
            String clzId = Data.studentArrayList.get(id).getClzId();
            String parentId = Data.studentArrayList.get(id).getParent().getParentId();
            String parentName = Data.studentArrayList.get(id).getParent().getParentName();
        %>

        <form action="/editStudent" method="post">

            <input type="text" name="count" value="<%= id%>" style="display: none">
            Student Id:<br>
            <input type="text" name="studentId" value="<%= studentId%>">
            <br>

            Student name:<br>
            <input type="text" name="studentName" value="<%= studentName%>">
            <br/>

            Class id:<br>
            <select name="clzId">
                <%
                    for (Clz clz: Data.clzArrayList){
                        out.print("<option value='"+clz.getClzId()+"'>"+clz.getClzId()+"</option>");
                    }
                %>
            </select>

            <br/>

            Parent  NIC:<br>
            <input type="text" name="parentId" value="<%= parentId%>">
            <br>

            Parent name:<br>
            <input type="text" name="parentName" value="<%= parentName%>">
            <br/>

            <br><br>
            <input type="submit" value="Submit">
        </form>
    </body>
</Html>


