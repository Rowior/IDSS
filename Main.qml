import QtQuick
import QtQuick.Window
import QtQuick.Controls 6.3
import QtQuick.Layouts 6.3

Window {
    id: mainWindow
    width: 640
    height: 480
    visible: true
    color: "#4963be"
    title: qsTr("Auth")

    property string email: ""

    Button {
        id: button
        x: 191
        y: 262
        width: 118
        height: 34
        text: qsTr("Войти")
        onClicked: {
                var component = Qt.createComponent("menu.qml");
                if (component.status === Component.Ready) {
                    var menuWindow = component.createObject(mainWindow, {"userEmail": email});
                    if (menuWindow) {
                        menuWindow.show();
                        mainWindow.visible = false;
                    } else {
                        console.error("Ошибка создания menuWindow:", component.errorString());
                    }
                } else {
                    console.error("Ошибка создания компонента menu.qml:", component.errorString());
                }
            }
        /*onClicked: {
                    var component = Qt.createComponent("menu.qml");
                    var menuWindow = component.createObject(null);
                    //var menuWindow = component.createObject(mainWindow);
                    menuWindow.show();
                    menuWindow.login = email;
                    mainWindow.visible = false;
                }*/
    }

    TextField {
        id: textField
        x: 238
        y: 167
        width: 143
        height: 22
        placeholderText: qsTr("Эл. почта")
        onTextChanged: {
               email = text
           }
    }

    TextField {
        id: textField1
        x: 238
        y: 206
        width: 143
        height: 22
        placeholderText: qsTr("Пароль")
    }

    CheckBox {
        id: checkBox
        x: 238
        y: 234
        width: 124
        height: 28
        text: qsTr("Запомнить меня")
    }

    Button {
        id: button1
        x: 315
        y: 262
        width: 118
        height: 34
        text: qsTr("Забыли пароль")
    }

    TextInput {
        id: textInput
        x: 343
        y: 302
        width: 80
        height: 20
        color: "#93a9f4"
        text: qsTr("Еще не с нами? Зарегистрироваться")
        font.pixelSize: 12
        font.underline: true
    }
}
