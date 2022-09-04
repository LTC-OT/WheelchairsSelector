//
//  WheelchairClient.swift
//  Seating App
//
//  Created by Jaime Fagnilli on 2022-01-09.
//

import SwiftUI

struct WheelchairClient: View {
    
    @ObservedObject  var clients = EnterDataProfile1()
    
    var body: some View {
        ZStack {
            
            ScrollView {
                Spacer()
                VStack {
                    Section {
                        VStack (alignment: .leading, spacing: 10) {
                            
                            EnterClientData2(clients: clients)
                            
                        }
                        .padding()
                        .frame(maxWidth: 640, alignment: .leading)
                    }
                }
            }
        }
    }
}

struct WheelchairClient_Previews: PreviewProvider {
    static var previews: some View {
        WheelchairClient()
    }
}
