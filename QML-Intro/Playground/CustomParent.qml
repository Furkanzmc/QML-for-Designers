import QtQuick 2.10

Item {
    id: root

    default property alias defaultParent: container.data

    Rectangle {
        id: container
        x: 100
        y: 0
        width: parent.width - x
        height: parent.height
        color: "red"
    }
}

