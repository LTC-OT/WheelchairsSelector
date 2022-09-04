//
//  TerminologyView.swift
//  Seating App
//
//  Created by Jaime Fagnilli on 2022-01-05.
//

import SwiftUI

struct TerminologyView: View {
    
    @State var terminologies: [Terminology] = terminologyData
    
    @State private var searchText  =  ""
    @State var titles = terminologyData
    
    var body: some View {
        
        ZStack {
            Color.gray
                .ignoresSafeArea()
            
            NavigationView {
                List {
                    ForEach(terminologies) { item in
                        NavigationLink(
                            destination: TerminoloyDetailView(terminology: item) ) {
                                TerminologyRowView(terminology: item)
                            }
                    }
                }
                .navigationBarTitle("Terminoloy" , displayMode: .inline)
                .font(.title)
            }
            .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .automatic) ) {
            }
            .onChange(of: searchText) { searchText in
                
                if !searchText.isEmpty {
                    terminologies = titles.filter {$0.title.contains(searchText) }
                } else {
                    terminologies = titles
                }
            }
            .font(.subheadline)
        }
    }
}

struct TerminologyView_Previews: PreviewProvider {
    static var previews: some View {
        
        TerminologyView(terminologies: terminologyData)
    }
}
