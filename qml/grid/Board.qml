import QtQuick 2.0

Rectangle {
    width: boardGrid.width
    height: boardGrid.height
    border.color: "black"
    border.width: 8

    property var state: [
        0,0,0,0,0,0,0,0,0,
        0,0,0,0,0,0,0,0,0,
        0,0,0,0,0,0,0,0,0,
        0,0,0,0,0,0,0,0,0,
        0,0,0,0,0,0,0,0,0,
        0,0,0,0,0,0,0,0,0,
        0,0,0,0,0,0,0,0,0,
        0,0,0,0,0,0,0,0,0,
        0,0,0,0,0,0,0,0,0
    ]

    function printState() {
        console.log(state);
    }

    property int currentFirstOrder: 0

    GridView {
        id: boardGrid
        anchors.centerIn: parent
        width: boardWidthFirstOrders * firstOrderWidthSquares * squareWidth
        height: boardHeightFirstOrders * firstOrderHeightSquares * squareHeight
        cellWidth: firstOrderWidthSquares * squareWidth
        cellHeight: firstOrderHeightSquares * squareHeight
        model: boardWidthFirstOrders * boardHeightFirstOrders
        delegate: FirstOrder {}
    }
}
