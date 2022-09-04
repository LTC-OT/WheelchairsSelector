//
//  HeaderCase4.swift
//  Seating App
//
//  Created by Jaime Fagnilli on 2022-04-30.
//

import SwiftUI

struct HeaderCase4: View {
    @State var showSheet: Bool = false
    var body: some View {
        Button(action: {
            showSheet.toggle()
        }, label: {
            Text("Case Four")
                .frame(width: 140, height: 90, alignment: .topLeading)
                .foregroundColor(.black)
                .font(.headline)
                .padding(20)
                .background(Color.white.cornerRadius(10))
                .shadow(radius: 10)
                .overlay(
                    Image(systemName: "folder.circle")
                        .resizable()
                        .offset (y: -20)
                        .frame (width: 60, height: 60, alignment: .leading), alignment: .bottom)
        })
        .fullScreenCover(isPresented: $showSheet, content: {
            Case4View()
        })
    }
}

struct HeaderCase4_Previews: PreviewProvider {
    static var previews: some View {
        HeaderCase4()
    }
}
