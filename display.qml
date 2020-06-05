import QtQuick 2.0
import QtGraphicalEffects 1.0
import QtQuick.Controls 2.0

import "display.js" as Display
import "visual.js" as Visual

Item {
    width: 800; height: 800

    id: displayWindow

    Component.onCompleted: Display.createButtons()

    Rectangle {
        anchors.fill: parent
        color: "gray"
    }

    Rectangle {
        anchors.margins: 30
        color: "black"
        radius: 30

        anchors.top:   parent.top
        anchors.left:  parent.left
        anchors.right: parent.right

        height: 430
    }

    Rectangle {
        id : screen
        anchors.top:   parent.top
        anchors.left:  parent.left
        anchors.right: parent.right

        height: 400

        anchors.margins: 45
        color: "#2f4f4f"
        radius: 30
    }


    Glow {
        anchors.fill: screen
        radius: 15
        samples: 34
        color: "gray"
        source: screen
    }

    FontLoader {
        id: matrixFont
        source: "File:/font/matrix_font.ttf"
    }
    Text {
        id: mainText
        font.family: matrixFont.name
        font.pixelSize: 20
        color: "#0aff02"

        anchors.fill: parent
        anchors.margins: 60
    }

    Item {
        Timer {
            id: textTimer
            interval: 20; running: true; repeat: true
            onTriggered: Visual.setText()
        }

        Text { id: time }
    }


    Item {

        z:11

        id: screw

        Rectangle {

            id: screwBorder

            anchors.top: parent.top
            anchors.left: parent.left

            anchors.leftMargin: 10
            anchors.topMargin: 10

            z:10
            width: 30
            height: 30

            radius: width * 0.5

            color: "black"
        }

        Rectangle {

            anchors.top: parent.top
            anchors.left: parent.left

            anchors.leftMargin: 11
            anchors.topMargin: 11

            z:11
            width: 28
            height: 28

            radius: width * 0.5

            color: "#a9acb6"
        }

        Rectangle {

            anchors.top: parent.top
            anchors.left: parent.left

            anchors.leftMargin: 11
            anchors.topMargin: 23

            z:11
            width: 28
            height: 3


            color: "#6a6b73"
        }
    }

    Item {

        z:11

        id: screw2

        anchors.top: parent.top
        anchors.right: parent.right

        Rectangle {

            id: screw2Border

            anchors.top: parent.top
            anchors.right: parent.right

            anchors.rightMargin: 10
            anchors.topMargin: 10

            z:10
            width: 30
            height: 30

            radius: width * 0.5

            color: "black"
        }

        Rectangle {

            anchors.top: parent.top
            anchors.right: parent.right


            anchors.rightMargin: 11
            anchors.topMargin: 11

            z:11
            width: 28
            height: 28

            radius: width * 0.5

            color: "#a9acb6"
        }

        Rectangle {

            anchors.top: parent.top
            anchors.right: parent.right

            anchors.rightMargin: 11
            anchors.topMargin: 23

            z:11
            width: 28
            height: 3


            color: "#6a6b73"
        }
    }

    Item {

        z:11

        id: screw3

        anchors.bottom: parent.bottom
        anchors.left: parent.left

        Rectangle {

            id: screw3Border

            anchors.bottom: parent.bottom
            anchors.left: parent.left

            anchors.leftMargin: 10
            anchors.bottomMargin: 10

            z:10
            width: 30
            height: 30

            radius: width * 0.5

            color: "black"
        }

        Rectangle {

            anchors.bottom: parent.bottom
            anchors.left: parent.left

            anchors.leftMargin: 11
            anchors.bottomMargin: 11

            z:11
            width: 28
            height: 28

            radius: width * 0.5

            color: "#a9acb6"
        }

        Rectangle {

            anchors.bottom: parent.bottom
            anchors.left: parent.left

            anchors.leftMargin: 11
            anchors.bottomMargin: 23

            z:11
            width: 28
            height: 3


            color: "#6a6b73"
        }
    }

    Item {

        z:11

        id: screw4

        anchors.bottom: parent.bottom
        anchors.right: parent.right

        Rectangle {

            id: screw4Border


            anchors.bottom: parent.bottom
            anchors.right: parent.right

            anchors.rightMargin: 10
            anchors.bottomMargin: 10

            z:10
            width: 30
            height: 30

            radius: width * 0.5

            color: "black"
        }

        Rectangle {

            anchors.bottom: parent.bottom
            anchors.right: parent.right

            anchors.rightMargin: 11
            anchors.bottomMargin: 11

            z:11
            width: 28
            height: 28

            radius: width * 0.5

            color: "#a9acb6"
        }

        Rectangle {

            anchors.bottom: parent.bottom
            anchors.right: parent.right

            anchors.rightMargin: 11
            anchors.bottomMargin: 23

            z:11
            width: 28
            height: 3


            color: "#6a6b73"
        }
    }
}
