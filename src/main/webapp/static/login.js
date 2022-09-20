/*
TODO:

- [DONE] Use a greedy algorithm to create a series of cuboids instead of making them with cubes

- [DONE] Update to version 0.7.3

*/

function setup() {
  createCanvas(700, 250, WEBGL);

  Dw.EasyCam.prototype.apply = function (n) {
    var o = this.cam;
    (n = n || o.renderer),
      n &&
        ((this.camEYE = this.getPosition(this.camEYE)),
        (this.camLAT = this.getCenter(this.camLAT)),
        (this.camRUP = this.getUpVector(this.camRUP)),
        n._curCamera.camera(
          this.camEYE[0],
          this.camEYE[1],
          this.camEYE[2],
          this.camLAT[0],
          this.camLAT[1],
          this.camLAT[2],
          this.camRUP[0],
          this.camRUP[1],
          this.camRUP[2]
        ));
  };

  cam = createEasyCam();
  cam.zoom(600);

  size = width / 200; // Size of each cube making up the letters
  res = 50; // Number of pixels per character

  oldString = "HELLO";
  newString = "";
  fonts = [
    "Georgia",
    "Times New Roman",
    "Helvetica",
    "Verdana",
    "Arial",
    "Courier New",
    "Trebuchet MS",
  ];
  styles = ["bold", "normal", "bold italic", "italic"];
  indexF = 0; // Current font
  indexS = 0; // Current style
  bevelled = true;

  genWord();
}

function draw() {
  background(255);

  normalMaterial();
  noStroke();

  word.show();
}

function genWord() {
  var font = fonts[indexF];
  var style = styles[indexS];
  var string = oldString;
  word = new Word3D(string, 6, size, res, bevelled, font, style);
}

function keyPressed() {
  // Cycle through fonts and styles, type new words followed by enter to display them, SHIFT to toggle bevel
  if (keyCode == RIGHT_ARROW) {
    indexF = (indexF + 1) % fonts.length;
    genWord();
  } else if (keyCode == LEFT_ARROW) {
    indexF = indexF <= 0 ? fonts.length - 1 : indexF - 1;
    genWord();
  } else if (keyCode == UP_ARROW) {
    indexS = indexS == styles.length - 1 ? 0 : indexS + 1;
    genWord();
  } else if (keyCode == DOWN_ARROW) {
    indexS = indexS == 0 ? styles.length - 1 : indexS - 1;
    genWord();
  } else if (keyCode == ENTER) {
    oldString = newString;
    genWord();
    newString = "";
  } else if (keyCode == SHIFT) {
    bevelled = !bevelled;
    genWord();
  } else if (keyCode == 20) {
  } else {
    newString += key;
  }
}
