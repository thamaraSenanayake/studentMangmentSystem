<%@ page import="com.example.demo.Data" %>
<Html>
    <body>
        editTeacher

        <%
            int id = Integer.parseInt(request.getParameter("id"));
            String teacherId = Data.teacherArrayList.get(id).getId();
            String name = Data.teacherArrayList.get(id).getName();
            String teacherClass = Data.teacherArrayList.get(id).getClassId();
        %>

        <form action="/editTeacher" method="post">

            <input type="text" name="count" value="<%= id%>" style="display: none">
            Id:<br>
            <input type="text" name="id" value="<%= teacherId%>" readonly="readonly">
            <br>

            name:<br>
            <input type="text" name="name" value="<%= name%>">
            <br/>

            class id:<br>
            <input type="text" name="classId" value="<%= teacherClass%>">
            <br><br>

            <input type="submit" value="Submit">
        </form>
    </body>
</Html>