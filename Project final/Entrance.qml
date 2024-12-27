import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Page {
    id: root
    signal buttonSing_in();
    signal buttonSing_up();

    visible: true
    width: 360
    height: 640
    title: qsTr("WalCare app")

    background:
        Rectangle {
            id: background1
            color: "#6D496A"
            anchors.fill: parent
        }

    Image {
        id: mainlogo1
        width: 100
        height: 100
        anchors.verticalCenterOffset: -103
        anchors.horizontalCenterOffset: 0
        source: "images/mainlogo1.png"
        fillMode: Image.PreserveAspectFit
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        horizontalAlignment: Image.AlignLeft
        verticalAlignment: Image.AlignBottom
        anchors.bottomMargin: 50
    }

    Button {
        id: sing_in
        y: 300
        anchors.top: mainlogo1.bottom
        anchors.margins: 20
        checkable: true
        highlighted: false
        width: 160
        height: 40
        anchors.horizontalCenter: parent.horizontalCenter
        font.pixelSize: 15
        background: Rectangle {
            color: "#C79B9F"
            radius: 90
            implicitWidth: 100
            implicitHeight: 30
            border.color: "#00000000"
            border.width: 2
        }
        contentItem: Text {
            text: qsTr("Вход")
            font.family: "Montserrat"
            font.pixelSize: 16
            font.bold: true
            color: "white" // Установка белого цвета текста
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }			
        onClicked: {
            root.buttonSing_in()
        }

    }

    Button {
        id: sing_up
        y: 356
        anchors.top: sing_in.bottom
        anchors.margins: 10
        anchors.horizontalCenterOffset: 0
        width: 160
        height: 40
        anchors.horizontalCenter: parent.horizontalCenter
        font.pixelSize: 15
        background: Rectangle {
            color: "#C79B9F"
            radius: 90
            implicitWidth: 100
            implicitHeight: 30
            border.color: "#00000000"
            border.width: 2
        }
        contentItem: Text {
            text: qsTr("Регистрация")
            font.family: "Montserrat"
            font.pixelSize: 16
            font.bold: true
            color: "white" // Установка белого цвета текста
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter			
        }
        onClicked: {
            root.buttonSing_up()
        }
    }


    
    

}
