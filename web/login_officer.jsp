<!DOCTYPE html>
<html lang="en">
<head>
    <title>REZEKY TOMYAM</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,700&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="css/login-officer.css">
</head>
<body>
    <header class="header">
        <h1>Officer Login</h1>
    </header>
    <div class="login-container">
        <div class="nav-bar">
            <a href="login_employee.jsp" class="nav-button">Employee</a>
            <a href="login_manager.jsp" class="nav-button">Manager</a>
            <a href="login_officer.jsp" class="nav-button">Officer</a>
            <a href="welcome.html" class="nav-button">Back</a>
        </div>
        <br>
        <h2>Login</h2>
        <form action="login_account.do" method="post">
            <div class="input-group">
                <label for="username">Officer ID:</label>
                <input type="text" id="username" name="username" required>
            </div>
            <div class="input-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
            </div>
            <input type="hidden" name="action" value="officerLogin">
            <input type="submit" value="Login">
        </form>
        <p>${message}</p>
    </div>
</body>
</html>