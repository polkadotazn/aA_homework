document.addEventListener("DOMContentLoaded", function(){
  const canvasp = document.getElementById("myCanvas");

  canvasp.width = 500;
  canvasp.height = 500;

  const ctx = canvasp.getContext("2d");

  ctx.fillStyle = "pink";
  ctx.fillRect(0, 0, 300, 500);

  ctx.beginPath();
  ctx.arc(50, 50, 20, 0, 2*Math.PI, true);
  ctx.strokeStyle = "purple";
  ctx.lineWidth = 5;

  ctx.stroke();
  ctx.fillStyle = "blue";
  ctx.fill();
});
