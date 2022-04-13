//
//  StudyView.swift
//  AppWater
//
//  Created by 松下慎吾 on 2022/03/15.
//

import SwiftUI

struct StudyView: View {
    @State private var isShowingView1: Bool = false
    @State private var isShowingView2: Bool = false
    @State private var isShowingView3: Bool = false
    @State private var isShowingView4: Bool = false
    @State private var isShowingView5: Bool = false
    
    var body: some View {
        ZStack{
            Button(action: {self.isShowingView1.toggle()}){
                ZStack{
                    Image(systemName: "drop.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                        .foregroundColor(.yellow)
                    Text("クイズ１")
                        .padding(.vertical)
                        .foregroundColor(.white)
                }
            }.fullScreenCover(isPresented: $isShowingView1){
                ModalView1()
            }.offset(x:250,y:-150)
            
            
            Button(action: {self.isShowingView2.toggle()}){
                ZStack{
                    Image(systemName: "drop.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                        .foregroundColor(.red)
                    Text("クイズ2")
                        .padding(.vertical)
                        .foregroundColor(.white)
                }
            } .fullScreenCover(isPresented: $isShowingView2){
                ModalView2()
            }.offset(x:150,y:150)
            
                

            Button(action: {self.isShowingView3.toggle()}){
                ZStack{
                    Image(systemName: "drop.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                        .foregroundColor(.blue)
                    Text("クイズ3")
                        .padding(.vertical)
                        .foregroundColor(.white)
                }
            }.fullScreenCover(isPresented: $isShowingView3){
                ModalView3()
            } .offset(x:-150,y:150)
            
               
            
            Button(action: {self.isShowingView4.toggle()}){
                ZStack{
                    Image(systemName: "drop.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                        .foregroundColor(.purple)
                    Text("クイズ4")
                        .padding(.vertical)
                        .foregroundColor(.white)
                }
            }.fullScreenCover(isPresented: $isShowingView4){
                ModalView4()
            } .offset(x:-250,y:-150)
            
            Button(action: {self.isShowingView5.toggle()}){
                ZStack{
                    Image(systemName: "drop.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                        .foregroundColor(.green)
                    Text("クイズ5")
                        .padding(.vertical)
                        .foregroundColor(.white)
                }
            }.fullScreenCover(isPresented: $isShowingView5){
                ModalView5()
            }.offset(y:-300)
        }
        
    }
    
}


struct StudyView_Previews: PreviewProvider {
    static var previews: some View {
        StudyView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

