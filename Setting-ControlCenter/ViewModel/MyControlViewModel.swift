//
//  MyControlViewModel.swift
//  Setting-ControlCenter
//
//  Created by SeungMin on 2023/03/06.
//

import SwiftUI

final class MyControlViewModel: ObservableObject {
    @Published var myControlList: [MyControl] = [
        MyControl(controlImageName: "flashlight.on.fill",
                  imageBackgoundColor: .yellow,
                  title: "Flashlight"),
        MyControl(controlImageName: "timer",
                  imageBackgoundColor: .orange,
                  title: "Timer"),
        MyControl(controlImageName: "calendar",
                  imageBackgoundColor: .orange,
                  title: "Calculator"),
        MyControl(controlImageName: "camera.fill",
                  imageBackgoundColor: .gray,
                  title: "Camera"),
        MyControl(controlImageName: "record.circle",
                  imageBackgoundColor: .red,
                  title: "Record"),
        MyControl(controlImageName: "alarm.fill",
                  imageBackgoundColor: .orange,
                  title: "Alarm"),
    ]
    
    @Published var moreControlList: [MyControl] = [
        MyControl(controlImageName: "car.fill",
                  imageBackgoundColor: .purple,
                  title: "Do not disturb"),
        MyControl(controlImageName: "appletv.fill",
                  imageBackgoundColor: .gray,
                  title: "Apple TV Remote"),
        MyControl(controlImageName: "person.fill",
                  imageBackgoundColor: .orange,
                  title: "Acceccibility Shortcuts")
    ]
    
    func removeItemOfMyControlList(at index: Int) {
        withAnimation {
            if !myControlList.isEmpty {
                _ = myControlList.remove(at: index)
            }
        }
    }
    
    func appendToMyControlList(item: MyControl) {
        withAnimation {
            myControlList.append(item)
        }
    }
    
    func removeItemOfMoreControlList(at index: Int) {
        withAnimation {
            if !moreControlList.isEmpty {
                _ = moreControlList.remove(at: index)
            }
        }
    }
    
    func insertFirstToMyControlList(item: MyControl) {
        withAnimation {
            moreControlList.insert(item, at: 0)
        }
    }
}
