import QtQuick 2.10

Item {
    width: 500
    height: 500

    Text {
        id: lb1
        anchors.verticalCenter: rect1.verticalCenter
        text: "Wrong Anchoring"
    }

    Rectangle {
        id: rect1
        width: 50
        height: 50
        anchors {
            top: parent.top
            left: lb1.right
            leftMargin: Math.abs(lb1.contentWidth - lb2.contentWidth) + 10
        }
        color: "red"

        MouseArea {
            anchors.fill: parent
            onClicked: {
                parent.reanchorToRight()
            }
        }

        function reanchorToRight() {
            // First sets the right anchor, which expands the size of rect1
            // and then disables the left.
            anchors.right = parent.right
            anchors.left = undefined
        }
    }

    Text {
        id: lb2
        anchors {
            left: parent.left
            verticalCenter: rect2.verticalCenter
        }
        text: "Correct Anchoring"
    }

    Rectangle {
        id: rect2
        width: 50
        height: 50
        anchors {
            top: rect1.bottom
            left: lb2.right
            leftMargin: 10
        }
        color: "green"

        MouseArea {
            anchors.fill: parent
            onClicked: {
                parent.reanchorToRight()
            }
        }

        function reanchorToRight() {
            // This one correctly unsets the left margin, and then sets the
            // right margin. This way we don't encounter a unexpected size.
            anchors.left = undefined
            anchors.right = parent.right
        }
    }
}

