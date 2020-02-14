import QtQuick 2.6

Rectangle {
    id: root;

    color: "#282C34"

    Column {
        anchors.centerIn: parent;

        Text {
            color: "#ffffff"
            text: "Qml2Puppet 1.0.0"
            font.pointSize: 24;
            anchors.horizontalCenter: parent.horizontalCenter;
        }

        Text {
            color: "#ffffff"
            font.pointSize: 12;
            anchors.horizontalCenter: parent.horizontalCenter;
            text: Qt.application.organization + " " + Qt.application.domain;
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
