import Quickshell
import Quickshell.Io
import QtQuick

// Variants make it possible for the bar to be schown om multiple screens, and for each screen to have its own instance of the bar
Scope{
    id: root
    property string time

    Variants {
        model: Quickshell.screens

        delegate: Component {
            PanelWindow {
                // the sceen form the screens list will be injected into this property
                required property var modelData

                // we can the set the window's screen to the injected property
                screen: modelData

                anchors {
                    top: true
                    left: true
                    right: true
                }
                
                implicitHeight: 30

                Text {
                    // give the text an ID we can refer to it later
                    anchors.centerIn: parent
                    text: root.time                
                }    
            }
        }
    }
    // create a process to management object
    Process {
        // the command it will run, every argument is its own string
        id: dateProc
        command: ["date"]

        // run the command immediately
        running: true

        // process the stdout stream using a StdioCollector
        // Use StdioCollector to retrieve the text the process sends
        // to stdout.
        stdout: StdioCollector {
        // Listen for the streamFinished signal, which is sent
        // when the process closes stdout or exits.
        onStreamFinished:  root.time = this.text //'this' can be omitted
        }
    }


    //use a timer to rerun the process at an interval
    Timer {
        // set timer on 1000ms and repeat it
        interval: 1000
        running: true
        repeat: true

        //on timer trigger, set the date process to running again, which will rerun the command 
        onTriggered: dateProc.running = true
    }
}