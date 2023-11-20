<!DOCTYPE html>
            <html lang="en">
            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>{{ title }}</title>
                <link rel="stylesheet" href="{{path}}/css/styles.css">
            </head>
            <body>
        <header>
            <div class="container">
                <h1>Welcome to my TP2  </h1>
        <nav>            
            <ul>
                <li><a href="{{path}}">Home</a></li>
                {% if guest %}
                <li><a href="{{path}}/login">conexxion</a></li>
                <li><a href="{{path}}/user/create">User Create</a></li>
                {% else %}
                <li><a href="{{path}}/condidat/create">Condidat Create</a></li>

                {% if session.privilege == 1 %}
                <li><a href="{{path}}/user">Users</a></li>
                <li><a href="{{path}}/journal">board journal</a></li>
                {% endif %}
                <li><a href="{{path}}/login/logout">Logout</a></li>
                {% endif %}
                
                <h2>{{ session.username }}</h2>     
            </ul>
        </nav>
            </div>
        </header>
