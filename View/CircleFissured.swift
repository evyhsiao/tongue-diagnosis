//
//  CircleFissured.swift
//  Yolov5Swift
//
//  Created by ailab123 on 2021/5/21.
//

import SwiftUI

struct CircleFissured: View {
    var body: some View {
        Image("tongue1")
            .resizable()
            .frame(width: 250, height: 250)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 7))
            .shadow(radius: 7)
            
    }
}

struct CircleFissured_Previews: PreviewProvider {
    static var previews: some View {
        CircleFissured()
    }
}
