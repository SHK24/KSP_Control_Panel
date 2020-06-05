import QtQuick 2.0
import QtGraphicalEffects 1.0
import QtQuick.Controls 2.0

Item {
    property alias buttonText:      displayButton.buttonText
//    property alias leftMargin:      displayButton.anchors.leftMargin
//    property alias bottomMargin:    displayButton.anchors.bottomMargin

    width:  100
    height: 100

    Rectangle {

        id: displayButton

        property alias buttonText: name.text

        width: 100
        height: 100

        anchors.bottom: parent.bottom
        anchors.left: parent.left

        radius: 10

//        anchors.leftMargin: 100
//        anchors.bottomMargin: 200

        color: "#ff9500"

        Text {
            id: name
            text: ""

            font.pixelSize: 32

            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top

            anchors.topMargin: -40
        }

        Rectangle {

            id: innerPart

            anchors.fill: parent
            anchors.margins: 10

            color: "#ffA500"

            radius: 10
        }

        DropShadow {
            anchors.fill: innerPart
            radius: 8.0
            samples: 16
            horizontalOffset: 0
            verticalOffset: 0
            color: "#bb000000"
            source: innerPart
        }
    }
}
