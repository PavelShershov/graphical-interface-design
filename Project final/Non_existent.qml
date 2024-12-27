import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.2

Page {
    id: root

    signal buttonBack_pop();

    visible: true
    width: 360
    height: 640
    title: qsTr("Dogs")

    signal buttonPep();


    Rectangle {
        id: gradientBackground
        color: "#6D496A"
        anchors.fill: parent
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
    }

    Image {
        id: mainlogo1
        y: 40
        width: 100
        height: 100
        anchors.verticalCenterOffset: -258
        source: "images/mainlogo1.png"
        anchors.horizontalCenterOffset: 0
        fillMode: Image.PreserveAspectFit
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
    }

    TextEdit {
        id: textEdit
        anchors.top: mainlogo1.bottom
        anchors.margins: 40
        text: qsTr("Для восстановления учётной записи, обратитесь на почту walcer.help@mail.ru")
        font.pixelSize: 14
        anchors.horizontalCenterOffset: 0
        anchors.topMargin: 36
        anchors.horizontalCenter: parent.horizontalCenter
		wrapMode: TextEdit.Wrap
		readOnly: true
		width: 310
		color: "white"
        font.family: "Montserrat"	
		
		
    }

    Button {
        id: cost
        anchors.top: textEdit.bottom
        anchors.margins: 400
        checkable: true
        highlighted: false
        width: 260
        height: 40
        anchors.horizontalCenter: parent.horizontalCenter
        font.pixelSize: 15
        anchors.horizontalCenterOffset: 0
        background: Rectangle {
            color: "#C79B9F"
            radius: 90
            implicitWidth: 100
            implicitHeight: 30
            border.color: "#00000000"
            border.width: 2
        }
        contentItem: Text {
            text: qsTr("Назад")
            font.family: "Montserrat"
            font.pixelSize: 16
            font.bold: true
            color: "white" // Установка белого цвета текста
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter		
        }
        onClicked: {
            root.buttonBack_pop()
        }

    }




}
