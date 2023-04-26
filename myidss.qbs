import qbs
CppApplication {
    Depends { name: "Qt.quick" }
    install: true
    // Additional import path used to resolve QML modules in Qt Creator's code model
    property pathList qmlImportPaths: []

    files: [
        "images/company.png",
        "images/documents.png",
        "images/exit.png",
        "images/message.png",
        "images/project.png",
        "images/settings.png",
        "main.cpp",
        //"resources.qrc",
    ]

    Group {
        Qt.core.resourcePrefix: "myidss/"
        fileTags: ["qt.qml.qml", "qt.core.resource_data"]
        files: [
            "Main.qml",
            "company.qml",
            "documents.qml",
            "fgpass.qml",
            "menu.qml",
            "messages.qml",
            "projects.qml",
            "registration.qml",
            //"resources.qrc",
        ]
    }

    Group {
        fileTags: ["qt.core.resource_file"]
        files: [
            "resources.qrc",
        ]
    }

}
