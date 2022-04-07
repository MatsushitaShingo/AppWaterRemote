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
            }.sheet(isPresented: $isShowingView1){
                ModalView()
            }.offset(x:250,y:-150)
            
            
            if isShowingView2 {
                Quiz2()
            } else {
                Button {
                    isShowingView2.toggle()
                } label: {
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
                }.offset(x:150,y:150)
            }
            
            
            if isShowingView3 {
                Quiz3()
            } else {
                Button {
                    isShowingView3.toggle()
                } label: {
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
                }.offset(x:-150,y:150)
            }
            
            
            if isShowingView4 {
                Quiz4()
            } else {
                Button {
                    isShowingView4.toggle()
                } label: {
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
                }.offset(x:-250,y:-150)
            }
            
            if isShowingView5 {
                Quiz5()
            } else {
                Button {
                    isShowingView5.toggle()
                } label: {
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
                }.offset(y:-300)
            }
        }
        
    }
    
}


struct ModalView: View {
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        Button(action: {
            self.presentation.wrappedValue.dismiss()
        }, label: {
            Text("Close")
        })
    }
}

struct StudyView_Previews: PreviewProvider {
    static var previews: some View {
        StudyView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
