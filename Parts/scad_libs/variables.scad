function _(a,k) = [
    for(i=[0:2:len(a)-2]) if(a[i]==k) a[i+1]
][0];


function c(k) = _(c,k);
c = [
    "t", 2,     //thickness
    "ts", 3.5,  //thickness structural
    "tmin", 1,  //minimum thickness
    "g", 0.065,  //gap
    "gs", 0.07  //gap smooth
];

function screw(k) = _(screw,k);
screw = [
    "d", 3,     //diameter
    "l", 12,    //long length
    "s", 7      //short length
];