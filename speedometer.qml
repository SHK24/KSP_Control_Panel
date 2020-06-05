import QtQuick 2.12
import QtQuick.Controls 2.0
import QtQuick.Controls.Styles 1.4
import QtQuick.Extras 1.4
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.12

import "visual.js" as Visual

Item {

    property alias value: indicator.value
    property alias maximumValue: indicator.maximumValue
    property alias tickCapacity: indicator.tickCapacity

    visible: true
    width: 400
    height: 400

    Rectangle
    {
        width: parent.width - 2
        height: parent.height - 2

        id: background

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        color: "gray"
        radius: 30
        z:1
    }

    Rectangle
    {
        id: mainBorder
        anchors.fill: parent
        color: "black"
        radius: 30
        z:0
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

    Item {

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        z:5

        Rectangle
        {
            id: border

            width: 340
            height: 340
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            color: "black"
            radius: width * 0.5
            z:2
        }

        Item {
            id: name

            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter

            z:3

            Rectangle
            {
                width: 330
                height: 330
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                color: "black"
                radius: width * 0.5
                z:3
            }
        }


        CircularGauge {

            id: indicator

            value: 10
            maximumValue: 1000
            property var tickCapacity: 100
            z:3

            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter

            style: CircularGaugeStyle {

                id : speedStyle
                property var tickCapacity: parent.tickCapacity


                needle: Rectangle {
                    y: outerRadius * 0.15
                    implicitWidth: outerRadius * 0.04
                    implicitHeight: outerRadius * 0.85
                    antialiasing: true
                    color: Qt.rgba(0.9, 0.3, 0, 1)
                }

                tickmarkLabel:  Text {
                    visible: styleData.value % indicator.tickCapacity == 0
                    font.pixelSize: Math.max(6, TimuterRadius * 0.15)
                    text: styleData.value
                    color: "white"
                    antialiasing: true
                }

                tickmark: Rectangle {
                    visible: styleData.value % indicator.tickCapacity == 0
                    implicitWidth: outerRadius * 0.03
                    antialiasing: true
                    implicitHeight: outerRadius * 0.06
                    color: "white"
                }

            }
        }
    }
}
