import QtQuick 2.6
import QtQuick.Controls 1.6

import "../lib/requests.js" as Requests

Rectangle {
    id: root;

    color: "#282C34"

    Column {
        anchors.centerIn: parent;

        Text {
            color: "#ffffff"
            text: "Application"
            font.pointSize: 24;
            anchors.horizontalCenter: parent.horizontalCenter;
        }

        Text {
            id: requestReturn
            color: "#ffffff"
            text: "Request Return"
            anchors.horizontalCenter: parent.horizontalCenter
            font.pointSize: 12
        }
    }

    Button {
        id: requestButton
        x: 274
        y: 284
        text: qsTr("Make Request")
        onClicked: {
            Requests.post('http://127.0.0.1:8000/user/login',
                          '{"username": "jason","password": "jasonpassword"}',
                          function(res) {

                console.log(res.responseText);

//                var resObject = eval('new Object(' + res.responseText + ')');

                requestReturn.text = res.responseText;
            });
        }
    }

//    function request(url, callback) {
//        var xhr = new XMLHttpRequest();
//        xhr.onreadystatechange = (function(myxhr) {
//            return function() {
//                callback(myxhr);
//            }
//        })(xhr);
//        xhr.open('POST', url, true);
//        xhr.send('');
//    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
