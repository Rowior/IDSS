import QtQuick
import QtQuick.Window
import QtQuick.Controls 6.3
import QtQuick.Layouts 6.3

Window {
    width: 640
    height: 480
    visible: true
    color: "#61d8a8"
    title: qsTr("Auth")

    Button {
        id: button
        x: 191
        y: 262
        width: 118
        height: 34
        text: qsTr("Войти")
    }

    TextField {
        id: textField
        x: 238
        y: 167
        width: 143
        height: 22
        placeholderText: qsTr("Эл. почта")
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
        x: 353
        y: 302
        width: 80
        height: 20
        text: qsTr("Еще не с нами? Зарегистрироваться")
        font.pixelSize: 12
        font.underline: true
    }
}
