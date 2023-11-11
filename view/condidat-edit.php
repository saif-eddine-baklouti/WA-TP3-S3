{{ include('header.php', {title: 'Condidat Edit'}) }}

<body>
    <main>
    <form action="{{path}}/condidat/update" method="POST">
            <input type="hidden" name="id" value="{{ condidat.id }}">
            <label>Nom</label>
                <input type="text" name="nom" value="{{ condidat.nom }}">
            <label>Prenom</label>
                <input type="text" name="prenom" value="{{ condidat.prenom }}">
            <label for="">Date de naissaince</label>
                <input type="text" name="date_naissance" value="{{ condidat.date_naissance }}">
            <label for="">Email</label>
                <input type="text" name="email" value="{{ condidat.email }}">
            <label for="">Adresse</label>
                <input type="text" name="adresse" value="{{ condidat.adresse }}">

            </select>
            <button> Modification</button>
        </form>
        <a href="{{path}}">Acceuil</a>
    </main>
</body>
</html>