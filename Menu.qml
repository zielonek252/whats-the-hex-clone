import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 6.2

Item {
    id: item1
    Button {
        id: buttonGraj
        y: 322
        width: 161
        height: 58
        text: qsTr("Graj")
        anchors.horizontalCenter: parent.horizontalCenter
        palette{
            buttonText:"black"
        }
        background: Rectangle {
            color: "orange"
        }
        onClicked: stack.push("Gra.qml")
    }
    Text {
        id: text2
        y: 414
        width: 90
        height: 34
        color: "#ffffff"
        text: "testestes"
        font.pixelSize: 12
        horizontalAlignment: Text.AlignHCenter
        font.bold: true
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter
    }
    Component.onCompleted: {
        var xhr = new XMLHttpRequest;
        xhr.open("GET", "https://up.kuba-orlik.name/informatyka-stosowana-3/programowanie-aplikacji-mobilnych/wersja.txt");
        xhr.onreadystatechange = function() {
            if (xhr.readyState == XMLHttpRequest.DONE) {
                var response = xhr.responseText;
                text2.text=xhr.responseText;
            }
        };
        xhr.send();
    }
    }

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:1.66;height:480;width:640}D{i:1}D{i:3}
}
##^##*/
