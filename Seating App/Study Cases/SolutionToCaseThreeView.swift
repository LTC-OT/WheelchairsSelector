//
//  SolutionToCaseThreeView.swift
//  Wheelchairs App
//
//  Created by Jaime Fagnilli on 2021-01-03.
//  Copyright © 2021 Jaime Fagnilli. All rights reserved.
//

import SwiftUI

struct SolutionToCaseThreeView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack (alignment: .topLeading){
            ScrollView(showsIndicators: false) {
                VStack {
                    
                    Image("HTR")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(1000.0)
                        .frame(width: 200, height: 200, alignment: .center)
                        .shadow(color : Color(red : 0, green : 0, blue : 0, opacity : 0.15), radius: 8, x : 6, y : 8)
                    
                    VStack (alignment: .center, spacing: 20) {
                        
                        Text("Type of wheelchair : HTR").font(.title2)
                        Text("""
                    
                    Dimensions: 16 inches width  x 18 inches depth  x 20 inches heigh floor to seat
                    
                    Anti-tippers
                    Tilt adjustment positions the user for improved tolerance and functionality.
                    Sliding seat pan for easy seat-depth adjustment.
                    Deeply contoured seat and back cushions enhance comfort.
                    Fold-down back facilitates transfers and personal grooming.
                    250 Pound Weight Capacity.
                    
                    HTR Tilt & Recline Wheelchair is loaded with features such as tilt and recline capabilities, smooth and effortless operation and optimal positioning. In addition to these features they offer maximum safety for patients and caregivers. Manage poor head and trunk control, reduces pressure on bottom area
                    
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

struct SolutionToCaseThreeView_Previews: PreviewProvider {
    static var previews: some View {
        SolutionToCaseThreeView()
        
        
    }
}
