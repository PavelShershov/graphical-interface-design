import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.2

Page {
    id: root
    signal buttonBack();
    signal buttonContin();


    visible: true
    width: 360
    height: 640
    title: qsTr("Dogs")

    background:
        Rectangle {
            id: gradientBackground
            color: "#6D496A"
            anchors.fill: parent
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
        width: 120
        height: 120
        anchors.verticalCenterOffset: -210
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
        text: qsTr("Регистрация")
        font.pixelSize: 30
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
        anchors.margins: 40
        width: 158
        height: 31
        placeholderText: "Имя"
        font.pixelSize: 16
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
        id: userField
        anchors.top: usernameField.bottom
        anchors.margins: 10
        width: 158
        height: 31
        placeholderText: "Фамилия"
        font.pixelSize: 16
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
        anchors.top: userField.bottom
        anchors.margins: 10
        width: 158
        height: 31
        placeholderText: "Пароль"
        font.pixelSize: 16
		color: "white"
		font.family: "Montserrat"		
        echoMode: TextInput.Password
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
    Button{
        id: reg
        width: 170
        height: 40
        anchors.top: passwordField.bottom
        anchors.margins: 30
        anchors.horizontalCenter: parent.horizontalCenter
        background: Rectangle {
            color: parent.down ? "#b58388" : "#C79B9F"
            border.color: "white"
            border.width:  parent.down ? 1 : 0
            radius: 50
        }			
        contentItem: Text {
            text: qsTr("Зарегистрироваться")
            font.family: "Montserrat"
            font.pixelSize: 12
            font.bold: true
            color: "white" // Установка белого цвета текста
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter				
        }
        onClicked: {
            root.buttonContin()
        }

    }
    Button{
        width: 170
        height: 40
        hoverEnabled: false
        anchors.top: reg.bottom
        anchors.margins: 10
        anchors.horizontalCenter: parent.horizontalCenter
        onPressed: {usernameField.text = "";passwordField.text = "";userField.text = ""}
        background: Rectangle {
            color: parent.down ? "#b58388" : "#bf9296"
            border.color: "#26282a"
            border.width:  parent.down ? 1 : 0
            radius: 50
        }
        contentItem: Text {
            text: qsTr("Очистить")
            font.family: "Montserrat"
            font.pixelSize: 10
            font.bold: true
            color: "white" // Установка белого цвета текста
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter	

        }
    }








    StackView {
        id: stack_view
        anchors.fill: parent
        anchors.rightMargin: 0
        anchors.bottomMargin: -37
        anchors.leftMargin: 0
        anchors.topMargin: 37
        initialItem: entrance
    }

//    Button {
//        id: contin
//        anchors.top: it.bottom
//        anchors.margins:  20
//        width: 130
//        height: 130
//        text: qsTr("Продолжить")
//        font.pixelSize: 18
//        anchors.horizontalCenter: parent.horizontalCenter
//        background: Rectangle {
//            color: "#C79B9F"
//            radius: 90
//            implicitWidth: 100
//            implicitHeight: 30
//            border.color: "#00000000"
//            border.width: 2
//        }
//        onClicked: {
//            root.buttonContin()
//        }

//    }
}
