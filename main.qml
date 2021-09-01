import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Shapes 1.12
import QtQuick.Controls 2.5
import QtQuick.Dialogs 1.2

ApplicationWindow {



width: Screen.width
height: 500
visible: true


Rectangle{

    id:rect
    clip: true
    width: Screen.width
    height: 20
    radius: 20
    border.color: "gray"
    border.width: 3

    Rectangle{

        id:next_rect
        color: "#90ee90"
       x:parent.x+3
       y:parent.y+3
        width: 100
        height: 14
       radius: 20


    }

}



SequentialAnimation{

    id:anim
    running: false


    NumberAnimation {

        target: next_rect
        to:rect.x+rect.width-100
        property: "x"
        duration: 3000
        from:rect.x+3
        easing.type: "OutBounce"
        loops: 10


    }
}

Button{

     text: "Start"

     anchors.centerIn: parent

     onClicked: anim.running=true


}





}
