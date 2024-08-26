let options = {

  spacing: 10,

  acceleration: 100,

  fps: 90,

  audio: "libs/roulette/click.wav",

  selector: ":scope > *",

  stopCallback: function({detail: { prize }}) {
      console.log("stop");
      console.log(`Selected prize index is: ${prize.index}`);
  },

  startCallback: function({detail: { prize }}) {
      console.log("start");
  }
};

let roulette = new Roulette(".roulette", options);

document.getElementById("start").addEventListener("click", function() {
  roulette.rotateTo(10, { tracks: 1, random: false });
});

document.getElementById("stop").addEventListener("click", function() {
  roulette.stop();
});
