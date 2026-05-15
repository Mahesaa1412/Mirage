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

            <div class="story-continue" id="storyCont">
                [ klik untuk melanjutkan... ]
            </div>

            <div id="fin">— Tamat —</div>
        </div>

        <script>
            const charName =
                    sessionStorage.getItem('charName') || 'Pejuang';

            const chapters = [
                {
                    chap: "Bab I: Gurun",
                    lines: [
                        "Sejauh mata memandang, hanya ada gurun yang tak berujung. " + charName + " terus menyeret langkah di bawah terik matahari dengan botol air yang sudah lama kering.",
                        "Tiba-tiba, di tengah teriknya matahari. tertancap sebilah pedang diatas pasir, membawa aura dingin yang asing. Begitu jemarinya menyentuh gagang logam itu, semua rasa lelah mendadak sirna.",
                        "Suara logam bergema saat zirah mulai membungkus tubuh " + charName + ". Ia mulai merasa dirinya adalah orang terpilih",
                        "Namun, sosok mahluk berlendir muncul dari balik pasir, membawa hawa yang membuat udara gurun terasa panas"
                    ]
                },
                {
                    chap: "Bab II: Piramida",
                    lines: [
                        "Di balik badai pasir yang ganas, sebuah piramida kuno berdiri menantang langit. " + charName + " melangkah masuk ke dalam lorong gelap yang terasa dingin secara tidak wajar.",
                        "Sesosok Mummy bangkit dari sarkofagus dengan perban yang membeku dan tubuh yang dilapisi es tipis. Hawa dingin terpancar dari tubuhnya, membuat zirah " + charName + " mulai mengeraskan langkahnya.",
                        "Lantai batu di sekitar sang penjaga makam ini membeku seketika. Seolah-olah hanya kobaran api yang sanggup meruntuhkan pertahanan dingin yang telah terkubur ribuan tahun ini.",
                        "Suara meraung didalam gelapnya piramida, membawa kutukan dingin yang mematikan."
                    ]
                },
                {
                    chap: "Bab III: Altar Kuno",
                    lines: [
                        "Langkah " + charName + " terhenti di depan sebuah altar raksasa yang dikelilingi oleh pilar-pilar retak. Udara di sini terasa berat, seolah-olah waktu sendiri telah berhenti berputar.",
                        "Di puncak altar, seorang Penyihir Kuno bangkit dari semedinya. Jubah hitamnya berkibar meski tak ada angin, dan tangannya menggenggam tongkat kayu yang memancarkan aura kegelapan.",
                        "Mata sang penyihir menyala merah, menatap rendah ke arah " + charName + ". Ia merapalkan mantra dalam bahasa yang tak dikenal, menciptakan perisai kegelapan yang tak tertembus pedang biasa.",
                        "Halusinasi zirah ini mulai retak di bawah tekanan sihir sang penyihir.",
                        "Pertarungan terakhir telah tiba. " + charName + " harus mengerahkan sisa kekuatannya sebelum seluruh gurun ini menelan jiwanya selamanya!"
                    ]
                }
            ];

            let ci = 0;
            let li = 0;

            const chapEl = document.getElementById('chap');
            const txtEl = document.getElementById('txt');
            const contEl = document.getElementById('storyCont');
            const finEl = document.getElementById('fin');

            function fadeText(newText) {
                txtEl.style.opacity = 0;
                contEl.classList.remove('visible');

                setTimeout(() => {
                    txtEl.textContent = newText;
                    txtEl.style.opacity = 1;

                    setTimeout(() => {
                        contEl.classList.add('visible');
                    }, 250);

                }, 500);
            }

            function fadeChap(newChap) {
                chapEl.style.opacity = 0;

                setTimeout(() => {
                    chapEl.textContent = newChap;
                    chapEl.style.opacity = 1;
                }, 500);
            }

            function nextStory() {
                contEl.classList.remove('visible');

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
                        contEl.style.display = 'none';

                        setTimeout(() => {
                            finEl.style.display = 'block';
                        }, 500);
                    }
                }
            }

            // Initial Story
            txtEl.style.opacity = 0;

            setTimeout(() => {
                txtEl.textContent = chapters[0].lines[0];
                txtEl.style.opacity = 1;

                setTimeout(() => {
                    contEl.classList.add('visible');
                }, 300);

            }, 300);

            // Click Continue
            contEl.onclick = nextStory;

            // Keyboard Support
            document.addEventListener('keydown', e => {
                if (e.key === 'Enter' || e.key === ' ') {
                    nextStory();
                }
            });
        </script>

    </body>
</html>