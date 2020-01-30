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