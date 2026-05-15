<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mirage - Story</title>
        <link rel="stylesheet" href="style.css">
         <link href="https://fonts.googleapis.com/css2?family=IM+Fell+English:ital@0;1&family=VT323&display=swap" rel="stylesheet">
    </head>
    <body class="story">

        <div id="chap">Bab I: Gurun</div>
        <div id="box">
            <div id="txt"></div>
            <button id="btn" onclick="next()">Lanjutkan</button>
            <div id="fin">— Tamat —</div>
        </div>

        <script>
            const charName = sessionStorage.getItem('charName') || 'Pejuang';

            const chapters = [
                {
                    chap: "Bab I: Gurun",
                    lines: [
                        "Pasir berderak di bawah sepatu " + charName + ". Matahari membakar tanpa ampun.",
                        charName + " berjalan sudah tiga hari. Air tinggal setetes.",
                        "Di kejauhan, bayangan sebuah menara muncul — atau hanya fatamorgana?",
                        "Kaki " + charName + " melangkah maju. Tidak ada pilihan lain."
                    ]
                },
                {
                    chap: "Bab II: Reruntuhan",
                    lines: [
                        "Menara itu nyata. Batu-batunya tua, berlumut, tak masuk akal di tengah gurun.",
                        "Di pintunya terukir tulisan yang tidak dimengerti " + charName + " — tapi kakinya paham.",
                        charName + " masuk. Kegelapan menyambut seperti pelukan lama."
                    ]
                },
                {
                    chap: "Bab III: Penjaga",
                    lines: [
                        "Sebuah suara bergema dari sudut yang tidak ada. 'Kamu datang juga.'",
                        "Sosok itu berdiri di sana — jubah merah, wajah tersembunyi.",
                        "'Aku sudah menunggumu sejak sebelum kamu lahir,' katanya.",
                        "Tangan " + charName + " bergerak ke gagang pedang. Jantung berdegup.",
                        "Ini baru permulaan."
                    ]
                }
            ];

            let ci = 0, li = 0;
            const chapEl = document.getElementById('chap');
            const txtEl  = document.getElementById('txt');
            const btnEl  = document.getElementById('btn');
            const finEl  = document.getElementById('fin');

            function fadeText(newText) {
                txtEl.style.opacity = 0;
                setTimeout(() => { txtEl.textContent = newText; txtEl.style.opacity = 1; }, 500);
            }

            function fadeChap(newChap) {
                chapEl.style.opacity = 0;
                setTimeout(() => { chapEl.textContent = newChap; chapEl.style.opacity = 1; }, 500);
            }

            txtEl.style.opacity = 0;
            setTimeout(() => { txtEl.textContent = chapters[0].lines[0]; txtEl.style.opacity = 1; }, 300);

            function next() {
                li++;
                if (li < chapters[ci].lines.length) {
                    fadeText(chapters[ci].lines[li]);
                } else {
                    ci++;
                    if (ci < chapters.length) {
                        li = 0;
                        fadeChap(chapters[ci].chap);
                        fadeText(chapters[ci].lines[0]);
                    } else {
                        txtEl.style.opacity = 0;
                        btnEl.style.display = 'none';
                        setTimeout(() => { finEl.style.display = 'block'; }, 500);
                    }
                }
            }

            document.addEventListener('keydown', e => {
                if (e.key === 'Enter' || e.key === ' ') next();
            });
        </script>

    </body>
</html>
