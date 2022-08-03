//
//  Quiz4.swift
//  AppWater
//
//  Created by 田中翔大 on 2022/04/07.
//

import SwiftUI

struct ModalView4: View {
    
    @State private var isActive = false
    @Environment(\.presentationMode)var PresentationMode
   
    var body: some View {
        NavigationView{
            NavigationLink(destination: Quiz4answer1()){
                ZStack{
                    Image(systemName: "drop.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                        .foregroundColor(.purple)
                    Text("START!")
                        .padding(.vertical)
                        .foregroundColor(.white)
                        .navigationBarItems(trailing:Button(action:{self.PresentationMode.wrappedValue.dismiss()
                        })
                                            {
                            Text("close")
                        })
                    
                                            
                }

          }.navigationViewStyle(.stack)

        
      }
    }
}

struct Quiz4answer1: View {
    
    @State private var isShowing2View1: Bool = false
    
    var body: some View {
        ZStack{
            Color(red: 0.965, green: 0.878, blue: 0.216)
                .ignoresSafeArea()
            VStack (spacing: 10){
                
                Button(action: {self.isShowing2View1.toggle()}){
                    ZStack{
                        Image(systemName: "drop.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                            .foregroundColor(.blue)
                        Text("戻る")
                            .padding(.vertical)
                            .foregroundColor(.white)
                    }
                }.fullScreenCover(isPresented:$isShowing2View1){
                    finishView()
                }.offset(x:500,y: -100)
                
                HStack{
                    ZStack{
                        Image(systemName: "circle.fill")

                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 100)
                            .foregroundColor(Color( red:0.937,green:0.537,blue:0.698))
                        Text("1")
                            .font(.largeTitle)
                            
                    }.offset(x:-275,y: -100)
                    
                    Text("熊本の地下水")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .padding()
                        .offset(x:275,y: -100)
                    
                }

                ZStack{
                       Rectangle()
                        .fill(Color.white)
                        .border(Color.black, width: 3)
                        .frame(width:800,height: 300)
                                    Text("熊本の地下水を汚染している代表的な物質はどれ？")
                                        .foregroundColor(.black)
                                        .font(.largeTitle)
                                        .bold()
                                        .multilineTextAlignment(.center)
                    
                                        
                }.offset(y: -80)

                HStack {

                    NavigationLink(destination: Quiz4answer1true()) {
                        ZStack{
                               Rectangle()
                                .fill(Color.white)
                                .border(Color.black, width: 3)
                                .frame(width:350,height: 150)
                                            Text("硝酸性窒素")
                                .font(.largeTitle)
                                .background(Color.white)
                                .foregroundColor(Color.black)
                                .frame(width: 300, height: 100)
                                                
                        }
                            
                    }
                            
                    NavigationLink(destination: Quiz4answer1false()) {

                        ZStack{
                               Rectangle()
                                .fill(Color.white)
                                .border(Color.black, width: 3)
                                .frame(width:350,height: 150)
                                            Text("全シアン")
                                .font(.largeTitle)
                                .background(Color.white)
                                .foregroundColor(Color.black)
                                .frame(width: 300, height: 100)
                                                
                        }
                    }
                            
                    
                    NavigationLink(destination: Quiz4answer1false()) {

                        ZStack{
                               Rectangle()
                                .fill(Color.white)
                                .border(Color.black, width: 3)
                                .frame(width:350,height: 150)
                                            Text("四塩化炭素")
                                . font(.largeTitle)
                                .background(Color.white)
                                .foregroundColor(Color.black)
                                .frame(width: 300, height: 100)
                                                
                        }


                    }

                 
                        }
        }

            
        }
    }
}

struct Quiz4answer1true: View {
    var body: some View {
        ZStack{
            Color(red: 0.965, green: 0.878, blue: 0.216)
                .ignoresSafeArea()
            VStack(spacing: 30){
                Text("正解")
                .fontWeight(.heavy)
                .font(.system(size: 80, weight: .black, design: .default))
                
                Image(systemName: "poweroff")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .foregroundColor(.red)
                ZStack{
                        Color.white
                        .frame(width:650,height: 200)

                        .border(Color.black, width: 3)

                        Text("解説")
                        .foregroundColor(.black)
                        .font(.largeTitle)
                        .bold()
                                }
                
                HStack {

                    NavigationLink(destination: moviestart1()) {

                        Text("動画を見る")
                            .foregroundColor(.red)
                            .font(.largeTitle)
                            .bold()
                            .frame(width: 200, height: 100)
                            .border(Color.gray, width: 5)
                    }
                            
                    NavigationLink(destination: Quiz1answer2(isFirstViewActive1: <#Binding<Bool>#>)) {

                        Text("次の問題へ")
                            .foregroundColor(.red)
                            .font(.largeTitle)
                            .bold()
                            .frame(width: 200, height: 100)
                            .border(Color.gray, width: 5)
                    }
            }
        }
        }

}
}
struct Quiz4answer1false: View {
    var body: some View {
        VStack(spacing: 30){
            Text("不正解")
            .fontWeight(.heavy)
            .font(.system(size: 80, weight: .black, design: .default))
            
            Image(systemName: "multiply")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.blue)
            ZStack{
                    Color.blue
                    .frame(width:650,height: 200)
                    Text("解説")
                    .foregroundColor(.black)
                    .font(.largeTitle)
                    .bold()
                            }
            
            HStack {

                NavigationLink(destination: moviestart1()) {

                    Text("動画を見る")
                        .foregroundColor(.red)
                        .font(.largeTitle)
                        .bold()
                        .frame(width: 200, height: 100)
                        .border(Color.gray, width: 5)
                }
                        
                NavigationLink(destination: Quiz1answer2()) {

                    Text("次の問題へ")
                        .foregroundColor(.red)
                        .font(.largeTitle)
                        .bold()
                        .frame(width: 200, height: 100)
                        .border(Color.gray, width: 5)
                }
        }
    }
}
}


struct Quiz4_Previews: PreviewProvider {
    static var previews: some View {
        Quiz4answer1()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
