//
//  SwiftUIView.swift
//  test
//
//  Created by ailab123 on 2021/5/16.
//
import SwiftUI

struct CircleCrenated: View {
    var body: some View {
        Image("tongue2")
            .resizable()
            .frame(width: 250, height: 250)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 7))
            .shadow(radius: 7)
            
    }
}

struct CircleCrenated_Previews: PreviewProvider {
    static var previews: some View {
        CircleCrenated()
    }
}
