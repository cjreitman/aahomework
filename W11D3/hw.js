
Array.prototype.titleize = function(arr) {


function titleize(names, callback) {
  let titleized = names.map(name => `Mx. ${name} Jingleheimer Schmidt`);
  callback(titleized);

  names.forEach()

};

var func = function (names) { 
  names.forEach function(name) { 
    console.log(name)
  };
};


titleize(['Colin', 'Tommy'], func);


function Elephant(name, height, tricks) {
  this.name = name;
  this.height = height;
  this.tricks = tricks;
};

Elephant.prototype.trumpet = function() {
  console.log(`${this.name} the elephant goes phrRRRRRRRRRRR!!!!!!!`);
};

let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);

