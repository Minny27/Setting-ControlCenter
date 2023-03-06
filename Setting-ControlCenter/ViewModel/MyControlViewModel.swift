//
//  MyControlViewModel.swift
//  Setting-ControlCenter
//
//  Created by SeungMin on 2023/03/06.
//

import SwiftUI

final class MyControlViewModel {
    var myControlList: [MyControl] = [
        MyControl(isAdded: true,
                  controlImageName: "flashlight.on.fill",
                  imageBackgoundColor: .yellow,
                  title: "Flashlight"),
        MyControl(isAdded: true,
                  controlImageName: "timer",
                  imageBackgoundColor: .orange,
                  title: "Timer"),
        MyControl(isAdded: true,
                  controlImageName: "calendar",
                  imageBackgoundColor: .orange,
                  title: "Calculator"),
        MyControl(isAdded: true,
                  controlImageName: "camera.fill",
                  imageBackgoundColor: .gray,
                  title: "Camera"),
        MyControl(isAdded: true,
                  controlImageName: "record.circle",
                  imageBackgoundColor: .red,
                  title: "Record"),
        MyControl(isAdded: true,
                  controlImageName: "alarm.fill",
                  imageBackgoundColor: .orange,
                  title: "Alarm"),
    ]
    
    var moreControlList: [MyControl] = [
        MyControl(isAdded: false,
                  controlImageName: "car.fill",
                  imageBackgoundColor: .purple,
                  title: "Do not disturb"),
        MyControl(isAdded: false,
                  controlImageName: "appletv.fill",
                  imageBackgoundColor: .gray,
                  title: "Apple TV Remote"),
        MyControl(isAdded: false,
                  controlImageName: "person.fill",
                  imageBackgoundColor: .orange,
                  title: "Acceccibility Shortcuts")
    ]
}
