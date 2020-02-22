<%@ page import="com.example.demo.Data" %>
<%@ page import="com.example.demo.Module.Teacher" %>
<%@ page import="com.example.demo.Module.Student" %>
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

        <table>
            <h1>Search Student</h1>
            <h1>${studentId}</h1>
            <tr>
                <th>Student Id</th>
                <th>Student name</th>
                <th>class id</th>
                <th>Parent id</th>
                <th>Parent name</th>
                <th>Edit</th>

            <tr>
                <td>${studentId}</td>
                <td>${studentName}</td>
                <td>${clzId}</td>
                <td>${parentId}</td>
                <td>${parentName}</td>
                <td><a href='/editStudent?id=${studentCount}'>Edit</a></td>
            </tr>

        </table>

    </body>
</html>