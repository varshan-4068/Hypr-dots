import QtQuick 2.0
import SddmComponents 2.0

Rectangle {
    id: container
    width: 640
    height: 480

    LayoutMirroring.enabled: Qt.locale().textDirection == Qt.RightToLeft
    LayoutMirroring.childrenInherit: true

    property int sessionIndex: session.index

    TextConstants { id: textConstants }

    Connections {
        target: sddm

        onLoginSucceeded: {
            errorMessage.color = "steelblue"
            errorMessage.text = textConstants.loginSucceeded
        }

        onLoginFailed: {
            password.text = ""
            errorMessage.color = "red"
            errorMessage.text = textConstants.loginFailed
        }
        onInformationMessage: {
            errorMessage.color = "red"
            errorMessage.text = message
        }
    }

    Background {
        anchors.fill: parent
        source: config.background
        fillMode: Image.PreserveAspectCrop
        onStatusChanged: {
            if (status == Image.Error && source != config.defaultBackground) {
                source = config.defaultBackground
            }
        }
    }

    Rectangle {
        anchors.fill: parent
        color: "transparent"

        Clock {
            id: clock
            anchors.margins: 50
            anchors.top: parent.top; anchors.horizontalCenter: parent.horizontalCenter
            color: "black"
						timeFont.family: "Jetbrains Mono Nerd Font"
        }

				id: rectangle
				anchors.centerIn: parent
				width: Math.max(420, mainColumn.implicitWidth + 50)
				height: Math.max(920, mainColumn.implicitHeight + 50)

				Column {
						id: mainColumn
						anchors.centerIn: parent
						spacing: 12
						Text {
								anchors.horizontalCenter: parent.horizontalCenter
								color: "black"
								font.bold: true
								font.family: "Jetbrains Mono Nerd Font"
								verticalAlignment: Text.AlignVCenter
								height: text.implicitHeight
								width: parent.width
								text: textConstants.welcomeText.arg(sddm.hostName)
								font.pixelSize: 24
								elide: Text.ElideRight
								horizontalAlignment: Text.AlignHCenter
						}

					Column {
								width: parent.width
								spacing: 4
								Text {
										id: lblName
										width: parent.width
										text: textConstants.userName
										font.pixelSize: 24
										color: "black"
										font.bold: true
										font.family: "Jetbrains Mono Nerd Font"
								}

								TextBox {
										id: name
										width: parent.width; height: 30
										text: userModel.lastUser
										font.pixelSize: 24
										font.bold: true
										font.family: "Jetbrains Mono Nerd Font"

										KeyNavigation.backtab: rebootButton; KeyNavigation.tab: password

										Keys.onPressed: {
												if (event.key === Qt.Key_Return || event.key === Qt.Key_Enter) {
														sddm.login(name.text, password.text, sessionIndex)
														event.accepted = true
												}
										}
								}
						}

						Column {
								width: parent.width
								spacing : 4
								Text {
										id: lblPassword
										width: parent.width
										text: textConstants.password
										font.bold: true
										font.pixelSize: 24
										font.family: "Jetbrains Mono Nerd Font"
										color: "black"
								}

								PasswordBox {
										id: password
										width: parent.width; height: 30
										font.pixelSize: 18
										font.bold: true
										font.family: "Jetbrains Mono Nerd Font"

										KeyNavigation.backtab: name; KeyNavigation.tab: session

										Keys.onPressed: {
												if (event.key === Qt.Key_Return || event.key === Qt.Key_Enter) {
														sddm.login(name.text, password.text, sessionIndex)
														event.accepted = true
												}
										}
								}
						}

						Row {
								spacing: 4
								width: parent.width / 2
								z: 100

								Column {
										z: 100
										width: parent.width * 1.3
										spacing : 4
										anchors.bottom: parent.bottom

										Text {
												id: lblSession
												width: parent.width
												text: textConstants.session
												wrapMode: TextEdit.WordWrap
												font.bold: true
												font.pixelSize: 24
												font.family: "Jetbrains Mono Nerd Font"
												color: "black"
										}

										ComboBox {
												id: session
												width: parent.width; height: 30
												font.pixelSize: 24
												font.family: "Jetbrains Mono Nerd Font"
												font.bold: true

												model: sessionModel
												index: sessionModel.lastIndex

												KeyNavigation.backtab: password; KeyNavigation.tab: layoutBox
										}
								}

								Column {
										z: 101
										width: parent.width * 0.7
										spacing : 4
										anchors.bottom: parent.bottom

										Text {
												id: lblLayout
												width: parent.width
												text: textConstants.layout
												wrapMode: TextEdit.WordWrap
												font.bold: true
												font.pixelSize: 24
												font.family: "Jetbrains Mono Nerd Font"
												color: "black"
										}

										LayoutBox {
												id: layoutBox
												width: parent.width; height: 30
												font.pixelSize: 24
												font.bold: true
												font.family: "Jetbrains Mono Nerd Font"
												KeyNavigation.backtab: session; KeyNavigation.tab: loginButton
										}
								}
						}

						Row {
								spacing: 4
								anchors.horizontalCenter: parent.horizontalCenter
								property int btnWidth: Math.max(loginButton.implicitWidth,
																								shutdownButton.implicitWidth,
																								rebootButton.implicitWidth, 80) + 8
								Button {
										id: loginButton
										text: textConstants.login
										width: parent.btnWidth
										font.bold: true
										font.family: "Jetbrains Mono Nerd Font"
										font.pixelSize: 24
										color: "black"

										onClicked: sddm.login(name.text, password.text, sessionIndex)

										KeyNavigation.backtab: layoutBox; KeyNavigation.tab: shutdownButton

								}

								Button {
										id: shutdownButton
										text: textConstants.shutdown
										width: parent.btnWidth
										font.bold: true
										font.family: "Jetbrains Mono Nerd Font"
										font.pixelSize: 24
										color: "black"

										onClicked: sddm.powerOff()

										KeyNavigation.backtab: loginButton; KeyNavigation.tab: rebootButton
								}

								Button {
										id: rebootButton
										text: textConstants.reboot
										width: parent.btnWidth
										font.bold: true
										font.family: "Jetbrains Mono Nerd Font"
										font.pixelSize: 24
										color: "black"

										onClicked: sddm.reboot()

										KeyNavigation.backtab: shutdownButton; KeyNavigation.tab: name
								}
						}
        }
    }

    Component.onCompleted: {
        if (name.text == "")
            name.focus = true
        else
            password.focus = true
    }
}

