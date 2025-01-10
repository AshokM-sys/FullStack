// Function to trigger full-screen mode
function enterFullScreen() {
    if (!document.fullscreenElement && // Check if not already in full-screen mode
        !document.mozFullScreenElement && !document.webkitFullscreenElement) { // For Firefox and Webkit browsers
        if (document.documentElement.requestFullscreen) {
            document.documentElement.requestFullscreen();
        } else if (document.documentElement.mozRequestFullScreen) { // Firefox
            document.documentElement.mozRequestFullScreen();
        } else if (document.documentElement.webkitRequestFullscreen) { // Chrome, Safari
            document.documentElement.webkitRequestFullscreen();
        }
    }
}
