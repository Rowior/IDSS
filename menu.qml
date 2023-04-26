import QtQuick
import QtQuick.Window
import QtQuick.Controls 6.3
import QtQuick.Layouts 6.3

Window {
    id: menuWindow
    width: 640
    height: 480
    //visible: false
    visible: true
    color: "#4963be"
    title: qsTr("Menu")

    property string userEmail: ""
    //property alias uslog: login

    TextInput {
        id: textInput
        x: 512
        y: 5
        width: 80
        height: 20
        color: "#93a9f4"
        text: qsTr("Здравствуйте") + userEmail + "!"
        font.pixelSize: 12
    }

    /*Menu {
        id: menu
        login: email
    }*/

    Image {
        id: image
        x: 585
        y: 4
        width: 55
        height: 23
        source: "file:///Users/dimazuravlev/myidss/images/exit.png"
        //source: "images/exit.png"
        //source: "/Users/dimazuravlev/myidss/images/exit.png"
        fillMode: Image.PreserveAspectFit
        /*onClicked: {
                    menuWindow.close()
                    menuWindow.destroy()
                } */
        //onClosing: {
         //       menuWindow.visible = false;
          //      menuWindow.parent.visible = true;
         //   }
    }

    Image {
        id: image1
        x: 431
        y: 5
        width: 55
        height: 23
        source: "file:///Users/dimazuravlev/myidss/images/settings.png"
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: image2
        x: 209
        y: 107
        width: 70
        height: 39
        source: "file:///Users/dimazuravlev/myidss/images/project.png"
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: image3
        x: 209
        y: 164
        width: 70
        height: 39
        source: "file:///Users/dimazuravlev/myidss/images/message.png"
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: image4
        x: 209
        y: 229
        width: 70
        height: 39
        source: "file:///Users/dimazuravlev/myidss/images/company.png"
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: image5
        x: 209
        y: 293
        width: 70
        height: 39
        source: "file:///Users/dimazuravlev/myidss/images/documents.png"
        fillMode: Image.PreserveAspectFit
    }

    Text {
        id: text3
        x: 273
        y: 293
        width: 143
        height: 27
        color: "#93a9f4"
        text: qsTr("Документы")
        font.pixelSize: 14
    }

    Text {
        id: text4
        x: 273
        y: 113
        width: 143
        height: 27
        color: "#93a9f4"
        text: qsTr("Проекты")
        font.pixelSize: 14
    }

    Text {
        id: text5
        x: 273
        y: 170
        width: 143
        height: 27
        color: "#93a9f4"
        text: qsTr("Сообщения")
        font.pixelSize: 14
    }

    Text {
        id: text6
        x: 273
        y: 229
        width: 143
        height: 27
        color: "#93a9f4"
        text: qsTr("Компания")
        font.pixelSize: 14
    }
}
