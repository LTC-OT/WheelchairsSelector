
//
//  WheelchairModelsView.swift
//  Wheelchairs App
//
//  Created by Jaime Fagnilli on 2020-12-27.
//  Copyright © 2020 Jaime Fagnilli. All rights reserved.
//

import SwiftUI

struct WheelchairModelsView: View {
    
    var wheelchairs: [Wheelchair] = wheelchairData
    
    var body: some View {
        ZStack {
            Color.gray
                .ignoresSafeArea()
            
            NavigationView  {
                List {
                    ForEach(wheelchairs) { item in
                        NavigationLink(
                            destination: WheelchairDetailView(wheelchair: item)) {
                                WheelchairRowView(wheelchair: item) }
                    }
                }
                .navigationBarTitle("Wheelchairs" , displayMode: .inline)
                .font(.title)
            }
        }
    }
}


struct WheelchairModelsView_Previews: PreviewProvider {
    static var previews: some View {
        
        WheelchairModelsView(wheelchairs: wheelchairData)
        
    }
}
