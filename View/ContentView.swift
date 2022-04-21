
//
//  ImagePicker.swift
//  Yolov5Swift
//
//  Created by ailab123 on 2021/5/21.
//

import Foundation
import SwiftUI

struct ContentView: View {
    var image: UIImage
    
    @State private var showSheet: Bool = false
    @State private var showImagePicker: Bool = false
    @State private var sourceType: UIImagePickerController.SourceType = .camera
    @State private var myimage: UIImage? // = UIImage(named:"placeholder")!
    @State private var flag: Bool = false
    @State var myresult: [Object] = []
    @State var mytime: Double = 0
    
    init() {
        image = UIImage(named:"placeholder")!
//        myimage = UIImage(named:"placeholder")
    }

    var body: some View {
        NavigationView {
            VStack {
//
//                Image(uiImage: myimage ?? UIImage(named:"placeholder")!)
//                    .resizable()
//                    .frame(width: 280, height: 280)
//                    .overlay(Frame(frames: myresult, image: myimage ?? image))
                    //.shadow(radius: 7)
                    //.background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/)
                    //.overlay(Rectangle().stroke(Color.white, lineWidth: 7))
                    
                
//                Spacer().frame(height:30)
                
                Button("Choose Picture") {
                    self.showSheet = true
                }.padding()
                .frame(width:180,height:50)
                .background(Color.red)
                .foregroundColor(.white)
                .cornerRadius(12)
                .actionSheet(isPresented: $showSheet) {
                    ActionSheet(title: Text("Select Photo"),
                        message: Text("Choose"), buttons: [
                            .default(Text("Photo Library")) {
                                self.showImagePicker = true
                                self.sourceType = .photoLibrary
                            },
                            .default(Text("Camera")) {
                                self.showImagePicker = true
                                self.sourceType = .camera
                            },
                            .cancel()
                        ])
                }
                
                Spacer().frame(height:30)
                
                if myresult.count != 0 {
//                    Text("result: \(labels[myresult[0].label]) \(String(format: "%.2f", myresult[0].prob*100))%")
                    Image(uiImage: myimage ?? UIImage(named:"placeholder")!)
                        .resizable()
                        .frame(width: 280, height: 280)
//                        .aspectRatio(contentMode: .fit)
                        .overlay(Frame(frames: myresult, image: myimage ?? image))
                                    Text("time: \(String(format: "%.2fms", mytime))")
                    if (labels[myresult[0].label]) == "crenated tongue" {
                        NavigationLink(destination:CrenatedTongue()){
                            Text("See your result.")
                                .padding()
                                .frame(width:180,height:50)
                                .background(Color.green)
                                .foregroundColor(.black)
                                .cornerRadius(12)
                        }
                    } else if (labels[myresult[0].label]) == "fissured tongue" {
                        NavigationLink(destination:FissuredTongue()){
                            Text("See your result.")
                                .padding(20)
                                .foregroundColor(.black)
                        }
                    } else {
                        NavigationLink(destination:NormalTongue()){
                            Text("See your result.")
                                .padding(20)
                                .foregroundColor(.black)
                        }
                    }
                    } else {
                        Image(uiImage: myimage ?? UIImage(named:"placeholder")!)
                            .resizable()
                            .frame(width: 280, height: 280)
                        if mytime == -1
                        {
                            Text("Failed to detect. Please try again.")
                                .padding(20)
                        }
                    }
            }
            .navigationBarTitle("Tongue diagnosis")
            .background(Image("bg"))
        }
         .sheet(isPresented: $showImagePicker) {
            ImagePicker(image: $myimage, isShown: self.$showImagePicker, re: $myresult, time: $mytime, sourceType: self.sourceType)
            
        }
//        if myresult.count != 0 {
//            Image(uiImage: myimage ?? image)
//                .resizable()
////                .frame(width: 280, height: 280)
//                .aspectRatio(contentMode: .fit)
//                .overlay(Frame(frames: myresult, image: myimage ?? image))
//                            Text("time: \(String(format: "%.2fms", mytime))")
        }
        
    
}

struct Frame: View {
    let frames: [Object]
    let image: UIImage

    var resize: CGSize {
        var w: CGFloat = image.size.width
        var h: CGFloat = image.size.height
        if w < h {
            w = CGFloat(Int(w / h * maxLength / 32) * 32)
            h = maxLength
        } else {
            h = CGFloat(Int(h / w * maxLength / 32) * 32)
            w = maxLength
        }
        return CGSize(width: w, height: h)
    }
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                ForEach(0..<frames.count) { i in
                    frame(frame: frames[i],
                          scaleX: geometry.size.width / resize.width,
                          scaleY: geometry.size.height / resize.height)
                }
            }
        }
    }
    
    func frame(frame: Object, scaleX: CGFloat, scaleY: CGFloat) -> some View {
        ZStack(alignment: .topLeading) {
            Rectangle()
                .path(in: CGRect(x: CGFloat(frame.x) * scaleX,
                                 y: CGFloat(frame.y) * scaleY,
                                 width: CGFloat(frame.w) * scaleX,
                                 height: CGFloat(frame.h) * scaleY))
                .stroke(lineWidth: 3.0)
                .foregroundColor(.red)
            Text("\(labels[frame.label]) \(String(format: "%.2f", frame.prob*100))%")
                .padding(3)
                .foregroundColor(.black)
                .offset(x: CGFloat(frame.x) * scaleX,
                        y: CGFloat(frame.y) * scaleY - 25)
        }
    }
}
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        Group {
//            ContentView()
//        }
//    }
//}
