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

    <H1>Add teacher</H1>
        <form action="/addTeacher" method="post">

            Id:<br>
            <input type="text" name="id" >
            <br>

            name:<br>
            <input type="text" name="name" >

            <br><br>

            <input type="submit" value="Submit">
        </form>
    </body>
</Html>
