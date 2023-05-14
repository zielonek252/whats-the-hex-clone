import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 6.2

Item {
    id: item1
    Button {
        id: buttonGrajOdNowa
        y: 335
        height: 58
        text: qsTr("Graj od nowa")
        anchors.left: parent.horizontalCenter
        anchors.right: parent.horizontalCenter
        anchors.rightMargin: -81
        anchors.leftMargin: -81
        palette{
            buttonText:"black"
        }
        background: Rectangle {
            color: "orange"
        }
        onClicked: stack.push("Gra.qml")
    }

    Text {
        id: text1
        y: 220
        height: 88
        color: "#ffffff"
        text: qsTr("Brawo, wygrałeś!")
        anchors.left: parent.horizontalCenter
        anchors.right: parent.horizontalCenter
        font.pixelSize: 26
        anchors.rightMargin: -108
        anchors.leftMargin: -108
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:1}D{i:3}
}
##^##*/
