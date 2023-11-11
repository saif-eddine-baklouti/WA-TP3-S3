{{ include('header.php', {title: 'Home'}) }}

    <body>
        <header>
            <div class="container">
                <h1>Welcome to my TP2  </h1>

            </div>
        </header>
        <main>
            <h2>Cours en ligne</h2>
            <h3> Formation disponible</h3>
        <a href="{{path}}/condidat/create">Poser votre candidature</a>
        
        <table >
        <tr>
            <th>Nom de programme</th>
            <th>Description</th>
            
        </tr>

        {% for programme in programmes %}
            <tr>
                
                <td>{{ programme.nom_programme }}</td>
                <td>{{ programme.description }}</td>

            </tr>
            {% endfor %}    

        </table>
        {%if ( condidats | length == 0 ) or ( condidats | length < 0 ) %}
        
        
        <h4>Personne dans la base de données n\'a encore soumis de candidature.</h4>";
        
        {% endif %}
        
        <table >
                <tr>
                    <th>Nom Prenom</th>
                    <th>Date de naissance</th>
                    <th>Email</th>
                    <th>Adresse</th>
                    <th>Options</th>
                </tr>
                <h1>Liste des condidats</h1>
                <tr>
     

                {% for condidat in condidats %}
                
                <td>{{ condidat.nom }}&nbsp;&nbsp;{{ condidat.prenom }}</td>
                <td>{{ condidat.date_naissance }}</td>
                <td>{{ condidat.email }}</td>
                <td>{{ condidat.adresse }}</td>
                
    <td><a href="{{path}}/condidat/edit/{{ condidat.id }}">Edit /</a><a href="{{path}}/condidat/destroy/{{ condidat.id }}"> Supprime</a></td>
    
    </tr>
    {% endfor %}
  

            </table>
    
        </main>


    </body>
</html>