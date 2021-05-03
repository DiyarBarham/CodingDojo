function sigma(num) {
  var sum = 0;
  for (let i = 0; i <= num; i++) {
    sum += i;
  }
  return sum;
}

function factorial(num) {
  var sum = 0;
  for (let i = 0; i <= num; i++) {
    sum *= i;
  }
  return sum;
}

function Fibonacci(index) {
  if (index < 0) {
    console.log("unvalid answer");
  } else if (index == 0) {
    return 0;
  } else if (index == 1) {
    return 1;
  } else if (index > 1) {
    return Fibonacci(index - 1) + Fibonacci(index - 2);
  }
}
function secondtolast(arr) {
  if ((arr, length < 2)) {
    return null;
  } else {
    return arr.length - 2;
  }
}
function nthtolaset(arr, i) {
  if (arr.length - i < 0) {
    return null;
  } else {
    return arr.length - i;
  }
}

function secondlarge(arr) {
  if (arr.length <= 1) {
    return null;
  } else {
    var flarge = arr[0],
      temp = 0;
    for (var i = 1; i < arr.length; i++) {
      if (arr[i] > flarge) {
        flarge = arr[i];
        temp = i;
      }
    }
    arr.splice(temp, 1);
    var slarge = arr[0];
    for (var i = 1; i < arr.length; i++) {
      if (arr[i] > slarge) {
        slarge = arr[i];
      }
    }
    return slarge;
  }
}

var arr = [42, 1, 4, 3.14, 7];
console.log(secondlarge(arr));

function doubletrouble(arr) {
  var temp = [];
  for (var i = 0; i < arr.length; i++) {
    temp.push(arr[i]);
    temp.push(arr[i]);
  }
  return temp;
}
