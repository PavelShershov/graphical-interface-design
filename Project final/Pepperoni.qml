import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.2

Page {
    id: root
    visible: true
    width: 360
    height: 640
    title: qsTr("Dog")

    signal buttonMain();
    signal buttonMenu();
    signal buttonMap();


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
        width: 70
        height: 70
        anchors.verticalCenterOffset: -258
        source: "images/mainlogo1.png"
        anchors.horizontalCenterOffset: 0
        fillMode: Image.PreserveAspectFit
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
    }

    TextEdit {
        id: textEdit
        x: 123
        y: 152
        anchors.top: mainlogo1.bottom
        anchors.margins: 40
        text: qsTr("Алина Дюпина")
        font.pixelSize: 25
        anchors.horizontalCenterOffset: 0
        anchors.topMargin: 36
        anchors.horizontalCenter: parent.horizontalCenter
	    color: "white"
        font.family: "Montserrat"
        font.bold: true			
    }

    Image {
        id: piz1
        width: 150
        height: 150
        anchors.top: textEdit.bottom
        anchors.margins: 20
        source: "images/piz5.png"
        anchors.horizontalCenterOffset: 0
        fillMode: Image.PreserveAspectFit
        horizontalAlignment: Text.AlignHCenter
        anchors.horizontalCenter: parent.horizontalCenter
    }

TextEdit {
    id: text2
    anchors.top: piz1.bottom
    anchors.topMargin: 15
    text: qsTr("О себе: Всегда рада помочь вам с вашими домашними любимцами. Обращайтесь!")
    font.pixelSize: 12
    anchors.horizontalCenter: parent.horizontalCenter	
    wrapMode: TextEdit.Wrap
    readOnly: true
    width: 250
	color: "white"
    font.family: "Montserrat"
    font.bold: true
	
}


    TextEdit {
        id: text3
        y: 431
        text: qsTr("Район: Рабочее")
        font.pixelSize: 14
        anchors.horizontalCenterOffset: -1
        anchors.horizontalCenter: parent.horizontalCenter
		color: "white"
        font.family: "Montserrat"
    }
    TextEdit {
        id: text4
        anchors.top: text3.bottom
        anchors.margins: 5
        text: qsTr("Прогулки с 15:00 до 21:00")
        font.pixelSize: 14
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter
		color: "white"
        font.family: "Montserrat"		
    }


    Row {
        id: row1
        width: 280
        height: 29
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: text4.bottom
        anchors.margins: 20
        spacing: 10


        Button  {
            id: pizzaBtn1
            width: 85
            height: 25
            text: "30 мин."
            font.pixelSize: 12
            background: Rectangle {
                color: "#C79B9F"
                radius: 90
                border.width: 0
            }
            onClicked: {
                piz1.width = 175
                piz1.height = 175
                text2.text = qsTr("Стоимость прогулки: 300₽")
                cost.text = qsTr("Заказать прогулку")

                pizzaBtn1.background.border.color = "#806161"
                pizzaBtn1.background.border.width = 1
                pizzaBtn1.background.color = "#bd9497"

                pizzaBtn2.background.border.width = 0
                pizzaBtn2.background.color = "#C79B9F"
                pizzaBtn3.background.border.width = 0
                pizzaBtn3.background.color = "#C79B9F"

            }
        }
        Button  {
            id: pizzaBtn2
            width: 85
            height: 25
            text: "1.5 ч."
            font.pixelSize: 12
            background: Rectangle {
                color: "#bd9497"
                radius: 90
                border.color: "#806161"
                border.width: 1
            }
            onClicked: {
                piz1.width = 175
                piz1.height = 175
                text2.text = qsTr("Стоимость прогулки: 700₽")
                cost.text = qsTr("Заказать прогулку")

                pizzaBtn2.background.border.color = "#806161"
                pizzaBtn2.background.border.width = 1
                pizzaBtn2.background.color = "#bd9497"

                pizzaBtn1.background.border.width = 0
                pizzaBtn1.background.color = "#C79B9F"
                pizzaBtn3.background.border.width = 0
                pizzaBtn3.background.color = "#C79B9F"
            }
        }
        Button  {
            id: pizzaBtn3
            width: 85
            height: 25
            text: "3 ч."
            font.pixelSize: 12
            background: Rectangle {
                color: "#C79B9F"
                radius: 90
                border.width: 0
            }
            onClicked: {
                piz1.width = 175
                piz1.height = 175
                text2.text = qsTr("Стоимость прогулки: 1500₽")
                cost.text = qsTr("Заказать прогулку")

                pizzaBtn3.background.border.color = "#806161"
                pizzaBtn3.background.border.width = 1
                pizzaBtn3.background.color = "#bd9497"

                pizzaBtn1.background.border.width = 0
                pizzaBtn1.background.color = "#C79B9F"
                pizzaBtn2.background.border.width = 0
                pizzaBtn2.background.color = "#C79B9F"
            }
        }
    }



    Button {
        id: cost
        y: 225
        text: "Заказать прогулку"
        anchors.top: row1.bottom
        anchors.margins: 50
        checkable: true
        highlighted: false
        font.family: "Tahoma"
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
        onClicked: {
//            root.buttonSing_in()
        }

    }

    Rectangle {
        id: sideMenu
        width: 150
        y: 63
        color: "#c79b9f"
        visible: false

        ColumnLayout {
            anchors.fill: parent
            Button {
                text: "Главная"
                onClicked: {
                    root.buttonMain()
                }
            }
            Button {
                text: "Карта"
                onClicked: {
                  root.buttonMap()
                }
            }
            Button {
                text: "Выгул"
                onClicked: {
                    root.buttonMenu()
                }
            }
        }
    }


    Button {
        id: button4
        x: 18
        y: 14
        width: 49
        height: 49
        Image {
            id: menu1
            y: 17
            width: 15
            height: 15
            source: "images/menu1.png"
            anchors.horizontalCenterOffset: 0
            fillMode: Image.PreserveAspectFit
            horizontalAlignment: Text.AlignHCenter
            anchors.horizontalCenter: parent.horizontalCenter
        }
        anchors.top: mainlogo1.top
        font.pixelSize: 20
        anchors.topMargin: -17
        background: Rectangle {
            color: "#c79b9f"
            radius: 90
            border.width: 0
            implicitHeight: 30
            implicitWidth: 100
        }
        onClicked: {
            sideMenu.visible = true
            button3.visible = true
        }
    }

    Button {
        id: button3
        x: 18
        y: 14
        width: 49
        height: 49
        visible: false
        Image {
            id: menu2
            y: 17
            width: 15
            height: 15
            source: "images/menu2.png"
            anchors.horizontalCenterOffset: 0
            fillMode: Image.PreserveAspectFit
            horizontalAlignment: Text.AlignHCenter
            anchors.horizontalCenter: parent.horizontalCenter
        }
        anchors.top: mainlogo1.top
        font.pixelSize: 20
        anchors.topMargin: -17
        background: Rectangle {
            color: "#c79b9f"
            radius: 90
            border.width: 0
            implicitHeight: 30
            implicitWidth: 100
        }
        onClicked: {
            button3.visible = false
            sideMenu.visible = false
        }
    }


    Button {
        id: button5
        x: 290
        y: 14
        width: 49
        height: 49
        text: qsTr("🐶")
        anchors.top: mainlogo1.top
        font.pixelSize: 20
        anchors.topMargin: -17
        background: Rectangle {
            color: "#c79b9f"
            radius: 90
            border.width: 0
            implicitHeight: 30
            implicitWidth: 100
        }
    }





}
