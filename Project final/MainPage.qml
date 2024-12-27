import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.2

Page {
    id: root
    visible: true
    width: 360
    height: 640
    title: qsTr("WalCare app")

    signal buttonPep();
    signal buttonMush();
    signal buttonCheese();
    signal buttonPizz();
    signal buttonPereder();	

    signal buttonMain();
    signal buttonMenu();
    signal buttonMap();
    signal buttonMap2();
	signal buttonMain1();


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
        width: 150
        height: 150
        anchors.verticalCenterOffset: -220
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
        anchors.margins: 10
        text: qsTr("Наши услуги")
        font.pixelSize: 25
        anchors.horizontalCenterOffset: 0
        anchors.topMargin: 10
        anchors.horizontalCenter: parent.horizontalCenter
		color: "white"
        font.family: "Montserrat"
        font.bold: true		
    }

    Row {
        id: row1
        width: 280
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: textEdit.bottom
        spacing: 40
        anchors.margins: 30
        anchors.topMargin: 20
        Button  {
            id: pizzaBtn
            width: 120
            height: 120
            background: Rectangle {
                color: "#C79B9F"
                radius: 10
                implicitWidth: 100
                implicitHeight: 30
                border.width: 0
            }
            Image {
                id: pizza
                y: 8
                width: 90
                height: 90
                source: "images/walk1.png"
                anchors.horizontalCenterOffset: 1
                fillMode: Image.PreserveAspectFit
                horizontalAlignment: Text.AlignHCenter
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Text {
                text: "Прогулка"
                anchors.bottom: pizza.bottom
                font.pixelSize: 12
                anchors.bottomMargin: -15
                horizontalAlignment: Text.AlignHCenter
                anchors.horizontalCenter: parent.horizontalCenter
		        color: "white"
                font.family: "Montserrat"
                font.bold: true					
            }
            onClicked: {
                root.buttonPizz()
            }
        }
        Button  {
            id: perederBtn
            width: 120
            height: 120
            background: Rectangle {
                color: "#C79B9F"
                radius: 10
                implicitWidth: 100
                implicitHeight: 30
                border.width: 0
            }
            Image {
                id: pereder
                y: 8
                width: 90
                height: 90
                source: "images/care1.png"
                anchors.horizontalCenterOffset: 0
                fillMode: Image.PreserveAspectFit
                horizontalAlignment: Text.AlignHCenter
                anchors.horizontalCenter: parent.horizontalCenter				

            }
            Text {
                text: "Передержка"
                anchors.bottom: pereder.bottom
                font.pixelSize: 12
                anchors.bottomMargin: -15
                horizontalAlignment: Text.AlignHCenter
                anchors.horizontalCenter: parent.horizontalCenter
		        color: "white"
                font.family: "Montserrat"
                font.bold: true						
            }
            onClicked: {
                root.buttonPereder()
            }			
        }
    }

    TextField{
        Layout.alignment: Qt.AlignCenter
        Layout.fillWidth: true
        id: best
        anchors.top: row1.bottom
        anchors.margins: 40
        width: 260
        height: 150
        font.pixelSize: 18
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
        Text {
            x: 30
            y: 8
            text: "Лучшие догситтеры"
            font.pixelSize: 18
            anchors.bottomMargin: 10
		    color: "white"
            font.family: "Montserrat"
            font.bold: true				
        }

        Row {
            id: row2
            y: 45
            width: 244
            height: 70
            anchors.horizontalCenter: parent.horizontalCenter
            spacing: 16
            anchors.margins: 40
            anchors.horizontalCenterOffset: 0
            anchors.topMargin: 40
            Button  {
                id: pizza1
                width: 70
                height: 70

                onClicked: {
                    root.buttonPep()
                }
                background: Rectangle {
                    color: "#C79B9F"
                    radius: 90
                    implicitWidth: 100
                    implicitHeight: 30
                    border.width: 0
                }
                Image {
                    id: piz1
                    y: 5
                    width: 60
                    height: 60
                    source: "images/piz5.png"
                    anchors.horizontalCenterOffset: 0
                    fillMode: Image.PreserveAspectFit
                    horizontalAlignment: Text.AlignHCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                }


            }
            Button  {
                id: pizza2
                width: 70
                height: 70
                onClicked: {
                    root.buttonCheese()
                }


                background: Rectangle {
                    color: "#C79B9F"
                    radius: 90
                    implicitWidth: 100
                    implicitHeight: 30
                    border.width: 0
                }
                Image {
                    id: piz2
                    y: 5
                    width: 60
                    height: 60
                    source: "images/piz2.png"
                    anchors.horizontalCenterOffset: 0
                    fillMode: Image.PreserveAspectFit
                    horizontalAlignment: Text.AlignHCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                }

            }
            Button  {
                id: pizza3d
                width: 70
                height: 70
                onClicked: {
                    root.buttonMush()
                }


                background: Rectangle {
                    color: "#C79B9F"
                    radius: 90
                    implicitWidth: 100
                    implicitHeight: 30
                    border.width: 0
                }
                Image {
                    id: piz3
                    y: 5
                    width: 60
                    height: 60
                    source: "images/piz6.png"
                    anchors.horizontalCenterOffset: 0
                    fillMode: Image.PreserveAspectFit
                    horizontalAlignment: Text.AlignHCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                }

            }
        }
    }
    Row{
        spacing: 38
        anchors.horizontalCenter: parent.horizontalCenter
        id: best2
        anchors.horizontalCenterOffset: 0
        anchors.topMargin: -30
        Text {
            x: 65
            y: 520
            text: "Алина Д."
	        color: "white"
            font.family: "Montserrat"				

        }
        Text {
            x: 159
            y: 520
            text: "Иван М."
            font.pixelSize: 12
            anchors.bottomMargin: 10
	        color: "white"
            font.family: "Montserrat"				
        }
        Text {
            x: 249
            y: 520
            text: "Пётр К."
            font.pixelSize: 12
            anchors.bottomMargin: 10
	        color: "white"
            font.family: "Montserrat"			

        }
    }


    Button {
        id: map
        text: "Догситтеры поблизости"
		font.bold: true	
        anchors.top: best.bottom
        anchors.margins: 20
        checkable: true
        highlighted: false
        font.family: "Montserrat"
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
            text: qsTr("Догситтеры поблизости")
            font.family: "Montserrat"
		    font.bold: true				
            font.pixelSize: 12
            color: "white" // Установка белого цвета текста
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter			
        }
        onClicked: {
            root.buttonMap2()
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
	
Rectangle {
    id: sideMenu2
    width: 5
    y: 65
	x: 250
    color: "#F9E8F2"
    radius: 90
    visible: false

    ColumnLayout {
        anchors.fill: parent
        Button {
            text: "Выход"
            onClicked: {
                root.Menu()
            }
        }
    }
}

Button {
    id: toggleMenuButton
    x: 290
    y: 14
    width: 49
    height: 49
    text: sideMenu2.visible ? "🐶" : "🐶" 
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
        sideMenu2.visible = !sideMenu2.visible
}

    }	
	





}
