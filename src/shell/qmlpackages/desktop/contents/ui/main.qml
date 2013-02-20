/*
 *  Copyright 2012 Marco Martin <mart@kde.org>
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 2 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program; if not, write to the Free Software
 *  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 */

import QtQuick 2.0
//import org.kde.plasma 2.0

import org.kde.plasma.core 0.1 as PlasmaCore


Rectangle {
    id: root
    color: Qt.rgba(0,0,0,64); // translucent black
    width: 640
    height: 480

    property Item containment

    onContainmentChanged: {
        print("New Containment: " + containment)
        //containment.parent = root
        containment.visible = true
        containment.anchors.fill = root
    }

    Component.onCompleted: {
        print("View QML loaded")
    }
}
