<%-- 
    Document   : login
    Created on : May 11, 2026
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mirage PixGame</title>
        <link rel="stylesheet" href="style.css">
        <link href="https://fonts.googleapis.com/css2?family=IM+Fell+English:ital@0;1&family=VT323&display=swap" rel="stylesheet">
    </head>
    <body class="login">

        <div id="fade-overlay"></div>
        <div id="particles"></div>

        <div class="cnt">
            <div class="title">MIRAGE</div>
            <div class="subtitle">- The tale of desert warrior -</div>
            <div class="cardName">
                <p>Bangkitlah, Sang Petualang!</p>
                <input type="text" id="charName" name="charName" placeholder="Siapa Namamu Petualang?" maxlength="20" autocomplete="off">
                <div class="error-msg" id="errMsg"></div>
                <button onclick="play()">MULAI PETUALANGAN</button>
            </div>
        </div>

        <script>
            const container = document.getElementById('particles');
            for (let i = 0; i < 25; i++) {
                const p = document.createElement('div');
                p.className = 'particle';
                p.style.left = Math.random() * 100 + 'vw';
                p.style.animationDuration = (6 + Math.random() * 10) + 's';
                p.style.animationDelay = (Math.random() * 8) + 's';
                p.style.width = p.style.height = (1 + Math.random() * 10 ) + 'px';
                container.appendChild(p);
            }

            function play() {
                const nameInput = document.getElementById('charName');
                const errMsg    = document.getElementById('errMsg');
                const name      = nameInput.value.trim();

                if (!name) {
                    errMsg.textContent = '⚠ Pejuang tanpa nama tidak bisa melanjutkan perjalanan.';
                    nameInput.classList.remove('shake');
                    void nameInput.offsetWidth;
                    nameInput.classList.add('shake');
                    nameInput.focus();
                    return;
                }

                errMsg.textContent = '';
                sessionStorage.setItem('charName', name);

                const overlay = document.getElementById('fade-overlay');
                overlay.classList.add('active');
                setTimeout(() => { window.location.href = 'story.jsp'; }, 850);
            }

            document.getElementById('charName').addEventListener('keydown', function(e) {
                if (e.key === 'Enter') play();
            });
        </script>

    </body>
</html>
