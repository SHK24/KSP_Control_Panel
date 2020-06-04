import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.0
import QtQuick.Controls.Styles 1.4
import QtQuick.Extras 1.4
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.12

Item {

    id:window
    visible: true
    width: 200
    height: 400

    Rectangle
    {
        id: mainBorder
        anchors.fill: parent
        color: "black"
        radius: 30
        z:1
    }

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

    Rectangle {
        z: 1
        anchors.centerIn: parent

        width: 100
        height: 300

        radius: 10

        color: "black"
    }

    Gauge {

        z:12


        minimumValue: 0
        value: 50
        maximumValue: 100
        anchors.centerIn: parent
    }
}
