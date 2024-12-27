import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.3
import QtQuick.Controls.Material 2.15

Page {
    id: root
    signal buttonSing();
    signal buttonMain1();	

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

TextEdit {
    id: textEdit
    text: qsTr("Нужно погулять с собакой?")
    font.pixelSize: 21
    font.bold: true
    font.family: "Montserrat"
    anchors.horizontalCenter: parent.horizontalCenter
    anchors.top: parent.top
    anchors.topMargin: 150
    color: "white"	
}

	
    Image {
        id: mainlogo1
        width: 175
        height: 175
        anchors.top: textEdit.bottom
        anchors.margins: 15

        source: "images/mainlogo1.png"
        fillMode: Image.PreserveAspectFit
        anchors.horizontalCenter: parent.horizontalCenter

    }

    Button {
        id: sing_in
        y: 300
        anchors.top: mainlogo1.bottom
        anchors.margins: 15
        checkable: true
        highlighted: false
        font.family: "Montserrat"
        width: 200
        height: 40
        anchors.horizontalCenter: parent.horizontalCenter
        font.pixelSize: 18
        background: Rectangle {
            color: "#C79B9F"
            radius: 90
            implicitWidth: 100
            implicitHeight: 30
            border.color: "#00000000"
            border.width: 2
        }
        contentItem: Text {
            text: qsTr("Добро пожаловать!")
            font.family: "Montserrat"
            font.pixelSize: 16
            font.bold: true
            color: "white" // Установка белого цвета текста
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }			
        onClicked: {
            root.buttonSing()
        }

    }
	
}
