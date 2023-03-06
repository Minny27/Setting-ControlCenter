//
//  MyControl.swift
//  Setting-ControlCenter
//
//  Created by SeungMin on 2023/03/06.
//

import SwiftUI

struct MyControl: Identifiable {
    let isAdded: Bool
    let controlImageName: String
    let imageBackgoundColor: Color
    let title: String
    let id = UUID()
}
