var speedDirect = 1;
var component;
var sprite;

var speedindicator;
var altIndicator;
var massIndicator;
var pressIndicator;

var log = []

var rowCounter = 0

function nextRow() {
    console.log(log[rowCounter])

    if(rowCounter > log.length) return;

    var alt   = log[rowCounter].split('|')[0].split(':')[1]
    var mass  = log[rowCounter].split('|')[1].split(':')[1]
    var speed = log[rowCounter].split('|')[2].split(':')[1]
    var press = log[rowCounter].split('|')[4].split(':')[1]

    console.log(speed)

    speedindicator.value = parseFloat(speed)
    altIndicator.value = parseFloat(alt) % 10000
    massIndicator.value = mass
    pressIndicator.value = press * 100.0

    rowCounter += 1
}

function finishSpeedometerCreation() {

    console.log("Finish Creation")

    if (component.status == Component.Ready) {
        speedindicator = component.createObject(appWindow, {x: 0, y: 400, z: 3});
        if (sprite == null) {
            // Error Handling
            console.log("Error creating object");
        }
    } else if (component.status == Component.Error) {
        // Error Handling
        console.log("Error loading component:", component.errorString());
    }
}

function finishAreometerCreation() {

    console.log("Finish Creation")

    if (component.status == Component.Ready) {
        altIndicator = component.createObject(appWindow, {x: 400, y: 400, z: 3, maximumValue : 10000, tickCapacity : 1000});
        if (altIndicator == null) {
            // Error Handling
            console.log("Error creating object");
        }
    } else if (altIndicator.status == Component.Error) {
        // Error Handling
        console.log("Error loading component:", component.errorString());
    }
}

function finishMassCreation() {

    console.log("Finish Creation")

    if (component.status == Component.Ready) {
        massIndicator = component.createObject(appWindow, {x: 400, y: 0, z: 3, maximumValue: 100});
        if (massIndicator == null) {
            // Error Handling
            console.log("Error creating object");
        }
    } else if (component.status == Component.Error) {
        // Error Handling
        console.log("Error loading component:", component.errorString());
    }
}

function finishPressCreation() {

    console.log("Finish Creation")

    if (component.status == Component.Ready) {
        pressIndicator = component.createObject(appWindow, {x: 600, y: 0, z: 3, maximumValue: 30});
        if (sprite == null) {
            // Error Handling
            console.log("Error creating object");
        }
    } else if (component.status == Component.Error) {
        // Error Handling
        console.log("Error loading component:", component.errorString());
    }
}

function finishButtonCreation() {

    console.log("Finish Button Creation")

    if (component.status == Component.Ready) {
        sprite = component.createObject(appWindow, {x: 0, y: 0, z: 3});
        sprite = component.createObject(appWindow, {x: 200, y: 0, z: 3});
        sprite = component.createObject(appWindow, {x: 0, y: 200, z: 3});
        sprite = component.createObject(appWindow, {x: 200, y: 200, z: 3});
        if (sprite == null) {
            // Error Handling
            console.log("Error creating object");
        }
    } else if (component.status == Component.Error) {
        // Error Handling
        console.log("Error loading component:", component.errorString());
    }
}

function createSpriteObjects() {

    console.log("Create speedometer")

    component = Qt.createComponent("speedometer.qml");
    if (component.status == Component.Ready)
        finishSpeedometerCreation();
    else
        component.statusChanged.connect(finishSpeedometerCreation);

    console.log("Create areometer")

    component = Qt.createComponent("speedometer.qml");
    if (component.status == Component.Ready)
        finishAreometerCreation();
    else
        component.statusChanged.connect(finishAreometerCreation);

    console.log("Create fuel indicator")

    component = Qt.createComponent("bar.qml");
    if (component.status == Component.Ready)
        finishMassCreation();
    else
        component.statusChanged.connect(finishMassCreation);

    console.log("Create mono indicator")

    component = Qt.createComponent("bar.qml");
    if (component.status == Component.Ready)
        finishPressCreation();
    else
        component.statusChanged.connect(finishPressCreation);


    component = Qt.createComponent("button.qml");

    if (component.status == Component.Ready)
        finishButtonCreation();
    else
        component.statusChanged.connect(finishButtonCreation);

    readLog();
}

function readLog(){
    var xhr = new XMLHttpRequest;
    xhr.open("GET", "file://:/spaceLog.txt"); // set Method and File
    xhr.onreadystatechange = function () {
        if(xhr.readyState === XMLHttpRequest.DONE){ // if request_status == DONE
            var response = xhr.responseText;

            log = response.split('\n')
        }
    }
    xhr.send(); // begin the request
}


function func() {
//    speed.value += speedDirect

//    if(speed.value === 100) speedDirect = -1;
//    if(speed.value ===   0) speedDirect = 1;

////    taho.value += speedDirect

////    if(taho.value === 100) speedDirect = -1;
////    if(taho.value ===   0) speedDirect = 1;
}

function lightSwitch() {

}
