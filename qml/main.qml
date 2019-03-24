import QtQuick 2.12
import QtQuick.Window 2.12

import "grid"

Window {
    width: 540
    height: 810
    visible: true

    property int baseWidth: width/20
    property int baseHeight: height/20

    property int squareWidth: 2 * baseWidth
    property int squareHeight: squareWidth
    property int firstOrderWidthSquares: 3
    property int firstOrderHeightSquares: 3
    property int boardWidthFirstOrders: 3
    property int boardHeightFirstOrders: 3

    property string player: "X"

    function changePlayer() {
        if (player == "X")
            player = "O";
        else
            player = "X";
    }

    Board {
        id: board
        anchors.top: parent.top
        anchors.topMargin: 2 * baseHeight
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Rectangle {
        id: printState
        anchors.bottom: parent.bottom
        width: parent.width
        height: 2 * baseHeight
        color: "green"
        MouseArea {
            anchors.fill: parent
            onClicked: {
                board.printState();
            }
        }
    }
}
