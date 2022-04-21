//
//  NormalTongue.swift
//  Yolov5Swift
//
//  Created by ailab123 on 2021/5/21.
//

import SwiftUI

struct NormalTongue: View {
    var body: some View {
        NavigationView {
            VStack{
                CircleNormal()
                      .offset(y: -90)
                      .padding(.bottom, -300)
                // Spacer().frame(height:80)
                VStack(alignment: .center){
                    Text("【舌象特徵】").bold()
                        .font(.system(size:20))
                    Text("舌體柔軟，活動自如，顏色淡紅，\n舌面鋪有薄薄的、顆粒均勻、乾濕適中的白苔\n")
                    Text("【臨床意義】").bold()
                        .font(.system(size:20))
                    Text("無異狀，身體狀態正常\n")
//                    Text("【機理分析】").bold()
//                        .font(.system(size:20))
//                    Text("裂紋舌多由舌體失養，\n舌面乳頭萎縮或組織皸裂所致。\n是 全身營養不良的一種表現。\n舌色淡白而裂者，是血虛之候，\n多為血虛血不上榮於舌所致，\n故《辨舌指南》認為：\n「有紋者血衰也。紋少，紋淺者衰之微；\n紋多、紋深者衰之甚也。」\n舌色紅絳而裂，則由熱盛傷津，\n或陰虛火旺，陰津耗損，\n舌失濡養所致。全舌絳色，\n或有橫直裂紋而短小者，表明陰虛液涸。\n舌色淡白胖嫩邊有齒痕又兼見裂紋多為脾虛氣弱，\n舌體失養所致。\n")
//                        .multilineTextAlignment(.center)
                }.position(x:211, y: 275)
                    
            }.background(Image("bg1"))
        }.navigationBarTitle("NormalTongue")
        
    }
}

struct NormalTongue_Previews: PreviewProvider {
    static var previews: some View {
        NormalTongue()
    }
}
