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
        z:0
    }


    Component.onCompleted: Visual.createSpriteObjects();

    Item {
        Timer {

            interval: 40; running: true; repeat: true
            onTriggered: Visual.nextRow()
        }

        Text { id: time }
    }
}
