//
//  CaseStadyHomeView.swift
//  Seating App
//
//  Created by Jaime Fagnilli on 2022-04-30.
//

import SwiftUI

struct CaseStadyHomeView: View {
    @State private var isShowing: Bool  = false
    @State private var show = false
    
    var body: some View {
        ZStack {
            ScrollView(showsIndicators: false) {
                VStack {
                    Text("Study Cases")
                        .font(.title2)
                        .bold()
                        .padding()
                    
                    Text("Select one of the cases")
                        .font(.headline)
                        .padding()
                    HStack {
                        
                        HeaderCase1()
                        HeaderCase2()
                        
                    }
                    HStack {
                        HeaderCase3()
                        HeaderCase4()
                    }
                }
                .padding()
                .padding(.bottom, 30)
                Spacer()
                
                
                ZStack {
                    
                    Text("Manual Standard wheelchair is the most common equipment provided to facilitate ambulation ")
                        .foregroundColor(.blue)
                        .font(.body)
                        .bold()
                        .frame(width: 260, height: 200)
                        .offset(y:  show ? 50 : 5)
                    
                    Image ("STD")
                        .resizable()
                        .frame(width: 260, height: 230, alignment: .center)
                        .cornerRadius(20)
                        .background(Color.white.cornerRadius(20))
                        .shadow(color: Color.gray, radius: 4, x: 3, y: 3)
                    
                        .offset(y: show ? -100 : 0)
                        .scaleEffect(show ? 1.2 : 1)
                        .rotationEffect(Angle(degrees: show ? 0 : 0))
                        
                        .rotation3DEffect(
                            Angle(degrees: show ? 30 : 0),
                            axis: (x: 1, y: 0, z: 0),
                            anchor: .center,
                            anchorZ: 0.0,
                            perspective: 1
                        )
                    
                        .onTapGesture {
                            withAnimation(.spring()) {
                                show.toggle()
                            }
                        }
                    }
                
                
                
            }
        }
    }
}

struct CaseStadyHomeView_Previews: PreviewProvider {
    static var previews: some View {
        CaseStadyHomeView()
    }
}
