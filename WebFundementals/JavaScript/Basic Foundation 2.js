function biggie(arr) {
  for (var i = 0; i < arr.length; i++) {
    if (arr[i] > 0) {
      arr[i] = "big";
    }
  }
  return arr;
}

function lowhigh(arr) {
  var low = arr[0],
    high = arr[0];
  for (var i = 1; i < arr.length; i++) {
    if (arr[i] > high) {
      high = arr[i];
    } else if (arr[i] < low) {
      low = arr[i];
    }
  }
  console.log(low);
  return high;
}

function printone(arr) {
  var odd;
  for (var i = 0; i < arr.length; i++) {
    if (arr[i] % 2 == 1) {
      odd = arr[i];
      break;
    }
  }
  console.log(arr[arr.length - 2]);
  return odd;
}

function double(arr) {
  for (var i = 0; i < arr.length; i++) {
    arr[i] = arr[i] * 2;
  }
  return arr;
}

function countpositives(arr) {
  var temp = 0;
  for (var i = 0; i < arr.length; i++) {
    if (arr[i] > 0) {
      // I decided to not include the zero as positive number since the question didn't decide.
    temp ++;
    }
  }
  arr[arr.length-1]=temp;
    return arr;
}

function EvenandOdd(arr){
    var even=0, odd=0;
    for(var i=0; i<arr.length; i++){
        if(arr[i]%2 == 0){
            even++;
            odd=0;
            if(even ==3){
                console.log("Even more so!");
                even=0;
            }
        } else if(arr[i]%2 == 1){
            odd++;
            even=0;
            if(odd ==3){
                console.log("That's odd!");
                odd=0;
            }
        }
    }
}

function increment(arr){
    for(var i=1; i<arr.length; i+=2){
        arr[i]++;
        console.log(arr[i]);
    }
    return arr;
}

function previousLengths(arr){
    for(var i=arr.length-1; i>0; i--){
        arr[i]=arr[i-1].length;
    }
    return arr;
}

function addseven(arr){// here I can use the same array becouse the original array outside the function won't change
    for(var i=0; i< arr.length; i++){
        arr[i] =+7;
    }
    return arr;
}

function reverse(arr){
    var temp;
    for(var i=0; i<arr.length; i++){
        temp =arr[arr.length-1-i];
        arr[arr.length-1-i] = arr[i];
        arr[i]=temp;
        if(arr[arr.length-1-i]-i <=1){
            break;
        }
    }
    return arr;
}

function outlook(arr){
    for(var i=0; i<arr.length; i++){
        if(arr[i]>0){
            arr[i] *= -1;
        }
    }
}

function hungry(arr){
    var temp =0;
    for(var i=0; i<arr.length; i++){
        if(arr[i] == 'food'){
            console.log('yummy');
            temp ++;
        }
    }
    if(temp ==0){
        console.log("I'm hungry");
    }
}

function swap(arr){
    var temp;
    for(var i=0; i<arr.length; i+=2){
        temp =arr[arr.length-1-i];
        arr[arr.length-1-i] = arr[i];
        arr[i]=temp;
        if(arr[arr.length-1-i]-i <=1){
            break;
        }
    }
    return arr;
}

function scale(arr,temp){
    for(var i=0; i<arr.length; i++){
        arr[i] *=temp;
    }
    return arr;
}