var speedDirect = 1;

//var tickColor = "#90EE90"

function func() {
    speed.value += speedDirect

    if(speed.value === 100) speedDirect = -1;
    if(speed.value ===   0) speedDirect = 1;

    taho.value += speedDirect

    if(taho.value === 100) speedDirect = -1;
    if(taho.value ===   0) speedDirect = 1;
}

function lightSwitch() {
    sd = 50
}
