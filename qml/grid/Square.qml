import QtQuick 2.12

Rectangle {
    width: 2 * baseWidth
    height: width
    border.color: "grey"
    border.width: 1

    property int currentSquare: index

    Text {
        id: squareText
        anchors.fill: parent
        anchors.centerIn: parent
        font.pixelSize: 0.8 * height
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            squareText.text = player;
            board.state[currentFirstOrder*9+currentSquare] = player == "X" ? 1 : -1;
            changePlayer();
        }
    }
}
