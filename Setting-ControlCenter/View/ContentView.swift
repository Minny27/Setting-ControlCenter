//
//  ContentView.swift
//  Setting-ControlCenter
//
//  Created by SeungMin on 2023/03/06.
//

import SwiftUI

struct ContentView: View {
    let viewModel = MyControlViewModel()
    
    @State var singleSelction: UUID?
    
    var body: some View {
        List(selection:  $singleSelction) {
            Section {
                ForEach(
                    Array(viewModel.myControlList.enumerated()),
                    id: \.offset
                ) {
                    (index, myControl) in
                    HStack(alignment: .center, spacing: 12) {
                        Image(systemName: myControl.isAdded == true ? "minus" : "plus")
                            .frame(width: 24, height: 24)
                            .foregroundColor(.white)
                            .background(myControl.isAdded == true ? .red : .green)
                            .cornerRadius(30)
                        Image(systemName: myControl.controlImageName)
                            .frame(width: 34, height: 34)
                            .foregroundColor(.white)
                            .background(myControl.imageBackgoundColor)
                            .cornerRadius(8)
                        Text(myControl.title)
                            .bold()
                        Spacer()
                        Image(systemName: "line.3.horizontal")
                            .frame(width: 24, height: 24)
                            .foregroundColor(.gray)
                    }
                }
            } header: {
                Text("Control Center")
                    .font(Font.system(size: 24))
                    .fontWeight(.bold)
            }
            
            Section {
                ForEach(
                    Array(viewModel.moreControlList.enumerated()),
                    id: \.offset
                ) {
                    (index, myControl) in
                    HStack(alignment: .center, spacing: 12) {
                        Image(systemName: myControl.isAdded == true ? "minus" : "plus")
                            .frame(width: 24, height: 24)
                            .foregroundColor(.white)
                            .background(myControl.isAdded == true ? .red : .green)
                            .cornerRadius(30)
                        Image(systemName: myControl.controlImageName)
                            .frame(width: 34, height: 34)
                            .foregroundColor(.white)
                            .background(myControl.imageBackgoundColor)
                            .cornerRadius(8)
                        Text(myControl.title)
                            .bold()
                        Spacer()
                        Image(systemName: "line.3.horizontal")
                            .frame(width: 24, height: 24)
                            .foregroundColor(.gray)
                    }
                }
            } header: {
                Text("More Controls")
                    .font(Font.system(size: 24))
                    .fontWeight(.bold)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
