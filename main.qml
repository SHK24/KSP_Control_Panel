import QtQuick 2.0
import QtQuick.Window 2.12

import "visual.js" as Visual

Window {

    id:appWindow
    visible: true
    width: 800
    height: 800
    title: qsTr("Speedometer")

    Rectangle
    {
        id: background
        anchors.fill: parent
        color: "black"
        z:1
    }

    TextInput {
        x: 0
        y: 0
        z: 3

        width: 100
        height: 100
    }

    Component.onCompleted: Visual.createSpriteObjects();
}
