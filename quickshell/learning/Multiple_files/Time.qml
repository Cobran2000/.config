// with this line the type becomes a Singleton
pragma Singleton

import Quickshell
import QtQuick

Singleton {
    id: root
    readonly property string time: {
        Qt.formatDateTime(clock.date, "ddd MMM d hh:mm t yyyy")
    }

    SystemClock {
        id: clock
        //set the precision to minutes, so the clock will update every minute 
        precision: SystemClock.Minutes
    }
}