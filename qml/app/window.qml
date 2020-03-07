import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.3
import QtQuick.Controls.Material 2.12
//import QtGraphicalEffects 2.0
import QtQuick.Controls.Styles 1.4


Rectangle {
    id: root;
    width: 1422
    height: 801
    Material.theme: Material.dark
    Material.accent: Material.purple
    color: "#333e43"
    visible: true

    StackLayout {
        id: stackLayout
        x: 0
        y: 1
        width: 1422
        height: 800
        currentIndex: 0

        Item {
            id: loginPage

            Rectangle {
                id: rectangle
                x: 580
                y: 236
                width: 262
                height: 300
                color: "#1dd9ef"
                radius: 20
                opacity: 0.3
            }

            TextField {
                id: username
                x: 611
                y: 319
                text: qsTr("Username")
                font.wordSpacing: 0

            }

            TextField {
                id: password
                x: 611
                y: 397
                text: qsTr("Password")
            }

            Image {
                id: image
                x: 661
                y: 178
                width: 100
                height: 100
                source: "../lib/loginAvatar.png"
                fillMode: Image.PreserveAspectFit
            }

            RoundButton {
                id: roundButton
                x: 665
                y: 460
                width: 93
                height: 49
                text: "Log In"
                onClicked: {stackLayout.currentIndex = 2}
                Material.elevation: 6
            }

            RoundButton {
                id: roundButton1
                x: 569
                y: 605
                width: 284
                height: 40
                text: "Don't have an account? Sign up here!"
                onClicked: {stackLayout.currentIndex = 1}
                Material.elevation: 6
            }


        }

        Item {
            id: signUp

            Rectangle {
                id: rectangle1
                x: 580
                y: 236
                width: 262
                height: 461
                color: "#1dd9ef"
                radius: 20
                opacity: 0.3
            }

            TextField {
                id: username1
                x: 611
                y: 319
                text: qsTr("Username")
                horizontalAlignment: Text.AlignLeft
                font.wordSpacing: 0
            }




            Image {
                id: image1
                x: 661
                y: 178
                width: 100
                height: 100
                source: "../lib/loginAvatar.png"
                fillMode: Image.PreserveAspectFit
            }

            TextField {
                id: password1
                x: 611
                y: 397
                text: qsTr("E-mail")
            }

            TextField {
                id: password2
                x: 611
                y: 473
                text: qsTr("Password")
            }

            TextField {
                id: password3
                x: 611
                y: 549
                text: qsTr("Confirm Password")
            }

            RoundButton {
                id: roundButton2
                x: 666
                y: 631
                width: 91
                height: 40
                text: "Sign Up"
                onClicked: {stackLayout.currentIndex = 0}
            }
        }

        Item {
            Button {
                id: projects
                x: 99
                y: 34
                width: 404
                height: 72
                text: qsTr("Projects")
            }

            Button {
                id: home
                x: 509
                y: 34
                width: 404
                height: 72
                text: qsTr("Home")
            }

            Button {
                id: competitons
                x: 919
                y: 34
                width: 404
                height: 72
                text: qsTr("Competitions")
            }

            StackLayout {
                id: stackLayout1
                x: 39
                y: 138
                width: 1344
                height: 634

                Item {
                    id: projPage
                }

                Item {
                    id: homePage
                }

                Item {
                    id: compPage
                }
            }
        }

    }
}


