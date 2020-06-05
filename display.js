var component;

var buttons = [];

function finishCreateButtons() {
    console.log("Finish Creation")

    if (component.status == Component.Ready) {
        buttons[0] = component.createObject(displayWindow, {x: 100, y: 500, z: 3});
        buttons[1] = component.createObject(displayWindow, {x: 250, y: 500, z: 3});
        buttons[2] = component.createObject(displayWindow, {x: 400, y: 500, z: 3});
        buttons[3] = component.createObject(displayWindow, {x: 550, y: 500, z: 3});
        buttons[4] = component.createObject(displayWindow, {x: 100, y: 650, z: 3});
        buttons[5] = component.createObject(displayWindow, {x: 250, y: 650, z: 3});
        buttons[6] = component.createObject(displayWindow, {x: 400, y: 650, z: 3});
        buttons[7] = component.createObject(displayWindow, {x: 550, y: 650, z: 3});
        if (sprite == null) {
            // Error Handling
            console.log("Error creating object");
        }
    } else if (component.status == Component.Error) {
        // Error Handling
        console.log("Error loading component:", component.errorString());
    }
}

function createButtons() {

    console.log("Create buttons")

    component = Qt.createComponent("displayButton.qml");
    if (component.status == Component.Ready)
        finishCreateButtons();
    else
        component.statusChanged.connect(finishCreateButtons);
}
