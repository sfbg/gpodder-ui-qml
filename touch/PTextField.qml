
/**
 *
 * gPodder QML UI Reference Implementation
 * Copyright (c) 2013, Thomas Perl <m@thp.io>
 *
 * Permission to use, copy, modify, and/or distribute this software for any
 * purpose with or without fee is hereby granted, provided that the above
 * copyright notice and this permission notice appear in all copies.
 *
 * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH
 * REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY
 * AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT,
 * INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM
 * LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR
 * OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR
 * PERFORMANCE OF THIS SOFTWARE.
 *
 */

import QtQuick 2.0

import 'common/constants.js' as Constants

Item {
    id: textField

    property alias text: textInput.text
    property string placeholderText: ''

    height: 50 * pgst.scalef

    TextInput {
        anchors {
            fill: parent
            margins: 5 * pgst.scalef
        }
        color: Constants.colors.text
        selectionColor: Constants.colors.background
        id: textInput
        font.pixelSize: height
        font.family: placeholder.font.family
    }

    PLabel {
        id: placeholder
        anchors.fill: textInput
        visible: !textInput.focus && (textInput.text == '')
        text: textField.placeholderText
        color: Constants.colors.placeholder
        font.pixelSize: textInput.font.pixelSize
    }
}
