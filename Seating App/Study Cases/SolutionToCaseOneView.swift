//
//  SolutionToCaseOneView.swift
//  Wheelchairs App
//
//  Created by Jaime Fagnilli on 2021-01-03.
//  Copyright © 2021 Jaime Fagnilli. All rights reserved.
//

import SwiftUI

struct SolutionToCaseOneView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        ZStack (alignment: .topLeading){
            ScrollView (showsIndicators: false){
                VStack {
                    Image("STD")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(1000.0)
                        .frame(width: 200, height: 200, alignment: .center)
                        .shadow(color : Color(red : 0, green : 0, blue : 0, opacity : 0.15), radius: 8, x : 6, y : 8)
                    VStack (alignment: .center, spacing: 20) {
                        
                        VStack  {
                            Text("Type of wheelchair: Manual STD wheelchair")
                                .font(.title2)
                        }
                        
                            
                        Text("""
    Dimensions: 18 inches width x 19 inches depth x 17 inches heigh floor to seat
    
    Adjustable height arm rest
    Standard back seat: 18 inches height
    Filp up foot rest swingaway and detachable
    Anti-tippers
    Contour multilayer foam cushion
    Chair alarm installed
    Anti rolling back system
    250 Pound Weight Capacity.
    
    Wheelchair provides the user the freedom to move around, allowing the user to access day to day physical activity as they push around conducting activities of daily living.
    
    Anti rolling back system provides the necessary stability while performing sit stand or transfers activities.
    Contour multilayer cushion provides support to manage passive sliding
    """)
                        .marcoStyle()
                    }
                }
                .padding()
            }
            Button(action: {
                presentationMode.wrappedValue.dismiss()
                
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.primary)
                    .font(.headline)
                    .padding(20)
            })
        }
    }
}

struct SolutionToCaseOneView_Previews: PreviewProvider {
    static var previews: some View {
        SolutionToCaseOneView()
    }
}
