//
//  StudyView.swift
//  AppWater
//
//  Created by 松下慎吾 on 2022/03/15.
//

import SwiftUI


struct StudyView: View {
    @State  var isShowingView1: Bool = false
    @State private var isShowingView2: Bool = false
    @State private var isShowingView3: Bool = false
    @State private var isShowingView4: Bool = false
    @State private var isShowingView5: Bool = false
    
    var body: some View {
        ZStack{
            Image("クイズ機能背景")
                .ignoresSafeArea()
            
            Button(action: {self.isShowingView1.toggle()}){
                ZStack{
                    Image(systemName: "drop.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                        .foregroundColor(.yellow)
                    Text("地下水")
                        .padding(.vertical)
                        .foregroundColor(.white)
                }
            }.fullScreenCover(isPresented: $isShowingView1){
                ModalView1()
            }.offset(x:380,y:-110)
            
            
            Button(action: {self.isShowingView2.toggle()}){
                ZStack{
                    Image(systemName: "drop.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                        .foregroundColor(.red)
                    Text("節水")
                        .padding(.vertical)
                        .foregroundColor(.white)
                }
            } .fullScreenCover(isPresented: $isShowingView2){
                ModalView2()
            }.offset(x:240,y:250)
            
                

            Button(action: {self.isShowingView3.toggle()}){
                ZStack{
                    Image(systemName: "drop.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                        .foregroundColor(.blue)
                    Text("熊本の水")
                        .padding(.vertical)
                        .foregroundColor(.white)
                }
            }.fullScreenCover(isPresented: $isShowingView3){
                ModalView3()
            } .offset(x:-350,y:110)
            
               
            
            Button(action: {self.isShowingView4.toggle()}){
                ZStack{
                    Image(systemName: "drop.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                        .foregroundColor(.purple)
                    Text("歴史")
                        .padding(.vertical)
                        .foregroundColor(.white)
                }
            }.fullScreenCover(isPresented: $isShowingView4){
                ModalView4()
            } .offset(x:-230,y:-120)
            
            Button(action: {self.isShowingView5.toggle()}){
                ZStack{
                    Image(systemName: "drop.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                        .foregroundColor(.green)
                    Text("世界の水")
                        .padding(.vertical)
                        .foregroundColor(.white)
                }
            }.fullScreenCover(isPresented: $isShowingView5){
                ModalView5()
            }.offset(x:50,y:-300)
        }
        
    }
    
}


struct StudyView_Previews: PreviewProvider {
    static var previews: some View {
        StudyView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

