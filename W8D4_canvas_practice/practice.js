document.addEventListener("DOMContentLoaded", function(){
    const canvas = document.getElementById('mycanvas');
    // we will be working with ctx for the rest, aka set attr and call meth
    const ctx = canvas.getContext('2d');
    

    // // solid rectangle
    //fill style should be before fill rectangle
    ctx.fillStyle = '#ccccff';
    // x axis, y axis, width, height
    // location x, location y, size w, size h
    ctx.fillRect(0, 0, 100, 100);




    ctx.beginPath();
    ctx.arc(100, 100, 20, 0, 2*Math.PI, true)
    ctx.strokeStyle = '#98fb98';
    ctx.lineWidth = 3;
    ctx.stroke();
    ctx.fillStyle = 'peachpuff';
    ctx.fill();
    
});
