import QtQuick 2.9
import QtQuick.Controls 2.2

Rectangle {
    property string imageSource: "" //图片url
    property string title: "" //歌单标题
    property string list_id: "" //歌单id

    width: 175
    height: 215
    color: "transparent"

    Image {
        id: image
        source: imageSource
        width: parent.width
        height: parent.height - 40

        //图像底部play按钮
        Label {
            id: playBtn
            width: 30
            height: 30
            anchors.bottom: parent.bottom
            anchors.right: parent.right
            text: "\ued03"
            color: "#e6e9ec"
            font.family: icomoonFont.name
            font.pixelSize: 24
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            visible: false

            MouseArea {
                anchors.fill: parent
                hoverEnabled: true
                cursorShape: Qt.PointingHandCursor

                onClicked: {

                }
            }
        }

        MouseArea {
            anchors.fill: parent
            hoverEnabled: true
            cursorShape: Qt.PointingHandCursor

            onEntered: {
                playBtn.visible = true
            }

            onExited: {
                playBtn.visible = false
            }

            onClicked: {

            }
        }
    }

    Label {
        anchors.top: image.bottom
        anchors.topMargin: 5
        width: parent.width
        height: 40
        text: title
        color: "#dcdde4"
        font.family: "Microsoft YaHei"
        font.pixelSize: 14
        wrapMode: Text.Wrap
    }
}