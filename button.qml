import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Controls.Styles 1.4
import QtQuick.Extras 1.4
import QtGraphicalEffects 1.0

Item {
    width: 200
    height: 200

    Rectangle {

        width: parent.width-2
        height: parent.height-2

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        radius: 30

        color: "gray"
        z:1
    }

    Rectangle {

        id: mainBorder

        anchors.fill: parent

        radius: 30

        color: "black"
        z:0
    }

    Rectangle {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        width: 150
        height: 100
        z:2

        color: "black"
        radius: 10


        Rectangle {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter

            width: 8
            height: parent.height
            z:1

            color: "black"
        }

        Rectangle {

            id: innerShapeLeft

            z: 1

            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left

            anchors.leftMargin: 5

            width: parent.width / 2 -5
            height:parent.height -10

            radius: 10

            color: "#0aff02"

            MouseArea {
                id: mouseArea
                anchors.fill: parent
            }


            Text {
                id: i
                text: qsTr("ON")
                z:4

                font.pixelSize: 30

                anchors.left: parent.left
                anchors.verticalCenter: parent.verticalCenter

                anchors.leftMargin: 10
            }

            RectangularGlow {
                id: effect
                anchors.fill: innerShapeLeft
                glowRadius: 8
                spread: 0.2
                color: "#0aff02"
                cornerRadius: innerShapeLeft.radius + glowRadius
            }
        }


        Rectangle {

            id: innerShapeRight

            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.right

            anchors.rightMargin: 5

            width: parent.width / 2 - 10
            height:parent.height -10

            radius: 10

            color: "#b01030"

            MouseArea {
                id: mouseAreaRight
                anchors.fill: parent
            }


            Text {
                id: o
                text: qsTr("OFF")
                z:4

                font.pixelSize: 30

                anchors.right: parent.right
                anchors.verticalCenter: parent.verticalCenter

                anchors.rightMargin: 5
            }

            RectangularGlow {
                visible: false
                id: effectRight
                anchors.fill: innerShapeRight
                glowRadius: 8
                spread: 0.2
                color: "red"
                cornerRadius: innerShapeRight.radius + glowRadius
            }
        }
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
