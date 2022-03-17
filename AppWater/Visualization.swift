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
    
    @State fileprivate var isShowingView: Bool = false
    @State fileprivate var record = 0
    @State fileprivate var select1 = 1
    @State fileprivate var select2 = 5
    @State fileprivate var select3 = 10
    @State fileprivate var select4 = 50
    @State fileprivate var select5 = 100
    @State fileprivate var select6 = 500
    @State fileprivate var select7 = 1000
    @State fileprivate var select8 = 5000
    
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
                    Button{
                        record = select1
                    }label: {
                        Text("トイレ")
                            .foregroundColor(.red)
                            .font(.largeTitle)
                            .background(Circle()
                                .fill(Color.blue)
                                .frame(width:80, height:80))
                    }
                    Text("手洗い")
                        .foregroundColor(.red)
                        .font(.largeTitle)
                        .background(Circle()
                            .fill(Color.blue)
                            .frame(width:80, height:80))
                    Text("お風呂")
                        .foregroundColor(.red)
                        .font(.largeTitle)
                        .background(Circle()
                            .fill(Color.blue)
                            .frame(width:80, height:80))
                    Text("歯磨き")
                        .foregroundColor(.red)
                        .font(.largeTitle)
                        .background(Circle()
                            .fill(Color.blue)
                            .frame(width:80, height:80))
                }.offset(y:-50)
                HStack{
                    Text("シャワ")
                        .foregroundColor(.red)
                        .font(.largeTitle)
                        .background(Circle()
                            .fill(Color.blue)
                            .frame(width:80, height:80))
                    Text("洗顔ー")
                        .foregroundColor(.red)
                        .font(.largeTitle)
                        .background(Circle()
                            .fill(Color.blue)
                            .frame(width:80, height:80))
                    Text("水まき")
                        .foregroundColor(.red)
                        .font(.largeTitle)
                        .background(Circle()
                            .fill(Color.blue)
                            .frame(width:80, height:80))
                    Text("お風呂")
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
