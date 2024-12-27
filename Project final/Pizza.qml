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
        width: 120
        height: 120
        anchors.verticalCenterOffset: -230
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
        text: qsTr("Выберите догситтера")
        font.pixelSize: 20
        anchors.horizontalCenterOffset: 0
        anchors.topMargin: 18
        anchors.horizontalCenter: parent.horizontalCenter
	    color: "white"
        font.family: "Montserrat"
        font.bold: true	
		
    }
	
    Item{
        id: container
        width: 500
        height: 230
        anchors.centerIn: parent

        SwipeView {
            id: view
            currentIndex: 1
            anchors.fill: parent
            clip:true

            Page {
                background: Rectangle {
                    color: "#c79b9f"
                }
                    Image {
                        id: piz1
                        width: 150
                        height: 150
                        source: "images/piz1.png"
                        anchors.horizontalCenterOffset: 0
                        fillMode: Image.PreserveAspectFit
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter: parent.verticalCenter
                    }
                }

                Page {
                    background: Rectangle {
                        color: "#c79b9f"
                    }

                    Image {
                        id: piz2
                        width: 150
                        height: 150
                        source: "images/piz2.png"
                        anchors.horizontalCenterOffset: 0
                        fillMode: Image.PreserveAspectFit
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter: parent.verticalCenter
                    }
                }
                Page {
                    background: Rectangle {
                        color: "#c79b9f"
                    }
                    Image {
                        id: piz3
                        width: 150
                        height: 150
                        source: "images/piz3.png"
                        anchors.horizontalCenterOffset: 0
                        fillMode: Image.PreserveAspectFit
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter: parent.verticalCenter
                    }
                }
                Page {
                    background: Rectangle {
                        color: "#c79b9f"
                    }
                    Image {
                    id: piz4
                    width: 150
                    height: 150
                    source: "images/piz4.png"
                    anchors.horizontalCenterOffset: 0
                    fillMode: Image.PreserveAspectFit
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                }
            }
                Page {
                    background: Rectangle {
                        color: "#c79b9f"
                    }
                    Image {
                    id: piz5
                    width: 150
                    height: 150
                    source: "images/piz5.png"
                    anchors.horizontalCenterOffset: 0
                    fillMode: Image.PreserveAspectFit
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                }
            }
                Page {
                    background: Rectangle {
                        color: "#c79b9f"
                    }
                    Image {
                    id: piz6
                    width: 150
                    height: 150
                    source: "images/piz6.png"
                    anchors.horizontalCenterOffset: 0
                    fillMode: Image.PreserveAspectFit
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                }
            }
        }


        PageIndicator {
            id: indicator
            count: view.count
            currentIndex: view.currentIndex
            anchors.bottom: view.bottom
            anchors.horizontalCenter: parent.horizontalCenter
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
        id: pizza2
        y: 470
        text: "Заказать прогулку"
        anchors.top: mainlogo1.bottom
        anchors.margins: 380
        checkable: true
        highlighted: false
        font.family: "Montserat"
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
        onClicked: {
            root.buttonCheese()
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
