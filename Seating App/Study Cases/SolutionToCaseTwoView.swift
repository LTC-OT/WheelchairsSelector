//
//  SolutionToCaseTwoView.swift
//  Wheelchairs App
//
//  Created by Jaime Fagnilli on 2021-01-03.
//  Copyright © 2021 Jaime Fagnilli. All rights reserved.
//

import SwiftUI

struct SolutionToCaseTwoView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack (alignment: .topLeading){
            ScrollView (showsIndicators: false){
                VStack {
                    
                    Image("TIS")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(1000.0)
                        .frame(width: 200, height: 200, alignment: .center)
                        .shadow(color : Color(red : 0, green : 0, blue : 0, opacity : 0.15), radius: 8, x : 6, y : 8)
                    VStack (alignment: .center, spacing: 20) {
                        
                        Text("Type of wheelchair : Manual Tilt Back in Space").font(.title2)
                        Text("""
        Dimensions: 18 inches width  x 18 inches depth  x 16 inches heigh floor to seat
       
        Contour back seat with moderate
        lateral support
        Head rest
        Filp up foot rest swingaway and detachable
        Anti-tippers
        Solid Seat with abductor pommel attached
        HP ROHO cushion with incontinent cover
        250 Pound Weight Capacity.
       
        A wheelchair with the power tilt (tilt-in-space) feature allows the whole chair to tilt up to 30 or 60 degrees, depending on the model, while maintaining your hip and knee angles at 90 degrees. Tilt-in-space can actually provide even more comfort than a reclining system in the way it helps maintain posture and body alignment and helps to prevent shear effect.
       
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

struct SolutionToCaseTwoView_Previews: PreviewProvider {
    static var previews: some View {
        SolutionToCaseTwoView()
    }
}
