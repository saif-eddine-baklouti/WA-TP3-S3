{{ include('header.php', {title: 'User List'}) }}
<body>
    <div class="container">
        <h1>Users</h1>
        <table>
            <tr>
                <th>Username</th>
                <th>Privilege</th>

            </tr>
            {% for user in users %}
                <tr>
                    <td>{{ user.username }}</a></td>
                    <td>{{ user.privilege }}</td>

                </tr>
            {% endfor %}
        </table>
        <br><br>

    </div>
    
</body>
</html>