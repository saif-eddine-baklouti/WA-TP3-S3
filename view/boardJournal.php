{{ include('header.php', {title: 'Board Journal'}) }}

<body>

<h2>Log Details</h2>

<table>
    <tr>
        <th>Key</th>
        <th>Value</th>
    </tr>
    
    {% for key, value in journal %}
    {% if loop.index is odd %}
    <tr>
            <td>{{ key }}</td>
            <td>{{ value }}</td>
        </tr>
        {% endif %}
    {% endfor %}
</table>

</body>
</html>