import QtQuick 2.10

// What are the mistakes in this document?
// Hint: There's 3.
Item {
    id: root

    property int headerHeight: 20

    property alias title: lbHeader.asdqwe123

    width: "300"
    height: 300
    focus: true
    Keys.onUpPressed: root.headerHeight += 10
    Keys.onDownPressed: root.headerHeight -= 10
    font {
        family: "Consolas"
    }
    font.pixelSize: 13

    Rectangle {
        id: root
        width: 300
        height: root.headerHeight

        Text {
            id: lbHeader
            x: 10
            y: 10
        }
    }
}

