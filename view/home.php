{{ include('header.php', {title: 'Home'}) }}


        <main>
            <h2>Cours en ligne</h2>
            <h3> Formation disponible</h3>

        <table >
        {% if programmes %} 
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


            {% endif %} 
        </table>
        
        {%if ( condidats | length == 0 ) or ( condidats | length < 0 ) %}
        <!-- <h4>Personne dans la base de données n\'a encore soumis de candidature.</h4>"; -->
        {% endif %}
        

        {% if session.privilege %}

        <table >
            <h1>Liste des condidats</h1>
                <tr>
                    <th>Nom Prenom</th>
                    <th>Date de naissance</th>
                    <th>Email</th>
                    <th>Adresse</th>
                    
                {% if session.privilege == 1 %}
                <th>Options</th>
                {% endif %}
                
                </tr>
            <tr>

                {% for condidat in condidats %}
                
                <td>{{ condidat.nom }}&nbsp;&nbsp;{{ condidat.prenom }}</td>
                <td>{{ condidat.date_naissance }}</td>
                <td>{{ condidat.email }}</td>
                <td>{{ condidat.adresse }}</td>


                {% if session.privilege == 1 %}
    <td><a href="{{path}}/condidat/edit/{{ condidat.id }}">Edit /</a><a href="{{path}}/condidat/destroy/{{ condidat.id }}"> Supprime</a></td>
                {% endif %}
            </tr>
    {% endfor %}
  

            </table>
            {% endif %} 

    
        </main>


    </body>
</html>