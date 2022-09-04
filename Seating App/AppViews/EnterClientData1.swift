//
//  EnterClientData1.swift
//  Wheelchairs App
//
//  Created by Jaime Fagnilli on 2020-07-26.
//  Copyright © 2020 Jaime Fagnilli. All rights reserved.
//

import SwiftUI

class EnterDataProfile1: ObservableObject {
    
    @Published var functionalTransfer: Int = 0
    @Published var functionalAmbulation: Int = 0
    @Published var cognitiveStatus: Bool = false
    @Published var pressureUlcer: Int = 0
    @Published var width: Int =  0
    @Published var depth: Int = 0
    @Published var seatToFloor: Int = 0
    
    @Published var spine: Int = 0
    @Published var knee: Int = 0
    @Published var ankle: Int = 0
    @Published var pelvic: Int = 0
    @Published var edemaLE: Bool = false
    @Published var sliding: Bool = false
    @Published var trunkStatus: Bool = false
    @Published var lowerBackPain: Bool = false
    @Published var upperExtremityPain: Bool = false
    
    @Published var studentRecommendations: String = ""
    @Published var studentRecommendations1: String = ""
    @Published var studentRecommendations2: String = ""
    @Published var studentRecommendations3: String = ""
    
    @Published var riskSkin: Bool = false
    
    @Published var weight: Double = 0
    
}


struct EnterClientData1: View {
    
    @ObservedObject  var clients = EnterDataProfile1()
    
    
    var dimensionWidth = ["14","16","18","20","22","24","26","28"]
    var dimensionDepth = ["14","16","18","20","22","24","26","28"]
    
    
    var woundStageA = ["", "Stage I", "Stage II", "Stage III", "Stage IV"]
    
    var functionalTransfersA = ["Status"," pA", "SARA", "Ceiling","Indep"]
    var functionalAmbulationsA = ["W/C","Legs", "Arms/Legs", "Arms"  ]
    var spineDeformitiesA = ["None ", "Scoliosis", "Kyphosis", "Lordosis" ]
    var pelvicDeformitiesA = ["None ","Obliquity", "Rotation", "Ant Tilt", "Post Tilt"]
    var kneeDeformitiesA = ["None", "Flexed", "Extended"]
    var ankleDeformitiesA = ["None ", "Dorflex", "PlantFlex", "Inverted", "Everted"]
    
    var body: some View {
        
        ZStack {
            
            NavigationView {
                
                Form {
                    
                    Section (header: Text("Functional Status").fontWeight(.heavy)) {
                        VStack(alignment: .leading) {
                            Section(header: Text("Functional Transfer"))
                            {
                                VStack {
                                    HStack {
                                        Picker("Funtional Transfer", selection: $clients.functionalTransfer){
                                            ForEach(0..<functionalTransfersA.count, id: \.self) {
                                                Text(self.functionalTransfersA[$0]).tag($0)
                                            }
                                        }.pickerStyle(SegmentedPickerStyle())
                                        
                                    }
                                }
                            }
                            
                            Section(header: Text("Functional Ambulation"))
                            {
                                VStack {
                                    HStack {
                                        Picker("Funtional Ambulation",selection: $clients.functionalAmbulation){
                                            ForEach(0..<functionalAmbulationsA.count, id: \.self){
                                                Text(self.functionalAmbulationsA[$0]).tag($0)
                                            }
                                        }.pickerStyle(SegmentedPickerStyle())
                                    }
                                }
                            }
                        }
                    }
                    
                    Section (header: Text("Deformities Status").fontWeight(.heavy)) {
                        VStack(alignment: .leading) {
                            
                            Section(header: Text("Spine Deformities"))
                            {
                                VStack {
                                    HStack {
                                        Picker("None", selection: $clients.spine){
                                            ForEach(0..<spineDeformitiesA.count, id: \.self) {
                                                Text(self.spineDeformitiesA[$0]).tag($0)
                                            }
                                        }.pickerStyle(SegmentedPickerStyle())
                                    }
                                }
                            }
                            
                            Section(header: Text("Pelvic Deformities"))
                            {
                                VStack {
                                    HStack {
                                        Picker("None", selection: $clients.pelvic){
                                            ForEach(0..<pelvicDeformitiesA.count, id: \.self) {
                                                Text(self.pelvicDeformitiesA[$0]).tag($0)
                                            }
                                        }.pickerStyle(SegmentedPickerStyle())
                                    }
                                }
                            }
                            
                            Section(header: Text("Knee Deformities")) {
                                VStack {
                                    HStack {
                                        Picker("None", selection: $clients.knee){
                                            ForEach(0..<kneeDeformitiesA.count, id: \.self) {
                                                Text(self.kneeDeformitiesA[$0]).tag($0)
                                            }
                                        }.pickerStyle(SegmentedPickerStyle())
                                    }
                                }
                                
                                VStack(alignment: .leading){
                                    Text("Ankle Deformities")
                                    
                                    HStack {
                                        Picker("None", selection: $clients.ankle){
                                            ForEach(0..<ankleDeformitiesA.count, id: \.self) {
                                                Text(self.ankleDeformitiesA[$0]).tag($0)
                                            }
                                        }.pickerStyle(SegmentedPickerStyle())
                                    }
                                }
                            }
                        }
                    }
                    
                    Section (header: Text("Skin Integrity Status").fontWeight(.heavy)) {
                        VStack(alignment: .leading) {
                            
                            Section {
                                VStack {
                                    HStack {
                                        HStack {
                                            Toggle("Wound on coccyx", isOn: $clients.riskSkin)}
                                        if clients.riskSkin {Text("Yes")}  else {Text("No")}
                                    }
                                }
                                
                            }
                            Section {
                                VStack {
                                    HStack {
                                        Picker("Wound Stage", selection: $clients.pressureUlcer){
                                            ForEach(0..<woundStageA.count, id: \.self){
                                                Text(self.woundStageA [$0]).tag($0)
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    
                    Section (header: Text("Additional issues").fontWeight(.heavy)) {
                        VStack (alignment: .leading, spacing: 10) {
                            
                            Section {
                                VStack {
                                    HStack {
                                        HStack {
                                            Toggle("Trunk control Impaired", isOn: $clients.trunkStatus)}
                                        if clients.trunkStatus {Text("Yes")}  else {Text("No")}
                                    }
                                }
                                
                            }
                            
                            Section {
                                VStack {
                                    HStack {
                                        HStack {
                                            Toggle("Sliding", isOn: $clients.sliding)}
                                        if clients.sliding {Text("Yes")}  else {Text("No")}
                                    }
                                }
                            }
                            
                            Section {
                                VStack {
                                    HStack {
                                        HStack {
                                            Toggle("Edema LE", isOn: $clients.edemaLE)}
                                        if clients.edemaLE {Text("Yes")}  else {Text("No")}
                                    }
                                }
                            }
                            
                            Section {
                                VStack {
                                    HStack {
                                        HStack {
                                            Toggle("Cognition severely  Impaired", isOn: $clients.cognitiveStatus)}
                                        if clients.cognitiveStatus {Text("Yes")}  else {Text("No")}
                                    }
                                }
                            }
                            Section {
                                VStack {
                                    HStack {
                                        HStack {
                                            Toggle("Lower Back pain", isOn: $clients.lowerBackPain)}
                                        if clients.lowerBackPain {Text("Yes")}  else {Text("No")}
                                    }
                                }
                            }
                            Section {
                                VStack {
                                    HStack {
                                        HStack {
                                            Toggle("Upper Extremities pain", isOn: $clients.upperExtremityPain)}
                                        if clients.upperExtremityPain {Text("Yes")}  else {Text("No")}
                                    }
                                }
                            }
                            
                        }
                    }
                    
                    
                    Section (header: Text("Client's measurements").fontWeight(.heavy))  {
                        
                        VStack {
                            HStack {
                                Slider(value: $clients.weight, in: 20...500)
                                Text("Body Weight: \(clients.weight, specifier: "%.0f")") }
                        }
                        VStack {
                            HStack {
                                Picker("Width:", selection: $clients.width){
                                    ForEach(0 ..< 37){
                                        Text("\($0)")
                                    }
                                }
                            }
                        }
                        
                        VStack {
                            HStack {
                                Picker("Depth:", selection: $clients.depth){
                                    ForEach(0 ..< 21){
                                        Text("\($0)")
                                    }
                                }
                            }
                        }
                        
                        VStack {
                            HStack {
                                Picker("Seat to Floor Height:", selection: $clients.seatToFloor){
                                    ForEach(0 ..< 21){
                                        Text("\($0)")
                                    }
                                }
                            }
                        }
                    }
                    
                    Section(header: Text("Student Section").fontWeight(.heavy)) {
                        VStack(alignment: .leading, spacing: 10){
                            Text("Write your recommendations ")
                            HStack {
                                
                                TextField("Type of wheelchair" , text: $clients.studentRecommendations )
                            }
                            
                            HStack {
                                
                                TextField("Wheelchair's accesories" , text: $clients.studentRecommendations1 )
                            }
                            
                            HStack {
                                
                                TextField("Type of cushion" , text: $clients.studentRecommendations3 )
                            }
                            
                            HStack {
                                
                                TextField("Wheelchair's dimensions" , text: $clients.studentRecommendations2 )
                            }
                            
                        }
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                    }
                    
                    Section(header: Text("Seating System Recommended")
                        .fontWeight(.heavy)){
                            NavigationLink(destination: WheelchairClient(clients: clients)) {
                                HStack {
                                    Image(systemName: "figure.roll")
                                    Text("Press to select wheelchair")
                                }
                            }
                        }
                    Section(header: Text("To Clear Data") .fontWeight(.heavy)) {
                        Button(action: {
                            clearAll()
                        }, label: {
                            HStack {
                                Image(systemName: "slider.horizontal.below.square.filled.and.square")
                                Text("Press Here").foregroundColor(.primary)}
                        })
                        
                    }.foregroundColor(.gray)
                    
                }
                .navigationBarTitle("Enter Client Data", displayMode: .inline)
                
                
            }.padding(.bottom)
        }
    }
    
    func clearAll() {
        
        clients.functionalTransfer = 0
        clients.functionalAmbulation = 0
        clients.cognitiveStatus = false
        clients.pressureUlcer = 0
        clients.width =  0
        clients.depth = 0
        clients.seatToFloor = 0
        
        clients.spine  = 0
        clients.knee  = 0
        clients.ankle  = 0
        clients.pelvic  = 0
        clients.edemaLE  = false
        clients.riskSkin  = false
        clients.sliding  = false
        clients.trunkStatus  = false
        
        clients.studentRecommendations = ""
        clients.studentRecommendations1  = ""
        clients.studentRecommendations2 = ""
        clients.weight = 0
        
    }
}


struct EnterClientData1_Previews: PreviewProvider {
    static var previews: some View {
        EnterClientData1()
           

    }
}
