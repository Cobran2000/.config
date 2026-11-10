import Quickshell
import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

ColumnLayout {
  property int clicks: 0

  function updateText() {
    clicks += 1;
    label.text = `the button has been clicked ${clicks} times!`;
  }

  Button {
    text: "click me"
    onClicked: updateText()
  }

  Text {
    id: label
    text: "the button has not been clicked"
  }
}