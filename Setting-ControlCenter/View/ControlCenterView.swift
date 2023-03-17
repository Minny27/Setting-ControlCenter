//
//  ControlCenterView.swift
//  Setting-ControlCenter
//
//  Created by SeungMin on 2023/03/06.
//

import SwiftUI

struct ControlCenterView: View {
    @ObservedObject var viewModel = MyControlViewModel()
    
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
                        Image(systemName: "minus")
                            .frame(width: 24, height: 24)
                            .foregroundColor(.white)
                            .background(.red)
                            .cornerRadius(30)
                            .onTapGesture {
                                let newItem = viewModel.myControlList[index]
                                viewModel.removeItemOfMyControlList(at: index)
                                viewModel.insertFirstToMyControlList(item: newItem)
                            }
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
                        Image(systemName: "plus")
                            .frame(width: 24, height: 24)
                            .foregroundColor(.white)
                            .background(.green)
                            .cornerRadius(30)
                            .onTapGesture {
                                let newItem = viewModel.moreControlList[index]
                                viewModel.removeItemOfMoreControlList(at: index)
                                viewModel.appendToMyControlList(item: newItem)
                            }
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

struct ControlCenterView_Previews: PreviewProvider {
    static var previews: some View {
        ControlCenterView()
    }
}
