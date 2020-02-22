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
            int count =0;
            for (Clz clz:Data.clzArrayList){
                out.print("<label class='title'> Class id: </label>"+clz.getClzId()+"<br/>");
                out.print("<label class='title'> teacher id: </label>"+clz.getTeacherId()+"<br/>");
                out.print("<label class='title'> BatchDetails: </label>"+clz.getBatchDetails()+"<br/>");

                out.print("<table>");
                    out.print("<tr>");
                         out.print("<th>Monday</th>");
                         out.print("<th>Tuesday</th>");
                         out.print("<th>Wensday</th>");
                    out.print("</tr>");

                    out.print("<tr>");
                        out.print("<td><label class='title'> Sub: </label>"+clz.getTimeTable().getSub1().getSubName()+"<label class='title'> level: </label>"+clz.getTimeTable().getSub1().getSubLevel()+"</td>");
                        out.print("<td><label class='title'> Sub: </label>"+clz.getTimeTable().getSub2().getSubName()+"<label class='title'> level: </label>"+clz.getTimeTable().getSub2().getSubLevel()+"</td>");
                        out.print("<td><label class='title'> Sub: </label>"+clz.getTimeTable().getSub3().getSubName()+"<label class='title'> level: </label>"+clz.getTimeTable().getSub3().getSubLevel()+"</td>");
                    out.print("</tr>");

                    out.print("<tr>");
                        out.print("<td><label class='title'> Sub: </label>"+clz.getTimeTable().getSub4().getSubName()+"<label class='title'> level: </label>"+clz.getTimeTable().getSub4().getSubLevel()+"</td>");
                        out.print("<td><label class='title'> Sub: </label>"+clz.getTimeTable().getSub5().getSubName()+"<label class='title'> level: </label>"+clz.getTimeTable().getSub5().getSubLevel()+"</td>");
                        out.print("<td><label class='title'> Sub: </label>"+clz.getTimeTable().getSub6().getSubName()+"<label class='title'> level: </label>"+clz.getTimeTable().getSub6().getSubLevel()+"</td>");
                    out.print("</tr>");

                out.print("</table>");
                out.print("<a href='/editClz?id="+(count++)+"'>Edit</a>");
                out.print("<br/><br/>");
            }
        %>
    <%out.print(Data.clzArrayList.toString());%>
    </body>
</html>