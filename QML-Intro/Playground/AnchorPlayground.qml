import QtQuick 2.10

Rectangle {
    id: root
    width: 640
    height: 480
    color: "#9E9E9E"

    Rectangle {
        id: rect1
        width: 100
        height: 100
        anchors.centerIn: parent
        color: "red"
    }

    Rectangle {
        id: rect2
        width: 100
        height: 100
        anchors {
            top: rect1.bottom
            left: rect1.right
        }
        color: "green"
    }
}
