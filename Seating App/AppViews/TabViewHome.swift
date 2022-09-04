//
//  TabViewHome.swift
//  Seating App
//
//  Created by Jaime Fagnilli on 2022-03-18.
//

import SwiftUI

struct TabViewHome: View {
    
    var body: some View {
        
        TabView {
            
            HomeView()
                .tabItem {
                    Image(systemName: "filemenu.and.cursorarrow")
                    Text("Home")
                }
                .tag(0)
            
            EnterClientData1()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Assessment")
                }
                .tag(1)
            
            WheelchairModelsView()
                .tabItem {
                    Image(systemName: "doc.text")
                    Text("Wheelchair Catalog")
                    
                }
                .tag(2)
            
            
            TerminologyView()
                .tabItem {
                    Image(systemName: "doc.text")
                    Text("Terminology")
                    
                }
                .tag(3)
            
            
            
            CaseStadyHomeView()
                .tabItem {
                    Image(systemName: "doc.text")
                    Text("Study Cases")
                }
                .tag(4)
            
            StudyQuiz()
                .tabItem {
                    Image(systemName: "square.and.pencil")
                    Text("Wheelchair Quiz")
                }
                .tag(5)
        }
    }
}

struct TabViewHome_Previews: PreviewProvider {
    static var previews: some View {
        TabViewHome()
    }
}
