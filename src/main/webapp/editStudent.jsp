<%@ page import="com.example.demo.Data" %>
<%@ page import="com.example.demo.Module.Clz" %>
<Html>
<body>
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


