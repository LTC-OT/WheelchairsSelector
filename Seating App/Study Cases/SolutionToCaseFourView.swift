//
//  SolutionToCaseFourView.swift
//  Wheelchairs App
//
//  Created by Jaime Fagnilli on 2021-01-03.
//  Copyright © 2021 Jaime Fagnilli. All rights reserved.
//

import SwiftUI

struct SolutionToCaseFourView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack (alignment: .topLeading){
            ScrollView(showsIndicators: false) {
                VStack {
                    
                    Image("Broda")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(900.0)
                        .frame(width: 160, height: 160, alignment: .center)
                        .shadow(color : Color(red : 0, green : 0, blue : 0, opacity : 0.15), radius: 8, x : 6, y : 8)
                    
                    
                    VStack (alignment: .center, spacing: 20) {
                        Text("Type of wheelchair : BRODA Chair")
                            .font(.title2)
                        Text("""
                    Dimensions: 16 inches width  x 20 inches depth  x 22 inches heigh floor to seat
                    
                    Tilt and reclline adjustment positions the user for improved tolerance and functionality.
                    Anti-tippers
                    Sliding seat pan for easy seat-depth adjustment.
                    Deeply contoured seat and back cushions enhance comfort.
                    
                    
                    BRODA offers tilt-in-space positioning chairs with the Comfort Tension Seating® system prevents skin breakdown through reducing heat and moisture Decreased postural control.
                    At risk of skin breakdown and/or decreased skin integrity. Musculoskeletal deformities/conditions and other medical conditions which preven proper positioning when seated in a non-tilting wheelchair (i.e., kyphosis or lordosis)
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

struct SolutionToCaseFourView_Previews: PreviewProvider {
    static var previews: some View {
        SolutionToCaseFourView()
    }
}
