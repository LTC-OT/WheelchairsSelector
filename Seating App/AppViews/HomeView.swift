//
//  HomeView.swift
//  Wheelchairs App
//
//  Created by Jaime Fagnilli on 2020-07-25.
//  Copyright © 2020 Jaime Fagnilli. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var home: [Home] = homeData
    
    var body: some View {
        
        ZStack {
            Color.blue.opacity(0.8)
                .frame(width: 370, height: 680, alignment: .center)
                .cornerRadius(40)
                .padding(.bottom, 10)
            
            VStack {
                
                ScrollView(.horizontal, showsIndicators: false) {
                    
                    HStack(spacing : 90){
                        
                        ForEach(home) { item in
                            HomeCardiew (home: item)
                        }
                    }.padding(.top, 195)
                        .padding(.horizontal, 100)
                }
                .padding(.bottom, 10)
                HStack {
                    Label("Scroll", systemImage: "arrow.left")
                    Image(systemName: "arrow.right")
                }.padding(.top, 90)
                    .foregroundColor(Color.white)
                
                VStack {
                    VStack {
                        Text("Wheelchair Selector")
                            .fontWeight(.bold)
                            .font(.system(size: 30))
                        
                        Text("Application for")
                        Text("OT Students")
                        Text("in LTC")
                    }
                    .foregroundColor(Color.white)
                    
                    .padding(.bottom, 160)
                    
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
        
    }
}
