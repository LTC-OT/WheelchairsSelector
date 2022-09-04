//
//  WheelchairRowView.swift
//  wheelchair (iOS)
//
//  Created by Jaime Fagnilli on 2020-12-04.
//

import SwiftUI

struct WheelchairRowView: View {
    
    var wheelchair: Wheelchair
    
    var body: some View {
        HStack {
            Image(wheelchair.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFill()
                .clipShape(Circle())
                .frame(width: 70, height: 70, alignment: .center)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x: 2, y: 2)
                .cornerRadius(1000.0)
            
            VStack(alignment: .leading, spacing: 10) {
                Text(wheelchair.title)
                
                    .font(.body)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal)
                
                Text(wheelchair.headline)
                    .font(.caption)
                    .multilineTextAlignment(.leading)
                    .padding()
            }
        }
    }
}

struct WheelchairRowView_Previews: PreviewProvider {
    static var previews: some View {
        WheelchairRowView(wheelchair: wheelchairData[0])
            .padding()
    }
}
