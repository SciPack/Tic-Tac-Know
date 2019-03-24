import QtQuick 2.0

Rectangle {
    width: firstOrderGrid.width + border.width/2
    height: firstOrderGrid.height + border.width/2
    border.color: "black"
    border.width: 4

    property int currentFirstOrder: index

    GridView {
        id: firstOrderGrid
        anchors.centerIn: parent
        width: firstOrderWidthSquares * squareWidth
        height: firstOrderHeightSquares * squareHeight
        cellWidth: squareWidth
        cellHeight: squareHeight
        model: firstOrderWidthSquares * firstOrderHeightSquares
        delegate: Square {}
    }
}
