import QtQuick 2.14
import QtQuick.Controls 2.14
import QtQuick.Layouts 1.3
import QtQuick.Controls.Material 2.4
import QtQuick.Controls.Styles 1.4


Rectangle {
    id: root;
    width: 1422
    height: 801
    Material.theme: Material.dark
    Material.accent: Material.blue
    color: "#343232"
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
                color: "#6a6a6a"
                radius: 20
                opacity: 0.3
                Material.elevation: 10
            }

            TextField {
                placeholderTextColor: "white"
                id: username
                x: 611
                y: 319
                width: 200
                height: 40
                placeholderText: qsTr("Username")
                font.family: "Verdana"
                font.wordSpacing: 0
                Material.accent: "#009eff"

            }

            TextField {
                id: password
                x: 611
                y: 397
                width: 200
                height: 40
                placeholderTextColor: "white"
                placeholderText: qsTr("Password")
                font.family: "Verdana"
                visible: true
                Material.accent: "#009eff"
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
                id: logInButton
                x: 665
                y: 467
                width: 93
                height: 42
                text: "Log In"
                onClicked: {stackLayout.currentIndex = 2}
                Material.elevation: 15
                Material.background: "#009eff"
                Material.foreground: "white"
                OpacityAnimator {
                    target: username;
                    from: 0;
                    to: 1;
                    duration: 1000
                    running: true
                }
            }

            RoundButton {
                id: signUpHere
                x: 556
                y: 601
                width: 311
                height: 40
                text: "Don't have an account? Sign up here!"
                onClicked: {stackLayout.currentIndex = 1}
                Material.elevation: 6
                Material.background: "#009eff"
                Material.foreground: "white"

                OpacityAnimator {
                    target: username;
                    from: 0;
                    to: 1;
                    duration: 2000
                    running: true
                }
            }


        }

        Item {
            id: signUp

            Rectangle {
                id: rectangle1
                x: 580
                y: 170
                width: 262
                height: 461
                color: "#6a6a6a"
                radius: 20
                opacity: 0.3
            }

            TextField {
                id: username1
                x: 611
                y: 253
                width: 200
                height: 40
                placeholderText: qsTr("Username")
                horizontalAlignment: Text.AlignLeft
                font.wordSpacing: 0
                Material.accent: "#009eff"
            }




            Image {
                id: image1
                x: 661
                y: 112
                width: 100
                height: 100
                source: "../lib/loginAvatar.png"
                fillMode: Image.PreserveAspectFit
            }

            TextField {
                id: password1
                x: 611
                y: 331
                width: 200
                height: 40
                placeholderText: qsTr("E-mail")
                Material.accent: "#009eff"
            }

            TextField {
                id: password2
                x: 611
                y: 407
                width: 200
                height: 40
                text: qsTr("Password")
                Material.accent: "#009eff"
            }

            TextField {
                id: password3
                x: 611
                y: 483
                width: 200
                height: 40
                text: qsTr("Confirm Password")
                Material.accent: "#009eff"
            }

            RoundButton {
                id: roundButton2
                x: 666
                y: 565
                width: 91
                height: 40
                text: "Sign Up"
                transformOrigin: Item.Center
                onClicked: {stackLayout.currentIndex = 0}
            }
        }

        Item {
            Button {
                id: projects
                x: 39
                y: 34
                width: 464
                height: 72
                text: qsTr("PROJECTS")
                font.pointSize: 20
                font.family: "Verdana"
            }

            Button {
                id: home
                x: 509
                y: 34
                width: 404
                height: 72
                text: qsTr("HOME")
                font.pointSize: 20
                font.family: "Verdana"
            }

            Button {
                id: competitons
                x: 919
                y: 34
                width: 464
                height: 72
                text: qsTr("COMPETITIONS")
                font.family: "Verdana"
                font.pointSize: 20
            }

            StackLayout {
                id: stackLayout1
                x: 39
                y: 138
                width: 1344
                height: 634

                Item {
                    id: projPage

                    ScrollView {
                        id: scrollView
                        x: 296
                        y: 81
                        width: 1048
                        height: 553
                    }

                    Button {
                        id: button
                        x: 17
                        y: 412
                        width: 234
                        height: 70
                        text: qsTr("Edit Profile")
                    }

                    Label {
                        id: label
                        x: 17
                        y: 205
                        width: 234
                        height: 182
                        color: "#ffffff"
                        text: qsTr("PROFILE ELEMENTS GO HERE")
                        verticalAlignment: Text.AlignVCenter
                        horizontalAlignment: Text.AlignHCenter
                        styleColor: "#df7171"
                    }

                    Button {
                        id: button1
                        x: 17
                        y: 488
                        width: 234
                        height: 70
                        text: qsTr("Add Project +")
                    }

                    Button {
                        id: button2
                        x: 17
                        y: 564
                        width: 234
                        height: 70
                        text: qsTr("Settings")
                    }

                    TextField {
                        id: textField
                        x: 296
                        y: 28
                        width: 1000
                        height: 40
                        placeholderText: qsTr("Search")
                        Material.accent: "#009eff"
                        Material.foreground: "white"
                    }

                    Image {
                        id: image2
                        x: 36
                        y: 18
                        width: 197
                        height: 166
                        source: "../lib/loginAvatar.png"
                        fillMode: Image.PreserveAspectFit
                    }

                    Image {
                        id: searchBtn
                        x: 1302
                        y: 25
                        width: 42
                        height: 47
                        source: "qrc:/qtquickplugin/images/template_image.png"
                        fillMode: Image.PreserveAspectFit
                    }

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


