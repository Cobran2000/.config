import Quickshell
import QtQuick
import Quickshell.Widgets
 
Item {
  MarginWrapperManager { margin: 5 }

  // Automatically detected by MarginWrapperManager as the
  // primary child of the container and sized accordingly.
  Rectangle {
    implicitWidth: 50
    implicitHeight: 50
  }
}