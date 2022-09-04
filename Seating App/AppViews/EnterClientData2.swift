//
//  EnterClientData.swift
//  Wheelchairs App
//
//  Created by Jaime Fagnilli on 2020-07-25.
//  Copyright © 2020 Jaime Fagnilli. All rights reserved.
//

import SwiftUI

struct Marco: ViewModifier {
    
    func body (content: Content) -> some View {
        content
            .padding()
            .frame( maxWidth: .infinity , maxHeight: .infinity, alignment: .leading)
            .foregroundColor(.black)
            .background(.white)
            .cornerRadius(10)
            .shadow(color: .gray, radius: 3)
            .padding()
    }
    
}

extension View {
    func frameStyle() -> some View {
        modifier(Marco())
    }
}


struct EnterClientData2: View {
    
    @ObservedObject  var clients = EnterDataProfile1()
    
    var body: some View {
        
        Group {
            ScrollView {
                VStack {
                    
                    Text("Seating System Recommendations")

                    .font(.system(size: 25, weight: .regular, design: .serif))
                    .padding()
                    .frame( maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                    .border(.gray)
                    .padding()
                    
                }
                Section (header: Text("Student's Recommendations")
                    .font(.system(size: 18, weight: .regular, design: .serif))
                    .padding()
                    .frame( maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                    .border(.gray)
                    .padding()

                    )  {
                        VStack(alignment: .leading, spacing: 10){
                            Text ("Type of wheelchair: \(clients.studentRecommendations)")
                            Text ("Wheelchair's accesories: \(clients.studentRecommendations1)")
                            Text("Type of cushion: \(clients.studentRecommendations3)")
                            Text ("Wheelchair's dimensions: \(clients.studentRecommendations2)")
                        }
                        .frameStyle()

                    }
                    .padding(.top)
                
                Spacer()
                
                Section (header: Text("Selector Recommendations")
                    .font(.system(size: 18, weight: .regular, design: .serif))
                    .padding()
                    .frame( maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                    .border(.gray)
                    .padding())  {
                        
                        Group {
                            VStack (alignment: .leading, spacing: 10) {
                                
                                VStack  {
                                    Text(getStandard())
                                    Text (getupperExtremityPain())
                                }
                                .padding()
                                .frame( maxWidth: .infinity , maxHeight: .infinity, alignment: .leading)
                                .foregroundColor(.black)                                .background(.white)
                                .cornerRadius(10)
                                .shadow(color: .gray, radius: 3)
                                .padding()
                                
                                VStack (alignment: .leading, spacing: 10) {
                                    Text(getAnti())
                                    Text(tiltBack())
                                    Text(cushion1())
                                    Text(cushion2())
                                    Text(getSlide())
                                    Text(getSpine())
                                    Text(getLowerBackPain())
                                    
                                }
                                .frameStyle()
                                
                                VStack(alignment: .leading, spacing: 10) {
                                    Text(getPelvic())
                                    Text(getAnkle())
                                    Text(getKnee())
                                    Text(getTrunk())
                                    Text(getEdema())
                                    Text(getcoccyx())
                                }
                                .frameStyle()
                                
                                VStack {
                                    Text(getweight())
                                }
                                .frameStyle()

                            }
                            .multilineTextAlignment(.leading)
                           
                        }
                        
                        
                        
                        
                        Spacer()
                    }
                
                Section (header: Text("Wheelchair Dimensions")
                    .font(.system(size: 18, weight: .regular, design: .serif))
                    .padding()
                    .frame( maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                    .border(.gray)
                    .padding())  {
                        VStack(alignment: .leading, spacing: 10) {
                            VStack(alignment: .leading, spacing: 10) {
                                Text("Width: \(clients.width)")
                                Text("Depth: \(clients.depth)")
                                Text("Seat to Floor:\(clients.seatToFloor)")
                            }
                            .frameStyle()

                            
                        }
                    }
                    .padding(.top)
            }
            .padding(.bottom)
            
            
        }
        
    }
    
    
    func getStandard() -> String {
        var std = ""
        if clients.functionalTransfer == 1 || clients.functionalTransfer == 2 || clients.functionalTransfer == 3 || clients.functionalTransfer == 4 && clients.trunkStatus == false {
            std = "Consider a Standard Wheelchair"
        } else  if clients.trunkStatus == true {
            std = "Consider a Specialty Wheelchair"
        }
        else {
            std = ""
        }
        return(std)
    }
    
    func getAnti() -> String {
        var anti = ""
        if clients.functionalTransfer == 1 && clients.trunkStatus == false && clients.cognitiveStatus == true || clients.functionalTransfer == 4 && clients.trunkStatus == false && clients.cognitiveStatus == true {
            anti = "Consider a STD Wheelchair with  anti rolling back system"
        } else {
            anti = ""
        }
        return (anti)
    }
    
    func tiltBack() -> String {
        var tilt = ""
        if clients.functionalTransfer == 2  || clients.functionalTransfer == 3 && clients.trunkStatus == true {
            tilt = "If there is a significant skin integrity issue consider a TIS wheelchair with a contour back seat with lateral support."
            
        } else {
            tilt = ""
        }
        return (tilt)
    }
    
    func cushion1() -> String {
        var cush = ""
        if clients.pressureUlcer == 1 || clients.pressureUlcer == 2  {
            cush = "Consider to provide a ROHO or Vicair cushion"
        }else {
            cush = ""
        }
        return (cush)
    }
    
    func cushion2() -> String {
        var cush2 = ""
        if clients.pressureUlcer == 3 || clients.pressureUlcer == 4 {
            cush2 = "Consider to provide a ROHO or Vicair cushion and a TIS wheelchair to manage skin integrity issues"
        }else {
            cush2 = ""
        }
        return (cush2)
    }
    
    func getSpine() -> String {
        var spine = ""
        if clients.spine == 1 { spine = "For Scoleosis:Consider to provide a backseat with scoleosis management"
        }
        else if clients.spine == 2 { spine = "For Kyphosis: Consider to provide an adjustable backseat to accomodate deformity"}
        else if clients.spine == 3 {spine = "For significant lordosis: Consider to provide  a dedicated back seat support to manage curvature"}
        else {
            spine = ""
        }
        return (spine)
    }
    
    
    func getSlide() -> String {
        var slide = ""
        if clients.sliding == true {
            slide = "For sliding issues consider an agressive contour cushion or lower down wheelchair seat (posteriously) or insert a wedge under cushion or an abductor pommel"}
        else {
            slide = ""
        }
        return (slide)
    }
    
    func getPelvic() -> String {
        var pelvic = ""
        if clients.pelvic == 1 { pelvic = "For a pelvic obliquity: Consider a cushion to manage obliquity"}
        else if clients.pelvic == 2 { pelvic = "For a pelvic rotation: Consider a cushion to manage pelvic rotation"}
        else if clients.pelvic == 3 {pelvic = "For a pelvic anterior tilt : Consider a cushion to mange anterior tilt"}
        else if clients.pelvic == 4 {pelvic = "For a pelvic posterior tilt: Consider a cushion to manage  posterior tilt"}
        else {
            pelvic = ""
        }
        return (pelvic)
    }
    
    func getAnkle() -> String {
        var ankle = ""
        if clients.ankle == 1 || clients.ankle == 2 || clients.ankle == 3 || clients.ankle == 4 {
            ankle = "For ankle deformity: dorsiflexed anguled foot plate "
        }
        else {
            ankle = ""
        }
        return (ankle)
    }
    
    func getKnee() -> String {
        var knee = ""
        if clients.knee == 1 { knee = "For knee deformity in flexion: Special foot rest for knee accomodation"}
        else if clients.knee == 2 { knee = "For  knee deformity in extension: elevated leg rest"}
        else {
            knee = ""
        }
        return (knee)
    }
    
    func getTrunk() -> String {
        var trunk = ""
        if clients.trunkStatus == true {
            trunk = "Unable to mainatin upright position: if it is a STD wheelchair consider to add a contour back seat with lateral support, otherwise consider a TIS to manage trunk control deficits"}
        else {
            trunk = ""
        }
        return (trunk)
    }
    
    func getEdema() -> String {
        var edema = ""
        if clients.edemaLE == true {
            edema = "For LE edema: elevating leg rest"}
        else {
            edema = ""
        }
        return (edema)
    }
    
    func getcoccyx() -> String {
        var coccyx   = ""
        if clients.riskSkin == true {
            coccyx = "For wound on coccyx consider ROHO or Vicair, if wound stage is III or IV consider a TIS W/C as well"}
        else {
            coccyx = ""
        }
        return (coccyx)
    }
    
    
    func getweight() -> String {
        var weight   = ""
        if clients.weight >= 250 {
            weight = "Consider to provide a BARIATRIC SIZE for the selected wheelchair"}
        else {
            weight = ""
        }
        return (weight)
    }
    func getLowerBackPain () -> String {
        var lbPain = ""
        if clients.lowerBackPain == true {
            lbPain = "Consider to provide lumbar support to the recommended wheelchair"
        } else {
            lbPain = ""
        }
        return (lbPain)
    }
    func getupperExtremityPain () -> String {
        var upExPain = ""
        if clients.upperExtremityPain == true  && clients.functionalAmbulation ==  3 {
            upExPain = "Consider to provide light-weight wheelchair"
        } else {
            upExPain = ""
        }
        return (upExPain)
    }
    
    
   
   
    
}



struct EnterClientData2_Previews: PreviewProvider {
    static var previews: some View {
        EnterClientData2()
            
    }
}
