<%@ page import="de.mkammerer.argon2.Argon2, de.mkammerer.argon2.Argon2Factory" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Criptografar Frase com Argon2</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="borda">
        <div class="centro">
            <h2>Criptografando uma Frase com Argon2</h2>

            <form action="index.jsp" method="post">
                <label for="inputPhrase">Digite a frase para criptografar:</label><br>
                <input type="text" id="inputPhrase" name="inputPhrase" required /><br><br>
                <button type="submit">Criptografar</button>
            </form>

            <hr>

            <% 
        String inputPhrase = request.getParameter("inputPhrase");
        if (inputPhrase != null && !inputPhrase.isEmpty()) {
            Argon2 argon2 = Argon2Factory.create();
            
            try {
                String hashedPassword = argon2.hash(1, 1024, 1, inputPhrase.toCharArray());
                
                out.println("<h3>Frase criptografada:</h3>");
                out.println("<p>" + hashedPassword + "</p>");
            } catch (Exception e) {
                out.println("<p>Erro ao criptografar a frase: " + e.getMessage() + "</p>");
            }
        }
    %>
        </div>
    </div>
</body>
</html>
