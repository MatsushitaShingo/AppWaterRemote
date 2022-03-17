//
//  Visualization.swift
//  AppWater
//
//  Created by 松下慎吾 on 2022/03/15.
//

import SwiftUI

struct Visualization: View {
    
    @State private var isShowingView1: Bool = false
    
    var body: some View {
        
        VStack{
            VStack{
                Text("現在の節水料")
                    .font(.largeTitle)
                    .bold()
                Text("0L")
                Text("○○月○○日")
                    .padding()
            }.frame(width: 250, height:160, alignment: .bottomTrailing)
                .border(Color.red, width: 2) .offset(x:-400,y:-200)
            Image("夜景").clipShape(Circle())
            
            if isShowingView1 {
                selectView()
            } else {
                Button {
                    isShowingView1.toggle()
                } label: {
                    Color.blue
                        .frame(width:110,height: 110)
                    Text("選ぶ").foregroundColor(.red)
                }.offset(x:400,y:200)
            }
            Text("コップいっぱい")
                .offset(y:200)
        }
    }
}

struct selectView:View{
    
    @State private var isShowingView: Bool = false
    @State private var record = 0
    @State private var select1 = 1
    @State private var select2 = 5
    @State private var select3 = 10
    @State private var select4 = 50
    @State private var select5 = 100
    @State private var select6 = 500
    @State private var select7 = 1000
    @State private var select8 = 5000
    
    var body: some View {
        VStack{
            if isShowingView {
                Visualization()
            } else {
                Button {
                    isShowingView.toggle()
                } label: {
                    Text("記録する")
                }.offset(y:-100)
            }
            VStack{
                HStack{
                    Text("トイレ")
                        .foregroundColor(.red)
                        .font(.largeTitle)
                        .background(Circle()
                            .fill(Color.blue)
                            .frame(width:80, height:80))
                    Text("トイレ")
                        .foregroundColor(.red)
                        .font(.largeTitle)
                        .background(Circle()
                            .fill(Color.blue)
                            .frame(width:80, height:80))
                    Text("トイレ")
                        .foregroundColor(.red)
                        .font(.largeTitle)
                        .background(Circle()
                            .fill(Color.blue)
                            .frame(width:80, height:80))
                    Text("トイレ")
                        .foregroundColor(.red)
                        .font(.largeTitle)
                        .background(Circle()
                            .fill(Color.blue)
                            .frame(width:80, height:80))
                }.offset(y:-50)
                HStack{
                    Text("トイレ")
                        .foregroundColor(.red)
                        .font(.largeTitle)
                        .background(Circle()
                            .fill(Color.blue)
                            .frame(width:80, height:80))
                    Text("トイレ")
                        .foregroundColor(.red)
                        .font(.largeTitle)
                        .background(Circle()
                            .fill(Color.blue)
                            .frame(width:80, height:80))
                    Text("トイレ")
                        .foregroundColor(.red)
                        .font(.largeTitle)
                        .background(Circle()
                            .fill(Color.blue)
                            .frame(width:80, height:80))
                    Text("トイレ")
                        .foregroundColor(.red)
                        .font(.largeTitle)
                        .background(Circle()
                            .fill(Color.blue)
                            .frame(width:80, height:80))
                }
            }
        }
    }
}


struct Visualization_Previews: PreviewProvider {
    static var previews: some View {
        selectView()
            .previewInterfaceOrientation(.landscapeRight)
    }
}
