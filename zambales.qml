import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

ApplicationWindow {
  id: mainWindow
  visible: true
  color: "#f1f0f0"

  Row {
    id: maincontainer
    anchors.fill: parent
    spacing: 15
    topPadding: 50
    rightPadding: 10
    leftPadding: 25

    Flickable {
      width: parent.width * 0.5
      height: parent.height * 0.75
      contentWidth: image.width
      contentHeight: image.height
      anchors.topMargin: 50
      clip: true
      Image {
        id: image
        source: "anawangin-25-1.jpg"
      }
    }

    Frame {
      background: Rectangle {
        color: "transparent"
        border.color: "transparent"
      }
      ColumnLayout {
        spacing: 1
        Layout.margins: 10
        Layout.topMargin: 50
        anchors.right: parent
        Label {
          text: "Anawangin Cove"
          font.pixelSize: 25
          font.weight: Font.Bold
          font.family: "Inter"
          color: "#161515"
          wrapMode: Text.WordWrap
          width: mainWindow.width * 0.4
          padding: 0
        }
        Label {
          text: "Pundaquit, San Antonio, Zambales"
          font.pixelSize: 14
          font.weight: Font.Light
          font.family: "Inter"
          wrapMode: Text.WordWrap
          width: mainWindow.width * 0.4
          color: "#161515"
          padding: 0
        }
        Flickable {
          width: mainWindow.width * 0.3; height: 500
          contentWidth: mainWindow.width * 0.3; contentHeight: info.height
          Text {
            id: info
            width: parent.width
            font.pixelSize: 12
            font.family: "Inter"
            color: "#161515"
            padding: 0
            text: "Anawangin Cove is one of the most popular camping spots in Zamabales. The sheltered bay boasts an ash-colored beach due to the Mt. Pinatubo volcanic eruption.\nIt's surrounded with a vast, evergreen, and tall Agoho trees similar to pine tres. Imagine if Boracay an Baguio had a baby, this would be it.\nThis is a go-toplace for first-ime and experienced campers alike. Make sure that you bring everything you need going here, like food, cooking materials, toiletries and camp essentials."
            wrapMode: Text.WordWrap
          }
        }
      }
    }
  }
}
