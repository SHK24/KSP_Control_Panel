var speedDirect = 1;
var component;
var sprite;


function finishSpeedometerCreation() {

    console.log("Finish Creation")

    if (component.status == Component.Ready) {
        sprite = component.createObject(appWindow, {x: 0, y: 400, z: 3});
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
        sprite = component.createObject(appWindow, {x: 400, y: 400, z: 3});
        if (sprite == null) {
            // Error Handling
            console.log("Error creating object");
        }
    } else if (component.status == Component.Error) {
        // Error Handling
        console.log("Error loading component:", component.errorString());
    }
}

function finishFuelCreation() {

    console.log("Finish Creation")

    if (component.status == Component.Ready) {
        sprite = component.createObject(appWindow, {x: 400, y: 0, z: 3});
        if (sprite == null) {
            // Error Handling
            console.log("Error creating object");
        }
    } else if (component.status == Component.Error) {
        // Error Handling
        console.log("Error loading component:", component.errorString());
    }
}

function finishMonoCreation() {

    console.log("Finish Creation")

    if (component.status == Component.Ready) {
        sprite = component.createObject(appWindow, {x: 600, y: 0, z: 3});
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
        finishFuelCreation();
    else
        component.statusChanged.connect(finishFuelCreation);

    console.log("Create mono indicator")

    component = Qt.createComponent("bar.qml");
    if (component.status == Component.Ready)
        finishMonoCreation();
    else
        component.statusChanged.connect(finishMonoCreation);

    component = Qt.createComponent("button.qml");
    if (component.status == Component.Ready)
        finishButtonCreation();
    else
        component.statusChanged.connect(finishButtonCreation);
}

//function finishCreation() {

//    console.log("Finish Creation")

//    if (component.status == Component.Ready) {
//        sprite = component.createObject(appWindow, {x: 0, y: 400, z: 3});
//        if (sprite == null) {
//            // Error Handling
//            console.log("Error creating object");
//        }
//    } else if (component.status == Component.Error) {
//        // Error Handling
//        console.log("Error loading component:", component.errorString());
//    }
//}

function func() {
    speed.value += speedDirect

    if(speed.value === 100) speedDirect = -1;
    if(speed.value ===   0) speedDirect = 1;

//    taho.value += speedDirect

//    if(taho.value === 100) speedDirect = -1;
//    if(taho.value ===   0) speedDirect = 1;
}

function lightSwitch() {

}
