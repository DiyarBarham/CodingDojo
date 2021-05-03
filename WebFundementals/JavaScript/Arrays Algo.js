function sum(arr){
    var sum = 0;
    for(var i=0; i<arr.length; i++){
        sum +=arr[i];
        console.log("the num is: "+arr[i]);
        console.log("the sum is: "+sum);
    }
}

function valpus(arr){
    for( var i=0; i< arr.length; i++){
        arr[i] *= i;
    }
    console.log(arr);
}

var testArr = [6,3,5,1,2,4]

sum(testArr);
valpus(testArr);