import QtQuick 2.3
import QtQuick.Controls 1.2
import KSElements 1.0

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("OpenGL on Qt Quick")

    menuBar: MenuBar {
        Menu {
            title: qsTr("File")
            MenuItem {
                text: qsTr("&Open")
                onTriggered: console.log("Open action triggered");
            }
            MenuItem {
                text: qsTr("Exit")
                onTriggered: Qt.quit();
            }
        }
    }
    OpenGLElement {
        id:ogl
    }
}
