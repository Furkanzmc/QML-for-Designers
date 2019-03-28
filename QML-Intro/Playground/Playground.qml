import QtQuick 2.10

Item {
    id: root

    property font font
    property int radius: rect.height / 2

    Rectangle {
        id: rect
        width: root.width * 0.2
        height: root.height * 0.2
        anchors.centerIn: parent

        Rectangle {
            width: 50
            height: 50
            anchors.centerIn: parent
            color: "red"
            radius: root.radius
        }
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            root.generic = 23
            root.generic = root.title
            root.generic = lb
        }
    }
}
