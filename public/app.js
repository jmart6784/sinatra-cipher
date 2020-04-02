let helpbtn = document.getElementById("help").addEventListener('click', function (event) {
  location = document.getElementById("link").getAttribute("href");
  window.open( location, '_blank' );
}, false);