
// Regular function:

function myFunc(num1, num2) {
  console.log(num1 + num2);
}

// myFunc(50, 2) => puts 52 to the console


// Alternative way:

var myFunc2 = function(num1, num2) {
  console.log(num1 ** num2);
}

// myFunc2(2, 3) => puts 8 to the console


// JS6 way: 

const myFunc3 = (num1, num2) => {
  console.log(num1 * num2);
}

// myFunc3(5, 5) => puts 25 to the console 


// Constructor function: 

function Cat(name, color) {
  this.name = name;
  this.color = color;
};

var colin = new Cat('Colin', 'grey');

Cat.prototype.meow = function() {
  return (`${colin.name} the ${colin.color} cat says meow`);
};

console.log(colin.meow())
