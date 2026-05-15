/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


// Generate sand particles
const container = document.getElementById('particles');
for (let i = 0; i < 25; i++) {
    const p = document.createElement('div');
    p.className = 'particle';
    p.style.left = Math.random() * 100 + 'vw';
    p.style.animationDuration = (6 + Math.random() * 10) + 's';
    p.style.animationDelay = (Math.random() * 8) + 's';
    p.style.width = p.style.height = (1 + Math.random() * 8) + 'px';
    container.appendChild(p);
}

function play() {
    const nameInput = document.getElementById('charName');
    const errMsg = document.getElementById('errMsg');
    const name = nameInput.value.trim();

    if (!name) {
        errMsg.textContent = '⚠ Pejuang tanpa nama tidak bisa melanjutkan perjalanan.';
        nameInput.classList.remove('shake');
        void nameInput.offsetWidth; // reflow trigger
        nameInput.classList.add('shake');
        nameInput.focus();
        return;
    }

    errMsg.textContent = '';

    // Save name to sessionStorage
    sessionStorage.setItem('charName', name);

    // Fade out then redirect
    const overlay = document.getElementById('fade-overlay');
    overlay.classList.add('active');
    setTimeout(() => {
        window.location.href = 'story.jsp';
    }, 850);
}

// Allow Enter key
document.getElementById('charName').addEventListener('keydown', function (e) {
    if (e.key === 'Enter')
        play();
});