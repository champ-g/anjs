<html ng-app="loginApp">
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>

<body ng-controller="loginController">
    <h1>Login Form</h1>
    <!-- Form for login with validation -->
    <form ng-submit="login()">
        Username
        <input type="text" ng-model="username" required>
        <br>
        Password
        <input type="password" ng-model="password" required>
        <br>
        <button type="submit">Login</button>
    </form>
    <script>
        var app = angular.module('loginApp', []);
        app.controller('loginController', function ($scope) {
            $scope.login = function () {
                // Check if username is "Ram" and password is "Ram"
                if ($scope.username == 'ram' && $scope.password == 'ram') {
                    alert('Login successful');
                    // Add further logic for successful login
                } else {
                    alert('Login failed. Invalid username or password.');
                    // Add logic for failed login
                }
            };
        });
    </script>
</body>

</html>
