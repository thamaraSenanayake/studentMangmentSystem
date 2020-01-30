<%@ page import="com.example.demo.Data" %>
<%@ page import="com.example.demo.Module.Clz" %>
<Html>
<body>
<H1>Add Student</H1>
<form action="/addStudent" method="post">

    Student Id:<br>
    <input type="text" name="studentId" >
    <br>

    Student name:<br>
    <input type="text" name="studentName" >
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
    <input type="text" name="parentId" >
    <br>

    Parent name:<br>
    <input type="text" name="parentName" >
    <br/>

    <br><br>

    <input type="submit" value="Submit">
</form>
</body>
</Html>
