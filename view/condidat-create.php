{{ include('header.php', {title: 'Condidat Create'}) }}
<body>
    <main>
        <form action="{{path}}/condidat/store" method="POST">
            <label>Nom</label>
                <input type="text" name="nom">
            <label>Prenom</label>
                <input type="text" name="prenom">
            <label for="">Date de naissaince</label>
                <input type="text" name="date_naissance">
            <label for="">Email</label>
                <input type="text" name="email">
            <label for="">Adresse</label>
                <input type="text" name="adresse">
            
            
            <button> inscription</button>
        </form>
        <a href="{{path}}">Acceuil</a>
    </main>
</body>
</html>