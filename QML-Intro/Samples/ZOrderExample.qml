import QtQuick 2.10

Rectangle {
    id: root
    width: 200
    height: 200
    color: "#1976D2"

    Rectangle {
        x: 75
        y: 75
        width: 50
        height: 50
        color: "#FF6F00"
    }

    Rectangle {
        x: 85
        y: 85
        width: 50
        height: 50
        color: "#455A64"
    }

    Rectangle {
        z: -1
        x: 95
        y: 95
        width: 50
        height: 50
        color: "#AA00FF"
    }
}

