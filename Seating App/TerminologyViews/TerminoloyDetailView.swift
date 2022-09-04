//
//  TerminoloyDetailView.swift
//  Seating App
//
//  Created by Jaime Fagnilli on 2022-01-05.
//

import SwiftUI

struct TerminoloyDetailView: View {
    var terminology: Terminology
    
    var body: some View {
        NavigationView {
            
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack(alignment: .center, spacing: 20) {
                    
                    TerminologyHeaderView(terminology: terminology)
                    
                    VStack(alignment: .leading, spacing: 20) {
                        
                        Text(terminology.title)
                            .font(.headline)
                            .padding(.leading)
                            .multilineTextAlignment(.leading)
                        Text(terminology.definition)
                            .marcoStyle()
//                            .padding(.leading)
//                            .multilineTextAlignment(.leading)
                    }
//                    .padding()
//                    .frame(maxWidth: 640, alignment: .leading)
                }
                .navigationBarTitle(terminology.title, displayMode: .inline)
                .navigationBarHidden(true)
                
            }
            .edgesIgnoringSafeArea(.top)
        }
        .padding()
    }
}

struct TerminoloyDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TerminoloyDetailView(terminology: terminologyData[0])
    }
}
