//
//  HomeCardiew.swift
//  Seating App
//
//  Created by Jaime Fagnilli on 2022-02-04.
//

import SwiftUI

struct HomeCardiew: View {
    
    var home: Home
    var hapticImpact = UIImpactFeedbackGenerator (style: .heavy)
    @State private var showModal: Bool = false
    
    var body: some View {
        VStack (alignment: .leading, spacing: 50){
            Image(home.image)
                .resizable()
                .scaledToFill()
                .cornerRadius(25)
                .frame(width: 300, height: 380, alignment: .center)
                .shadow(color: Color.blue, radius: 9, x: 15, y: 0)
                .opacity(50.0)
            
                .overlay(alignment: .bottom){
                    VStack(alignment: .leading) {
                        Link(home.title, destination: URL (string: home.link)!)
                    }
                    
                    .padding()
                    .font(.title2)
                    .font(.system(.title, design: .rounded))
                    .frame(width: 250, height: 30)
                    .background(.white)
                    .cornerRadius(20)
                    .shadow(color: Color.gray, radius: 5, x: 5, y: 5)
                    .padding()
                }
        }
        .onTapGesture {
            self.hapticImpact.impactOccurred()
            self.showModal = true
        }
    }
}

struct HomeCardiew_Previews: PreviewProvider {
    static var previews: some View {
        HomeCardiew(home: homeData[0])
            .previewLayout(.sizeThatFits)
    }
}
