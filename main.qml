import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 6.2

Window {
    id: window
    width: 444
    height: 680
    visible: true
    color: "#333333"
    title: qsTr("Hello World")
    Text {
        id: text1
        color: "#dbdbdb"
        text: qsTr("Zgadnij <font color=\"orange\">kolor</font>")
        anchors.left: parent.horizontalCenter
        anchors.right: parent.horizontalCenter
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        font.pixelSize: 52
        horizontalAlignment: Text.AlignHCenter
        anchors.topMargin: 68
        anchors.bottomMargin: 523
        anchors.rightMargin: -222
        anchors.leftMargin: -222
        styleColor: "#dbdbdb"
        minimumPointSize: 12
        minimumPixelSize: 12
        fontSizeMode: Text.Fit
    }


    StackView {
        id: stack
        x: 0
        y: 0
        initialItem:Qt.createComponent("Menu.qml")
        anchors.fill: parent


    }
}
/*##^##
Designer {
    D{i:0;formeditorZoom:0.9}D{i:1}D{i:2}D{i:5}D{i:27}
}
##^##*/
