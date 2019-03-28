import QtQuick 2.10

Item {
    width: 640
    height: 480

    CustomParent {
        width: parent.width
        height: parent.height

        Rectangle {
            width: 50
            height: 50
            color: "yellow"
        }
    }
}

