import QtQuick
import QtQuick.Window
import QtQuick.Controls 6.3
import QtQuick.Layouts 6.3

Window {
    width: 640
    height: 480
    visible: true
    color: "#61d8a8"
    title: qsTr("Registration")

    TextField {
        id: textField
        x: 154
        y: 125
        width: 143
        height: 22
        placeholderText: qsTr("Фамилия")
    }

    TextField {
        id: textField1
        x: 340
        y: 125
        width: 143
        height: 22
        placeholderText: qsTr("Имя")
    }

    TextField {
        id: textField2
        x: 154
        y: 171
        width: 143
        height: 22
        placeholderText: qsTr("Организация")
    }

    TextField {
        id: textField3
        x: 340
        y: 171
        width: 143
        height: 22
        placeholderText: qsTr("Должность")
    }

    TextField {
        id: textField4
        x: 154
        y: 217
        width: 143
        height: 22
        placeholderText: qsTr("Дата рождения")
    }

    TextField {
        id: textField5
        x: 340
        y: 217
        width: 143
        height: 22
        placeholderText: qsTr("Эл. почта")
    }

    CheckBox {
        id: checkBox
        x: 154
        y: 301
        width: 143
        height: 28
        text: qsTr("Я подтверждаю правильность данных")
        autoRepeat: false
    }

    CheckBox {
        id: checkBox1
        x: 340
        y: 301
        width: 161
        height: 28
        text: qsTr("Я согласен с правилами")
    }

    Button {
        id: button
        x: 220
        y: 342
        width: 200
        height: 31
        text: qsTr("Зарегистрироваться")
    }

    TextField {
        id: textField6
        x: 154
        y: 262
        width: 143
        height: 22
        placeholderText: qsTr("Пароль")
    }

    TextField {
        id: textField7
        x: 340
        y: 262
        width: 143
        height: 22
        placeholderText: qsTr("Повтор пароля")
    }
}
