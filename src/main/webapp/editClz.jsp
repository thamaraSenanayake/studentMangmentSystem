<%@ page import="com.example.demo.Data" %>
<%@ page import="com.example.demo.Module.Teacher" %>
<%@ page import="com.example.demo.Module.Clz" %>
<html>
    <head>
        <style>
            table {
                font-family: arial, sans-serif;
                border-collapse: collapse;
                width: 100%;
                margin-top: 20px;
            }

            td, th {
                border: 1px solid #dddddd;
                text-align: left;
                padding: 8px;
            }

            tr:nth-child(even) {
                background-color: #dddddd;
            }
            .title{
                font-weight: bold;
                line-height: 2;
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

        <h1>View class</h1>

        <%
            int id = Integer.parseInt(request.getParameter("id"));
            String teacherId = Data.clzArrayList.get(id).getTeacherId();
            String classId = Data.clzArrayList.get(id).getClzId();
            String batchDetails = Data.clzArrayList.get(id).getBatchDetails();

            String sub1 = Data.clzArrayList.get(id).getTimeTable().getSub1().getSubName();
            String level1 = Data.clzArrayList.get(id).getTimeTable().getSub1().getSubLevel();

            String sub2 = Data.clzArrayList.get(id).getTimeTable().getSub2().getSubName();
            String level2 = Data.clzArrayList.get(id).getTimeTable().getSub2().getSubLevel();

            String sub3 = Data.clzArrayList.get(id).getTimeTable().getSub3().getSubName();
            String level3 = Data.clzArrayList.get(id).getTimeTable().getSub3().getSubLevel();

            String sub4 = Data.clzArrayList.get(id).getTimeTable().getSub4().getSubName();
            String level4 = Data.clzArrayList.get(id).getTimeTable().getSub4().getSubLevel();

            String sub5 = Data.clzArrayList.get(id).getTimeTable().getSub5().getSubName();
            String level5 = Data.clzArrayList.get(id).getTimeTable().getSub5().getSubLevel();

            String sub6 = Data.clzArrayList.get(id).getTimeTable().getSub6().getSubName();
            String level6 = Data.clzArrayList.get(id).getTimeTable().getSub6().getSubLevel();
        %>
        <form action="/editClz" method="post">

            <label class='title'>count:</label><br>
            <input type="text" name="count" value="<%= id%>">
            <br>

            <label class='title'>classId:</label><br>
            <select name="teacherId">
                <%
                    for (Teacher teacher:Data.teacherArrayList){
                        out.print("<option value='"+teacher.getId()+"'>"+teacher.getId()+"</option>");
                    }
                %>
            </select>
            <br>

            <label class='title'>teacherId:</label><br>
            <input type="text" name="teacherId" value="<%= teacherId%>">
            <br/>

            <label class='title'>batch details:</label><br>
            <input type="text" name="batchDetails" value="<%= batchDetails%>">
            <br><br>

            <table>
                <tr>
                    <th>Monday</th>
                    <th>Tuesday</th>
                    <th>Wensday</th>
                </tr>

                <tr>
                    <td>
                        <label class='title'> Sub: </label>
                        <input type="text" name="sub1" value="<%= sub1%>">
                        <label class='title'> level: </label>
                        <input type="text" name="level1" value="<%= level1%>">
                    </td>
                    <td>
                        <label class='title'> Sub: </label>
                        <input type="text" name="sub2" value="<%= sub2%>">
                        <label class='title'> level: </label>
                        <input type="text" name="level2" value="<%= level2%>">
                    </td>
                    <td>
                        <label class='title'> Sub: </label>
                        <input type="text" name="sub3" value="<%= sub3%>">
                        <label class='title'> level: </label>
                        <input type="text" name="level3" value="<%= level3%>">
                    </td>
                </tr>

                <tr>
                    <td>
                        <label class='title'> Sub: </label>
                        <input type="text" name="sub4" value="<%= sub4%>">
                        <label class='title'> level: </label>
                        <input type="text" name="level4" value="<%= level4%>">
                    </td>
                    <td>
                        <label class='title'> Sub: </label>
                        <input type="text" name="sub5" value="<%= sub5%>">
                        <label class='title'> level: </label>
                        <input type="text" name="level5" value="<%= level5%>">
                    </td>
                    <td>
                        <label class='title'> Sub: </label>
                        <input type="text" name="sub6" value="<%= sub6%>">
                        <label class='title'> level: </label>
                        <input type="text" name="level6" value="<%= level6%>">
                    </td>
                </tr>

            </table>

            <input type="submit" value="Submit" placeholder="subject">
        </form>

    </body>
</html>