//
//  CrenatedTongue.swift
//  Yolov5Swift
//
//  Created by ailab123 on 2021/5/21.
//

import SwiftUI

struct CrenatedTongue: View {
    var body: some View {
        NavigationView {
            VStack{
                CircleCrenated()
                      .offset(y: -90)
                      .padding(.bottom, -300)
                // Spacer().frame(height:80)
                VStack(alignment: .center){
                    Text("【舌象特徵】").bold()
                        .font(.system(size:20))
                    Text("舌邊緣有牙齒壓迫的痕跡，多伴舌體胖大。\n")
                    Text("【臨床意義】").bold()
                        .font(.system(size:20))
                    Text("主脾虛、水濕內盛證。\n")
                    Text("【機理分析】").bold()
                        .font(.system(size:20))
                    Text("舌邊有齒痕，多因舌體胖大受牙齒擠壓所致。\n故多與胖大 舌同見。\n舌體不胖大而出現齒痕，是舌質嬌嫩的齒痕舌。\n舌淡胖大而潤，舌邊有齒痕，\n多由寒濕壅盛體內，或陽虛水濕內停而致；\n舌色淡紅，舌邊有齒痕，常見於脾 虛、氣虛；\n若舌紅腫脹滿口，舌邊有齒痕，為濕熱痰濁內蘊。\n此外，有先天性齒痕舌者，\n多見舌體不大舌淡紅而嫩，邊有輕微齒痕；\n病變中見之表明病情較輕，\n常見於小兒及氣血不足患者。\n")
                        .multilineTextAlignment(.center)
                }.position(x:211, y: 395)
                    
            }.background(Image("bg1"))
        }.navigationBarTitle("CrenatedTongue")
        
    }
}

struct CrenatedTongue_Previews: PreviewProvider {
    static var previews: some View {
        CrenatedTongue()
    }
}
