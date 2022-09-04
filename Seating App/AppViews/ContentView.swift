//
//  ContentView.swift
//  Seating App
//
//  Created by Jaime Fagnilli on 2021-10-09.
//

import SwiftUI

struct ContentView: View {
    
    @State var index = "Home View"
    @State var show = false
    
    var body: some View {
        
        ZStack{
            
            Color.gray.opacity(0.10)
                .ignoresSafeArea()
            
            (self.show ? Color.blue.opacity(0.01) : Color.clear).edgesIgnoringSafeArea(.all)
            
            ZStack(alignment: .leading) {
                
                VStack(alignment : .leading,spacing: 25){
                    
                    ForEach(dataSideMenu,id: \.self) {i in
                        
                        Button(action: {
                            
                            self.index = i
                            
                            withAnimation(.spring()){self.show.toggle()}
                        })  {
                            HStack{
                                Capsule()
                                    .fill(self.index == i ? Color.blue.opacity(0.2) : Color.clear)
                                    .frame(width: 5, height: 30)
                                
                                Text(i)
                                    .padding(.leading)
                                .foregroundColor(.primary)}
                        }
                    }
                }.padding(.leading)
                    .scaleEffect(self.show ? 1 : 0)
                
                
                ZStack(alignment: .topTrailing) {
                    MainView(show: self.$show,index: self.$index)
                        .scaleEffect(self.show ? 0.8 : 1)
                        .offset(x: self.show ? 160 : 0,y : self.show ? 50 : 0)
                        .disabled(self.show ? true : false)
                }
            }
        }
    }
}

struct MainView : View {
    
    @Binding var show : Bool
    @Binding var index : String
    
    var body : some View{
        
        VStack(spacing: 0){
            
            ZStack{
                VStack{
                    
                    Button(action: {
                        withAnimation(.spring()){self.show.toggle()}  }) {
                            Text("Menu")
                                .font(.system(size: 30))
                                .fontWeight(.bold)
                                .foregroundColor(.primary)
                                .padding(.top, 150)

                            Spacer()
                            
                        }
                }
            }
            .padding(.horizontal)
            
            ZStack{
                
                HomeView().opacity(self.index == "Home View" ? 1 : 0)
                
                EnterClientData1().opacity(self.index == "Wheelchair Selector" ? 1 : 0)
                
                CaseStadyHomeView().opacity(self.index == "Study Cases" ? 1 : 0)
                
                WheelchairModelsView().opacity(self.index == "Wheelchair Models" ? 1 : 0)
                
                TerminologyView().opacity(self.index == "Terminology" ? 1 : 0)
                
                StudyQuiz().opacity(self.index == "Study Quiz" ? 1 : 0)
            }
        }
        .cornerRadius(15)
        .padding(.horizontal, 9.0)
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}
