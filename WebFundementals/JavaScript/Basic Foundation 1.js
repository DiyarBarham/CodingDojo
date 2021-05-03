function getnum() {
    var arr = [];
    for (var i = 1; i <= 255; i++) {
        arr.push(i);
    }
    return arr;
}
var arrgetnum = [];
arrgetnum = getnum();

function geteven() {
    var sum = 0;
    for (var i = 2; i <= 1000; i += 2) {
        sum += i;
    }
    return sum;
}

var sumgeteven = geteven;

function getodd() {
    var sum = 0;
    for (var i = 1; i <= 000; i += 2) {
        sum += i;
    }
    return sum;
}

var sumgetodd = getodd;

function getarr(arrsum) {
    var sum = 0;
    for (var i = 0; i < arrsum.length; i++) {
        sum += arrsum[i];
    }
    return sum;
}
var arrsum = [1, 2, 3, 4];
var sumgetarr = getarr(arrsum);

function arrmax(max) {
    var maxnum = max[0];
    for (var i = 1; i < max.length; i++) {
        if (max[i] > maxnum) {
            maxnum = max[i];
        }
    }
    return maxnum;
}
var max = [1, 2, 3, 4];
var maxnum = getarr(max);

function arravg(avg) {
    var avgnum = avg[0];
    for (var i = 1; i < avg.length; i++) {
        avgnum += avg[i];
    }
    avgnum = avgnum / avg.length;
    return maxnum;
}
var avg = [1, 2, 3, 4];
var avgnum = getarr(avg);

function arrodd() {
    var arrod = [];
    for (var i = 1; i < 50; i += 2) {
        arrod.push(i);
    }
    return arrod
}

function greaterthanY(y, arr) {
    var temp = 0;
    for (var i = 0; i < arr.length; i++) {
        if (arr[i] > y) {
            temp++;
        }
    }
    return temp;
}

function squares(arr) {
    for (var i = 0; i < arr.length; i++) {
        arr[i] = arr[i] * arr[i];
    }
    return arr;
}

function negatives(arr) {
    for (var i = 0; i < arr.length; i++) {
        if (arr[i] < 0) {
            arr[i] = 0;
        }
    }
    return arr;
}

function nums(arr) {
    var temp = [arr[0], arr[0], arr[0]];
    for (var i = 1; i < arr.length; i++) {
        if (arr[i] > temp[0]) {
            temp[0] = arr[i];
        } else if (arr[i] < temp[1]) {
            temp[1] = arr[i];
        }
        temp[2] += arr[i];
    }
    temp[2] = temp[2] / arr.length;
    return temp;
}

function swap(arr) {
    temp = arr[0];
    arr[0] = arr[arr.length - 1];
    arr[arr.length - 1] = temp;
    return arr;
}

function numtostring(arr) {
    for (var i = 0; i < arr.length; i++) {
        if (arr[i] < 0) {
            arr[i] = 'Dojo';
        }
    }
    return arr;
}