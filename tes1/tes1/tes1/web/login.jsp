
<html>
    <head>
        <title>Login</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
        <style>
            td{
                padding: 10px;
            }
            div{
                width: 50%;
                border: 1px solid black;
                border-radius: 5px;
                background-color: lightskyblue;
            }
        </style>
    </head>
    <body>
    <center><h1><u>Login Here</u></h1></center>
    <center>
        <div>
            <form action="login" method="POST">

            <table>
                <tr>
                    <td>User name</td>
                    <td><input type="text" class="form-control" name = "username" placeholder="User name"></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" class="form-control" name = "password" placeholder="Password"></td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center"><input class="btn-success" type="submit" value="Submit"></td>
                </tr>
            </table
            </form>
        </div>
    </center>
    </body>
</html>
