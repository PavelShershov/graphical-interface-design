import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.2

Page {
    id: root
    signal buttonBack();
    signal buttonMainPage();
    signal buttonPass();

    visible: true
    width: 360
    height: 640
    title: qsTr("WalCare app")

    background:
        Rectangle {
            id: gradientBackground
            color: "#6D496A"
            anchors.fill: parent
            anchors.rightMargin: 0
            anchors.bottomMargin: 0
            anchors.leftMargin: 0
            anchors.topMargin: 0
        }

    Button {
        id: button3
        x: 20
        y: 36
        width: 85
        height: 30
        font.pixelSize: 12
        icon.color: "#ffffff"
        anchors.topMargin: -17
        anchors.top: mainlogo1.top
        background: Rectangle {
            color: "#C79B9F"
            radius: 10
            implicitWidth: 100
            implicitHeight: 30
            border.width: 0
        }
        contentItem: Text {
            text: qsTr("вернуться")
            font.family: "Montserrat"
            font.pixelSize: 12
            color: "white" // Установка белого цвета текста
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter				
        }
        onClicked: {
            root.buttonBack()
        }
    }
    Image {
        id: mainlogo1
        width: 200
        height: 200
        anchors.verticalCenterOffset: -190
	
        anchors.horizontalCenterOffset: 1
        source: "images/mainlogo1.png"
        fillMode: Image.PreserveAspectFit
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        horizontalAlignment: Image.AlignLeft
        verticalAlignment: Image.AlignBottom
        anchors.bottomMargin: 50
}		
    TextEdit {
        id: textEdit
        x: 123
        y: 152
        anchors.top: mainlogo1.bottom
        anchors.margins: 40
        text: qsTr("Вход")
        font.pixelSize: 30
        anchors.horizontalCenterOffset: 0
        anchors.topMargin: 8
		anchors.horizontalCenter: parent.horizontalCenter
		color: "white"
        font.family: "Montserrat"
        font.bold: true		

    }
    TextField{
        Layout.alignment: Qt.AlignCenter
        Layout.fillWidth: true
        id: usernameField
        anchors.top: textEdit.bottom
        anchors.margins: 20
        width: 158
        height: 31
        placeholderText: "Логин"
        font.pixelSize: 15
		color: "white"
		font.family: "Montserrat"		
        horizontalAlignment: Text.AlignHCenter
        anchors.horizontalCenter: parent.horizontalCenter
        background: Rectangle {
            color: "#00000000"
            radius: 15.5
            implicitWidth: 100
            implicitHeight: 30
            border.color: "white"
            border.width: 2
        }
    }
    TextField{
        Layout.alignment: Qt.AlignCenter
        Layout.fillWidth: true
        id: passwordField
        anchors.top: usernameField.bottom
        anchors.margins: 10
        width: 158
        height: 31
        placeholderText: "Пароль"
        font.pixelSize: 15
		color: "white"
		font.family: "Montserrat"
        horizontalAlignment: Text.AlignHCenter
        anchors.horizontalCenter: parent.horizontalCenter
        background: Rectangle {
            color: "#00000000"
            radius: 15.5
            implicitWidth: 100
            implicitHeight: 30
            border.color: "white"
            border.width: 2			
        }
    }
    Button {
        id: button1
        anchors.top: passwordField.bottom
        anchors.margins: 5
        width: 116
        height: 25
        font.pixelSize: 12
        anchors.horizontalCenterOffset: 21
        anchors.topMargin: 6
        display: AbstractButton.TextBesideIcon
        autoRepeatDelay: 236
        autoRepeat: false
        checkable: true
        anchors.horizontalCenter: parent.horizontalCenter
        background: Rectangle {
            color: "#00000000"

            border.width: 0
        }
        contentItem: Text {
            text: qsTr("Забыли пароль?")
            font.family: "Montserrat"
            font.pixelSize: 12
            font.bold: true
            color: "white" // Установка белого цвета текста
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter				
        }
        onClicked: {
            root.buttonPass()
        }
    }

    Button {
        id: button
        anchors.top: button1.bottom
        anchors.margins: 35
        width: 158
        height: 50
        font.pixelSize: 18
        anchors.horizontalCenter: parent.horizontalCenter
        background: Rectangle {
            color: "#C79B9F"
            radius: 90
            implicitWidth: 100
            implicitHeight: 30
            border.color: "#00000000"
            border.width: 2
            focus: true
        }
        contentItem: Text {
            text: qsTr("Продолжить")
            font.family: "Montserrat"
            font.pixelSize: 16
            font.bold: true
            color: "white" // Установка белого цвета текста
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter				
        }
        onClicked: {
            root.buttonMainPage()
        }
    }

}
