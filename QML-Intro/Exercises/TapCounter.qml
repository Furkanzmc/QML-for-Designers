import QtQuick 2.10

Item {
    width: 240
    height: 320

    Text {
        id: lbReset
        anchors {
            top: parent.top
            left: parent.left
            margins: 20
        }
        text: "Reset"
        color: "#29B6F6"

        MouseArea {
            anchors.fill: parent
            onClicked: {
                lbCounter.count = 0
            }
            onPressed: {
                lbReset.color = "#81D4FA"
            }
            onReleased: {
                lbReset.color = "#29B6F6"
            }
        }
    }

    Text {
        property int count: 0

        id: lbCounter
        anchors.centerIn: parent
        text: count
        font.pointSize: 50
    }

    Text {
        id: lbTap
        anchors {
            top: lbCounter.bottom
            topMargin: 10
            horizontalCenter: lbCounter.horizontalCenter
        }
        text: "Tap/Click"
        color: "#29B6F6"

        MouseArea {
            anchors.fill: parent
            onClicked: {
                lbCounter.count += 1
            }
            onPressed: {
                lbTap.color = "#81D4FA"
            }
            onReleased: {
                lbTap.color = "#29B6F6"
            }
        }
    }
}
