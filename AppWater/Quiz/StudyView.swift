//
//  StudyView.swift
//  AppWater
//
//  Created by 松下慎吾 on 2022/03/15.
//

import SwiftUI


//Navigationで最初に戻ってくる
class EnvironmentData: ObservableObject {
    @Published var CorrectNum = 0{
        didSet {
            UserDefaults.standard.set(CorrectNum, forKey: "CorrectNum")
        }
    }
    
    @Published var isNavigationActive: Binding<Bool> = Binding<Bool>.constant(false)
    @Published var aaa = false{
        didSet {
            UserDefaults.standard.set(aaa, forKey: "aaa")
        }
    }
    @Published var bbb = false{
        didSet {
            UserDefaults.standard.set(bbb, forKey: "bbb")
        }
    }
    @Published var ccc = false{
        didSet {
            UserDefaults.standard.set(ccc, forKey: "ccc")
        }
    }
    @Published var ddd = false{
        didSet {
            UserDefaults.standard.set(ddd, forKey: "ddd")
        }
    }
    @Published var eee = false{
        didSet {
            UserDefaults.standard.set(eee, forKey: "eee")
        }
    }
    init(){
        aaa = UserDefaults.standard.bool(forKey: "aaa")
        bbb = UserDefaults.standard.bool(forKey: "bbb")
        ccc = UserDefaults.standard.bool(forKey: "ccc")
        ddd = UserDefaults.standard.bool(forKey: "ddd")
        eee = UserDefaults.standard.bool(forKey: "eee")
    }
}

struct StudyView: View {
    
    @State private var isActive1 = false
    @State private var isActive2 = false
    @State private var isActive3 = false
    @State private var isActive4 = false
    @State private var isActive5 = false
    @EnvironmentObject var envData: EnvironmentData
    
    @State var flag = false
    
    
    @State  var isShowingView1: Bool = false
    @State private var isShowingView2: Bool = false
    @State private var isShowingView3: Bool = false
    @State private var isShowingView4: Bool = false
    @State private var isShowingView5: Bool = false
    
    @State private var scale = false
   
    
    var body: some View {
        ZStack{
            Image("アートボード 無背景")
                .resizable()
                .ignoresSafeArea()
            ZStack{
                
                if envData.eee == true{
                    Image("空")
                        .offset(y:-265)
                }
                if envData.bbb == true{
                    Image("街")
                        .offset(y:-25)
                }
                if envData.ccc == true{
                    Image("川")
                        .offset(y:45)
                }
                if envData.aaa == true{
                    Image("阿蘇山")
                        .offset(x:377,y:-176)
                    Image("雨")
                        .offset(x:378,y:-345)
                }
                if envData.ddd == true{
                    ZStack{
                        Image("熊本城")
                            .resizable()
                            .frame(width:200,height:200)
                            .offset(x:-50,y:-155)
                        Group{
//                            Image("雲1")
//                                .offset(x:-400,y:-300)
//                                .scaleEffect(scale ? 1.01 : 1)
//                                .opacity(scale ? 1:0.9)
//                                .animation(.linear(duration: 1.1).repeatForever(), value: scale)
                            Image("雲2")
                                .resizable()
                                .frame(width: 250, height: 250)
                                .offset(x:-170,y:-290)
                                .scaleEffect(scale ? 1.03 : 1)
                                .opacity(scale ? 1:0.94)
                                .animation(.linear(duration: 1.2).repeatForever(), value: scale)
//                            Image("雲3")
//                                .offset(y:-200)
//                                .scaleEffect(scale ? 1.01 : 1)
//                                .opacity(scale ? 1:0.92)
//                                .animation(.linear(duration: 1.3).repeatForever(), value: scale)
                            Image("雲4")
                                .resizable()
                                .frame(width: 250, height: 250)
                                .offset(x:200,y:-300)
                                .scaleEffect(scale ? 1.03 : 1)
                                .opacity(scale ? 1:0.96)
                                .animation(.linear(duration: 1.7).repeatForever(), value: scale)
//                            Image("雲5")
//                                .offset(x:450,y:-300)
//                                .scaleEffect(scale ? 1.02 : 1)
//                                .opacity(scale ? 1:0.95)
//                                //.rotationEffect(Angle(degrees: scale ? 180 : 0))
//                                .animation(.linear(duration: 1.6).repeatForever(), value: scale)
                        }
                        .offset(y:-20)
                    }
                }
            }
            
            Button(action: {
                self.envData.aaa=false
                self.envData.bbb=false
                self.envData.ccc=false
                self.envData.ddd=false
                self.envData.eee=false
            }){
                Text("リセット")
            }.offset(x:450,y:330)
            
            Group{
                NavigationLink(destination: Quiz1ModalView1(), isActive: $isActive1){
                    EmptyView()
                }
                Button(action: {
                    isActive1 = true
                    envData.isNavigationActive = $isActive1
                    //envData.bbb = false
                    //envData.ccc = false
                }){
                    ZStack{
                        Image(systemName: "drop.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 200)
                            .foregroundColor(Color(red: 0.671, green: 0.863, blue: 0.678))
                        Text("地下水")
                            .font(Font.mainFont(size: 30))
                            .padding(.vertical)
                            .foregroundColor(.white)
                    }
                }.offset(x:380,y:-110)
                    .scaleEffect(flag ? 1.05 : 1.0)
                        .animation(.easeOut(duration: 4.0).repeatForever(), value: flag)
    //                .offset(y: flag ? 5 : -5)
    //                .animation(Animation
    //                    .easeInOut(duration: 2.0)
    //                    .repeatForever()
    //                    .delay(0.1)
    //                )
                
                
                NavigationLink(destination: Quiz2ModalView1(), isActive: $isActive2){
                    EmptyView()
                }
                Button(action: {
                    isActive2 = true
                    envData.isNavigationActive = $isActive2
                    //envData.bbb = false
                    //envData.ccc = false
                }){
                    ZStack{
                        Image(systemName: "drop.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 200)
                            .foregroundColor(Color(red: 0.945, green: 0.698, blue: 0.498))
                        Text("節水")
                            .font(Font.mainFont(size: 30))
                            .padding(.vertical)
                            .foregroundColor(.white)
                    }
                }.offset(x:240,y:250)
                    .scaleEffect(flag ? 1.05 : 1.0)
                        .animation(.easeOut(duration: 3.0).repeatForever(), value: flag)

                NavigationLink(destination: Quiz3ModalView1(), isActive: $isActive3){
                    EmptyView()
                }
                Button(action: {
                    isActive3 = true
                    envData.isNavigationActive = $isActive3
                    //envData.bbb = false
                    //envData.ccc = false
                }){
                    ZStack{
                        Image(systemName: "drop.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 200)
                            .foregroundColor(Color(red: 0.667, green: 0.816, blue: 0.816))
                        Text("熊本の水")
                            .font(Font.mainFont(size: 30))
                            .padding(.vertical)
                            .foregroundColor(.white)
                    }
                } .offset(x:-350,y:110)
                    .scaleEffect(flag ? 1.05 : 1.0)
                        .animation(.easeOut(duration: 4.5).repeatForever(), value: flag)
                
                NavigationLink(destination: Quiz4ModalView1(), isActive: $isActive4){
                               EmptyView()
                           }
                           Button(action: {
                               isActive4 = true
                               envData.isNavigationActive = $isActive4
                               //envData.bbb = false
                               //envData.ccc = false
                           }){
                               ZStack{
                                   Image(systemName: "drop.fill")
                                       .resizable()
                                       .scaledToFit()
                                       .frame(width: 200, height: 200)
                                       .foregroundColor(Color(red: 0.741, green: 0.678, blue: 0.827))
                                   Text("歴史")
                                       .font(Font.mainFont(size: 30))
                                       .padding(.vertical)
                                       .foregroundColor(.white)
                               }
                           }.offset(x:-230,y:-120)
                    .scaleEffect(flag ? 1.05 : 1.0)
                        .animation(.easeOut(duration: 3.5).repeatForever(), value: flag)
                
                NavigationLink(destination: Quiz5ModalView1(), isActive: $isActive5){
                               EmptyView()
                           }
                           Button(action: {
                               isActive5 = true
                               envData.isNavigationActive = $isActive5
                               //envData.bbb = false
                               //envData.ccc = false
                           }){
                               ZStack{
                                   Image(systemName: "drop.fill")
                                       .resizable()
                                       .scaledToFit()
                                       .frame(width: 200, height: 200)
                                       .foregroundColor(Color(red: 0.937, green: 0.957, blue: 0.561))
                                   Text("世界の水")
                                       .font(Font.mainFont(size: 30))
                                       .padding(.vertical)
                                       .foregroundColor(.white)
                               }
                           }.offset(x:50,y:-300)
                    .scaleEffect(flag ? 1.05 : 1.0)
                        .animation(.easeOut(duration: 5.0).repeatForever(), value: flag)
            }
            
            
        }
        .onAppear{
            self.flag.toggle()
            self.scale.toggle()
        }
        .customBackButton()
    }
}


struct StudyView_Previews: PreviewProvider {
    static var previews: some View {
        StudyView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

