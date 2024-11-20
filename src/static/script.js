// static/script.js
document.addEventListener('DOMContentLoaded', function() {
    const textElement = document.getElementById('spin-text');
    
    let angle = 0;

    function spinText() {
        angle += 2; // Increment the angle
        textElement.style.transform = `rotate(${angle}deg)`; // Rotate the text
        requestAnimationFrame(spinText); // Request the next frame
    }

    spinText(); // Start spinning
});
