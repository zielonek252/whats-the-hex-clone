import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 6.2

Item {
    anchors.fill: parent
    id: item1
    ListModel{
        id:colors
            ListElement{
                colorCode:"#fff"
            }
            ListElement{
                colorCode:"#fff"
            }
            ListElement{
                colorCode:"#fff"
            }
            ListElement{
                colorCode:"#fff"
            }
            ListElement{
                colorCode:"#fff"
            }
            ListElement{
                colorCode:"#fff"
            }
            ListElement{
                colorCode:"#fff"
            }
            ListElement{
                colorCode:"#fff"
            }
        }

        Text {
            id: text2
            x: 165
            y: -37
            text: ""
            font.pixelSize: 24
            color: "#ffffff"
        }

        Component.onCompleted: {
            colors.clear();
            var colorsTab=[];
            var wylosowanyKolor=Math.floor((Math.random()*(9-1))+1)
            for(var i=0;i<9;i++){
                var randomColor=Math.floor(Math.random()*16777215).toString(16);
                colors.append({colorCode:"#"+randomColor});
                colorsTab[i]=randomColor;
            }
            kodKoloru.text="#"+colorsTab[wylosowanyKolor];
            console.log(wylosowanyKolor);
            kodKoloru.color="#fff"
            rectangle.color="#333"
            text3.color="#333"
        }

        Text {
            id: kodKoloru
            y: 137
            height: 41
            color: "#ffffff"
            anchors.left: parent.left
            anchors.right: parent.right
            font.pixelSize: 26
            horizontalAlignment: Text.AlignHCenter
            anchors.rightMargin: 222
            anchors.leftMargin: 198
            styleColor: "#fff"
        }

        GridView {
            id: gridView
            x: 55
            y: 2
            anchors.left: parent.horizontalCenter
            anchors.right: parent.horizontalCenter
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 190
            anchors.topMargin: 202
            anchors.rightMargin: -98
            anchors.leftMargin: -122
            delegate:
                Column {
                Rectangle {
                    width: 80
                    radius: 80
                    height: 80
                    color: colorCode
                    MouseArea{
                        anchors.fill: parent
                        onClicked:{
                            console.log(colorCode);
                            if(colorCode==kodKoloru.text){
                                stack.push("Win.qml")
                                console.log("wygrales");
                                alert("Wygrales!");
                                kodKoloru.color=kodKoloru.text;
                                rectangle.color=kodKoloru.text;
                                text3.text="Brawo, wygrałeś!"
                                text3.color="#fff"

                            }else{
                                colorCode="#333333"
                            }
                        }
                    }
                }

                Text {
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.bold: true
                }

            }
            model: colors
            cellWidth:70

        }

        Button {
            id: powrotDoMenu
            y: 787
            height: 39
            text: qsTr("Wyjdź do menu")
            anchors.left: parent.horizontalCenter
            anchors.right: parent.horizontalCenter
            anchors.bottom: parent.verticalCenter
            anchors.bottomMargin: -326
            onClicked: stack.pop("Menu.qml")
            background: Rectangle {
                color: "#ffa500"
                radius: powrotDoMenu.radius
            }
            palette.buttonText: "#000000"
            anchors.leftMargin: -122
            anchors.rightMargin: -98
        }
    }

/*##^##
Designer {
    D{i:0;autoSize:true;height:1000;width:640}D{i:1}D{i:10}D{i:11}D{i:13}D{i:14}D{i:19}
}
##^##*/
