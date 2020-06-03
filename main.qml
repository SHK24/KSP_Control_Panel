import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.0
import QtQuick.Controls.Styles 1.4
import QtQuick.Extras 1.4
import QtQuick.Layouts 1.3

import "visual.js" as Visual

Window {

    id:window
    visible: true
    width: 640 * 1.5
    height: 480 * 1.5
    title: qsTr("Hello World")

    Rectangle
    {
        id: background
        anchors.fill: parent
        color: "gray"
    }

    Item {
        Timer {

            interval: 20; running: true; repeat: true
            onTriggered: {
//                speedTickColor.color = "#000B00"
            }
        }

        Text { id: time }
    }

    GridLayout {

        columns: 4
        rows: 3

        id: mainGrid

        anchors.fill: parent

        Button {
            Layout.columnSpan: 4
            Layout.fillWidth: true
        }

        Label {

            text: {
                text = "Speed"
                font.pixelSize =20
            }

            Layout.fillHeight: true
            verticalAlignment: "AlignBottom"
            Layout.fillWidth: true
            horizontalAlignment: "AlignHCenter"
        }

        Label {
            text: {
                text = "Acceleration"
                font.pixelSize =20
            }

            Layout.fillHeight: true
            Layout.fillWidth: true
            verticalAlignment: "AlignBottom"
            horizontalAlignment: "AlignHCenter"
        }

        Label {
            text: "Fuel"
            Layout.fillHeight: true
            Layout.fillWidth: true
            verticalAlignment: "AlignBottom"
            horizontalAlignment: "AlignHCenter"
        }

        Label {
            text: "Electro"
            Layout.fillHeight: true
            Layout.fillWidth: true
            verticalAlignment: "AlignBottom"
            horizontalAlignment: "AlignHCenter"
        }

        CircularGauge {

            id: speed

            value: 10

            style: CircularGaugeStyle {

                id : speedStyle

                needle: Rectangle {
                    y: outerRadius * 0.15
                    implicitWidth: outerRadius * 0.03
                    implicitHeight: outerRadius * 0.9
                    antialiasing: true
                    color: Qt.rgba(0.9, 0.3, 0, 1)
                }

                tickmarkLabel:  Text {
                    font.pixelSize: Math.max(6, outerRadius * 0.1)
                    text: styleData.value
                    color: Visual.tickColor
                    antialiasing: true
                }

                tickmark: Rectangle {
                    visible: styleData.value < 80 || styleData.value % 10 == 0
                    implicitWidth: outerRadius * 0.02
                    antialiasing: true
                    implicitHeight: outerRadius * 0.06
                    color: Visual.tickColor
                }

            }
        }

        CircularGauge {

            id: taho

            value: 10

            style: CircularGaugeStyle {
                needle: Rectangle {
                    y: outerRadius * 0.15
                    implicitWidth: outerRadius * 0.03
                    implicitHeight: outerRadius * 0.9
                    antialiasing: true
                    color: Qt.rgba(0.9, 0.3, 0, 1)
                }

                tickmarkLabel:  Text {
                    font.pixelSize: Math.max(6, outerRadius * 0.1)
                    text: styleData.value
                    color: Visual.tickColor
                    antialiasing: true
                }

                tickmark: Rectangle {
                    visible: styleData.value < 80 || styleData.value % 10 == 0
                    implicitWidth: outerRadius * 0.02
                    antialiasing: true
                    implicitHeight: outerRadius * 0.06
                    color: Visual.tickColor
                }

            }
        }

        Gauge {
            minimumValue: 0
            value: 40
            maximumValue: 100
        }

        Gauge {
            minimumValue: 0
            value: 40
            maximumValue: 100
        }
    }
}
