//
//  Case1View.swift
//  Wheelchairs App
//
//  Created by Jaime Fagnilli on 2020-08-03.
//  Copyright © 2020 Jaime Fagnilli. All rights reserved.
//

import SwiftUI

struct Case1View: View {
    @Environment(\.presentationMode) var presentationMode
    @State var showSheet: Bool = false
    var body: some View {
        
        ZStack (alignment: .topLeading)  {
            ScrollView(showsIndicators: false) {
                VStack (alignment: .center, spacing: 20){
                    Text(studyCase[0])
                        .marcoStyle()
//                        .padding()
//                        .padding(.top)
                    Divider()
                    Spacer()
                }
                Button(action: {
                    showSheet.toggle()
                }, label: {
                    Text("Wheelchair recommended")
                        .frame(width: 180, height: 50, alignment: .center)
                        .font(.headline)
                        .background(Color.white.cornerRadius(10))
                        .shadow(radius: 10)
                })
                .fullScreenCover(isPresented: $showSheet, content: {
                    SolutionToCaseOneView()
                        
                })
                
            }//SCROLLVIEW
            .padding()
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
                
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.primary)
                    .font(.headline)
                    .padding(20)
            })
        }//ZSTACK
    }
}


struct Case1View_Previews: PreviewProvider {
    static var previews: some View {
        Case1View()
        
    }
}
