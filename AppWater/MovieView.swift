//
//  MovieViewTest.swift
//  AppWater
//
//  Created by 松下慎吾 on 2022/05/07.
//

import SwiftUI
import AVKit
import AVFoundation
import WebKit
import SSSwiftUIGIFView

struct MovieView: View {

    //視聴回数
    @AppStorage("watchcount1") var watchcount1 = 0
    @AppStorage("watchcount2") var watchcount2 = 0
    @AppStorage("watchcount3") var watchcount3 = 0
    @AppStorage("watchcount4") var watchcount4 = 0
    @AppStorage("watchcount5") var watchcount5 = 0
    @AppStorage("watchcount6") var watchcount6 = 0
    @AppStorage("watchcount7") var watchcount7 = 0
    @AppStorage("watchcount8") var watchcount8 = 0
    @AppStorage("watchcount9") var watchcount9 = 0
    @AppStorage("watchcount10") var watchcount10 = 0
    
    @State private var name = ""
    //それぞれのサムネの場合に応じて対応した動画を出す
    @State var showingmovie1 = false
    @State var showingmovie2 = false
    @State var showingmovie3 = false
    @State var showingmovie4 = false
    @State var showingmovie5 = false
    @State var showingmovie6 = false
    @State var showingmovie7 = false
    @State var showingmovie8 = false
    @State var showingmovie9 = false
    @State var showingmovie10 = false
    //動画を選ぶ
    @State var selectmoview1 = true
    @State var selectmoview2 = false
    @State var selectmoview3 = false
    @State var selectmoview4 = false
    @State var selectmoview5 = false
    @State var selectmoview6 = false
    @State var selectmoview7 = false
    @State var selectmoview8 = false
    @State var selectmoview9 = false
    @State var selectmoview10 = false
    
    //buttonのスタイル
    @State private var buttonmovie1 : Bool = false
    @State private var buttonmovie2 : Bool = true
    @State private var buttonmovie3 : Bool = true
    @State private var buttonmovie4 : Bool = true
    @State private var buttonmovie5 : Bool = true
    @State private var buttonmovie6 : Bool = true
    @State private var buttonmovie7 : Bool = true
    @State private var buttonmovie8 : Bool = true
    @State private var buttonmovie9 : Bool = true
    @State private var buttonmovie10 : Bool = true
    
    @Environment(\.presentationMode)var PresentationMode
    
    @State var progress: CGFloat = 0.2
    @State var startAnimation:CGFloat = 0
    
    //コメント
    @State var newcomment = ""
    @State var comment1 : [String] = []
    @State var comment2 : [String] = []
    @State var comment3 : [String] = []
    @State var comment4 : [String] = []
    @State var comment5 : [String] = []
    @State var comment6 : [String] = []
    @State var comment7 : [String] = []
    @State var comment8 : [String] = []
    @State var comment9 : [String] = []
    @State var comment10 : [String] = []
    //アラート
    @State var isAlert : Bool = false
    
    @State var scale : Bool = false
    
//    let remoteFileUrl: String = ""
//
//    func playMovieFromRemoteFile() {
//        playMovieFromUrl(movieUrl: URL(string: remoteFileUrl))
//    }
//    func playMovieFromUrl(movieUrl: URL?) {
//        if let movieUrl = movieUrl {
//            let videoPlayer = AVPlayer(url: movieUrl)
//            let playerController = AVPlayerViewController()
//            playerController.player = videoPlayer
//            self.present(playerController, animated: true, completion: {
//                videoPlayer.play()
//            })
//        } else {
//            print("cannot play")
//        }
//    }
    
    
    var body: some View {
        ZStack{
//            SwiftUIGIFPlayerView(gifName: "動画背景")
//                .ignoresSafeArea()
            Color(red:0.754,green:0.887, blue:0.914)
                .ignoresSafeArea()
            
//            Button(action: {
//                self.scale.toggle()
//            }){
//                Text("アニメーション化")
//                    .font(Font.mainFont(size: 40))
//            }
            
            Group{
//                Image("雲1")
//                    .offset(x:-400,y:-300)
//                    .scaleEffect(scale ? 1.01 : 1)
//                    .opacity(scale ? 1:0.9)
//                    .animation(.linear(duration: 1.1).repeatForever(), value: scale)
                Image("雲2")
                    .resizable()
                    .frame(width: 250, height: 250)
                    .offset(x:-260,y:-330)
                    .scaleEffect(scale ? 1.03 : 1)
                    .opacity(scale ? 1:0.94)
                    .animation(.linear(duration: 1.2).repeatForever(), value: scale)
                Image("雲3")
                    .resizable()
                    .frame(width: 250, height: 250)
                    .offset(x:40,y:-320)
                    .scaleEffect(scale ? 1.01 : 1)
                    .opacity(scale ? 1:0.92)
                    .animation(.linear(duration: 1.3).repeatForever(), value: scale)
//                Image("雲4")
//                    .offset(x:220,y:-300)
//                    .scaleEffect(scale ? 1.03 : 1)
//                    .opacity(scale ? 1:0.96)
//                    .animation(.linear(duration: 1.7).repeatForever(), value: scale)
                Image("雲5")
                    .resizable()
                    .frame(width: 250, height: 250)
                    .offset(x:470,y:-300)
                    .scaleEffect(scale ? 1.02 : 1)
                    .opacity(scale ? 1:0.95)
                    //.rotationEffect(Angle(degrees: scale ? 180 : 0))
                    .animation(.linear(duration: 1.6).repeatForever(), value: scale)

            }
            .offset(y:-55)
//
//            Group{
//                Image(systemName: "plus")
//                    .resizable()
//                    .frame(width: 50, height: 50)
//                    .foregroundColor(.blue)
//                    //.offset(y:-100)
//                    .rotationEffect(Angle(degrees: scale ? 180 : 0))
//                    .animation(.linear(duration: 1.2).repeatForever(), value: scale)
//
//                ZStack{
//                    Rectangle()
//                        .fill(Color.red)
//                        .frame(width: 50, height: 50)
//                    Rectangle()
//                        .fill(Color.white)
//                        .frame(width: 20, height: 20)
//                } .animation(.linear(duration: 1.2).repeatForever(), value: scale)
//                    .offset(x:-3)
//
//                Image(systemName: "circle.fill")
//                    .resizable()
//                    .frame(width: 50, height: 50)
//                    .foregroundColor(.red)
//                    .offset(x:10,y: 100)
//                    .animation(.linear(duration: 1.2).repeatForever(), value: scale)
//            }.offset(x:-500)
//
//            Group{
//                Image(systemName: "plus")
//                    .resizable()
//                    .frame(width: 50, height: 50)
//                    .foregroundColor(.blue)
//                    .offset(y:-200)
//
//                Image(systemName: "circle.fill")
//                    .resizable()
//                    .frame(width: 50, height: 50)
//                    .foregroundColor(.red)
//                    .offset(y: 100)
//
//                ZStack{
//                    Rectangle()
//                        .fill(Color.red)
//                        .frame(width: 50, height: 50)
//                    Rectangle()
//                        .fill(Color.white)
//                        .frame(width: 20, height: 20)
//                }.offset(x:20,y:250)
//            }.offset(x:165)
//
//            Group{
//                Image(systemName: "plus")
//                    .resizable()
//                    .frame(width: 20, height: 20)
//                    .foregroundColor(.blue)
//                    .offset()
//
//                Image(systemName: "circle.fill")
//                    .resizable()
//                    .frame(width: 20, height: 20)
//                    .foregroundColor(.red)
//                    .offset(y: 100)
//
//                ZStack{
//                    Rectangle()
//                        .fill(Color.red)
//                        .frame(width: 10, height: 10)
//                    Rectangle()
//                        .fill(Color.white)
//                        .frame(width: 5, height: 5)
//                }.offset(y: 50)
//            }.offset(x:530)
            
            HStack{
                VStack{
                    //Image("草 イメージ")
                    Button(action: {
                        //それぞれのサムネの場合に応じて対応した動画を出す
                        if selectmoview1 == true{
                            showingmovie1 = true
                            showingmovie2 = false
                            showingmovie3 = false
                            showingmovie4 = false
                            showingmovie5 = false
                            showingmovie6 = false
                            showingmovie7 = false
                            showingmovie8 = false
                            showingmovie9 = false
                            showingmovie10 = false
                            
                            watchcount1 += 1
                            
                        }else if selectmoview2 == true{
                            showingmovie1 = false
                            showingmovie2 = true
                            showingmovie3 = false
                            showingmovie4 = false
                            showingmovie5 = false
                            showingmovie6 = false
                            showingmovie7 = false
                            showingmovie8 = false
                            showingmovie9 = false
                            showingmovie10 = false
                            
                        }
                        else if selectmoview3 == true{
                            showingmovie1 = false
                            showingmovie2 = false
                            showingmovie3 = true
                            showingmovie4 = false
                            showingmovie5 = false
                            showingmovie6 = false
                            showingmovie7 = false
                            showingmovie8 = false
                            showingmovie9 = false
                            showingmovie10 = false
                        }
                        else if selectmoview4 == true{
                            showingmovie1 = false
                            showingmovie2 = false
                            showingmovie3 = false
                            showingmovie4 = true
                            showingmovie5 = false
                            showingmovie6 = false
                            showingmovie7 = false
                            showingmovie8 = false
                            showingmovie9 = false
                            showingmovie10 = false
                        }
                        else if selectmoview5 == true{
                            showingmovie1 = false
                            showingmovie2 = false
                            showingmovie3 = false
                            showingmovie4 = false
                            showingmovie5 = true
                            showingmovie6 = false
                            showingmovie7 = false
                            showingmovie8 = false
                            showingmovie9 = false
                            showingmovie10 = false
                        }
                        else if selectmoview6 == true{
                            showingmovie1 = false
                            showingmovie2 = false
                            showingmovie3 = false
                            showingmovie4 = false
                            showingmovie5 = false
                            showingmovie6 = true
                            showingmovie7 = false
                            showingmovie8 = false
                            showingmovie9 = false
                            showingmovie10 = false
                        }
                        else if selectmoview7 == true{
                            showingmovie1 = false
                            showingmovie2 = false
                            showingmovie3 = false
                            showingmovie4 = false
                            showingmovie5 = false
                            showingmovie6 = false
                            showingmovie7 = true
                            showingmovie8 = false
                            showingmovie9 = false
                            showingmovie10 = false
                        }
                        else if selectmoview8 == true{
                            showingmovie1 = false
                            showingmovie2 = false
                            showingmovie3 = false
                            showingmovie4 = false
                            showingmovie5 = false
                            showingmovie6 = false
                            showingmovie7 = false
                            showingmovie8 = true
                            showingmovie9 = false
                            showingmovie10 = false
                        }
                        else if selectmoview9 == true{
                            showingmovie1 = false
                            showingmovie2 = false
                            showingmovie3 = false
                            showingmovie4 = false
                            showingmovie5 = false
                            showingmovie6 = false
                            showingmovie7 = false
                            showingmovie8 = false
                            showingmovie9 = true
                            showingmovie10 = false
                        }
                        else if selectmoview10 == true{
                            showingmovie1 = false
                            showingmovie2 = false
                            showingmovie3 = false
                            showingmovie4 = false
                            showingmovie5 = false
                            showingmovie6 = false
                            showingmovie7 = false
                            showingmovie8 = false
                            showingmovie9 = false
                            showingmovie10 = true
                        }
                    }){
                        if selectmoview1 == true{
                            ZStack{
                                Image("熊本の水1")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 680, height: 340)
                                Image(systemName: "play.circle")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                            }
                        }else if selectmoview2 == true{
                            ZStack{
                                Image("熊本の水2")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 680, height: 340)
                                Image(systemName: "play.circle")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                            }
                        }
                        else if selectmoview3 == true{
                            ZStack{
                                Image("SDGs")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 680, height: 340)
                                Image(systemName: "play.circle")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                            }
                        }
                        else if selectmoview4 == true{
                            ZStack{
                                Image("SDGs数字")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 680, height: 340)
                                Image(systemName: "play.circle")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                            }
                        }
                        else if selectmoview5 == true{
                            ZStack{
                                Image("地下水1")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 680, height: 340)
                                Image(systemName: "play.circle")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                            }
                        }
                        else if selectmoview6 == true{
                            ZStack{
                                Image("地下水2")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 680, height: 340)
                                Image(systemName: "play.circle")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                            }
                        }
                        else if selectmoview7 == true{
                            ZStack{
                                Image("熊本の歴史1")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 680, height: 340)
                                Image(systemName: "play.circle")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                            }
                        }
                        else if selectmoview8 == true{
                            ZStack{
                                Image("熊本の歴史2")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 680, height: 340)
                                Image(systemName: "play.circle")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                            }
                        }
                        else if selectmoview9 == true{
                            ZStack{
                                Image("節水1")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 680, height: 340)
                                Image(systemName: "play.circle")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                            }
                        }
                        else if selectmoview10 == true{
                            ZStack{
                                Image("節水2")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 680, height: 340)
                                Image(systemName: "play.circle")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                            }
                        }
                    }.sheet(isPresented: $showingmovie1){
                        moviestart1()
                    }.sheet(isPresented: $showingmovie2){
                        moviestart2()
                    }.sheet(isPresented: $showingmovie3){
                        moviestart3()
                    }.sheet(isPresented: $showingmovie4){
                        moviestart4()
                    }.sheet(isPresented: $showingmovie5){
                        moviestart5()
                    }.sheet(isPresented: $showingmovie6){
                        moviestart6()
                    }.sheet(isPresented: $showingmovie7){
                        moviestart7()
                    }.sheet(isPresented: $showingmovie8){
                        moviestart8()
                    }.sheet(isPresented: $showingmovie9){
                        moviestart9()
                    }.sheet(isPresented: $showingmovie10){
                        moviestart10()
                    }
                    .padding()
//                        Color(.white)
//                            .cornerRadius(5)
//                            .frame(width:650,height: 40)
//                            .overlay(RoundedRectangle(cornerRadius: 5)
//                                                    .stroke(Color(red:0.441,green:0.719, blue:0.75),lineWidth:3)
//                                                            )
                        if selectmoview1 == true{
                            ZStack{
                                Image("吹き出し1")
                                    .frame(height:40)
                                HStack{
                                    Text("\(watchcount1)回視聴")
                                    Text("地下水の秘密知ってる？")
                                        .foregroundColor(Color(red:0.3,green:0.3, blue:0.3))
                                        .font(Font.mainFont(size: 24))
                                        .bold()
                                } .offset(y:10)
                            }
                        }else if selectmoview2 == true{
                            Text("この動画では水の硬度や、熊本水遺産について説明するよ！")
                                .foregroundColor(Color(red:0.3,green:0.3, blue:0.3))
                                .font(Font.mainFont(size: 24))
                                .bold()
                        }
                        else if selectmoview3 == true{
                            Text("世界の水について説明するよ！")
                                .foregroundColor(Color(red:0.3,green:0.3, blue:0.3))
                                .font(Font.mainFont(size: 24))
                                .bold()
                        }
                        else if selectmoview4 == true{
                            Text("SDGsと水について説明するよ！")
                                .foregroundColor(Color(red:0.3,green:0.3, blue:0.3))
                                .font(Font.mainFont(size: 24))
                                .bold()
                        }
                        else if selectmoview5 == true{
                            Text("雨の行方や地下水の減少について説明するよ！")
                                .foregroundColor(Color(red:0.3,green:0.3, blue:0.3))
                                .font(Font.mainFont(size: 24))
                                .bold()
                        }
                        else if selectmoview6 == true{
                            Text("地下水が汚れている理由や守る活動について説明するよ！")
                                .foregroundColor(Color(red:0.3,green:0.3, blue:0.3))
                                .font(Font.mainFont(size: 24))
                                .bold()
                        }
                        else if selectmoview7 == true{
                            Text("加藤清正と水について説明するよ！")
                                .foregroundColor(Color(red:0.3,green:0.3, blue:0.3))
                                .font(Font.mainFont(size: 24))
                                .bold()
                        }
                        else if selectmoview8 == true{
                            Text("水道水がどこからきているのか説明するよ！")
                                .foregroundColor(Color(red:0.3,green:0.3, blue:0.3))
                                .font(Font.mainFont(size: 24))
                                .bold()
                        }
                        else if selectmoview9 == true{
                            Text("節水について熊本市の取り組みや目標についてみていくよ！")
                                .foregroundColor(Color(red:0.3,green:0.3, blue:0.3))
                                .font(Font.mainFont(size: 24))
                                .bold()
                        }
                        else if selectmoview10 == true{
                            Text("節水につながる行動についてみていくよ！")
                                .foregroundColor(Color(red:0.3,green:0.3, blue:0.3))
                                .font(Font.mainFont(size: 24))
                                .bold()
                        }
                    
//                    HStack{
//                        ZStack{
//                            Image("コップ背景")
//                                .frame(width: 50, height: 50)
//                                .clipShape(Circle())
//                        }.padding(.leading)
//                        VStack{
//                            Text("うぉたべる")
//                                .font(Font.mainFont(size: 20))
//                            Text("チャンネル登録者数 7人")
//                                .font(Font.mainFont(size: 10))
//                        }
//                        Spacer()
//                        ZStack{
//                            Color(red: 0.898,green: 0.361,blue:0.306)
//                                .frame(width:150,height: 30)
//                                .cornerRadius(10)
//                            Text("チャンネル登録")
//                                .font(Font.mainFont(size: 20))
//                                .foregroundColor(.white)
//                        }.padding(.trailing)
//                    }
//                    Divider()
                        VStack{
                            HStack{
                                Text("コメント")
                                    .font(Font.mainFont(size: 15))
                                TextField("コメントを追加...", text: $newcomment)
                                    .foregroundColor(.black)
                                    .font(Font.mainFont(size: 18))
                                    .multilineTextAlignment(.center).textFieldStyle(RoundedBorderTextFieldStyle())
                                    .frame(width: 400, height: 20, alignment: .center)
                                Button(action: {
                                    if newcomment == ""{
                                        self.isAlert.toggle()
                                    }else if selectmoview1 == true{
                                        self.comment1.append(self.newcomment)
                                        self.newcomment = ""
                                        UserDefaults.standard.set(self.comment1, forKey: "Comment1")
                                    }else if selectmoview2 == true{
                                        self.comment2.append(self.newcomment)
                                        self.newcomment = ""
                                        UserDefaults.standard.set(self.comment2, forKey: "Comment2")
                                    }
                                    else if selectmoview3 == true{
                                        self.comment3.append(self.newcomment)
                                        self.newcomment = ""
                                        UserDefaults.standard.set(self.comment3, forKey: "Comment3")
                                    }
                                    else if selectmoview4 == true{
                                        self.comment4.append(self.newcomment)
                                        self.newcomment = ""
                                        UserDefaults.standard.set(self.comment4, forKey: "Comment4")
                                    }
                                    else if selectmoview5 == true{
                                        self.comment5.append(self.newcomment)
                                        self.newcomment = ""
                                        UserDefaults.standard.set(self.comment5, forKey: "Comment5")
                                    }
                                    else if selectmoview6 == true{
                                        self.comment6.append(self.newcomment)
                                        self.newcomment = ""
                                        UserDefaults.standard.set(self.comment6, forKey: "Comment6")
                                    }
                                    else if selectmoview7 == true{
                                        self.comment7.append(self.newcomment)
                                        self.newcomment = ""
                                        UserDefaults.standard.set(self.comment7, forKey: "Comment7")
                                    }
                                    else if selectmoview8 == true{
                                        self.comment8.append(self.newcomment)
                                        self.newcomment = ""
                                        UserDefaults.standard.set(self.comment8, forKey: "Comment8")
                                    }
                                    else if selectmoview9 == true{
                                        self.comment9.append(self.newcomment)
                                        self.newcomment = ""
                                        UserDefaults.standard.set(self.comment9, forKey: "Comment9")
                                    }
                                    else if selectmoview10 == true{
                                        self.comment10.append(self.newcomment)
                                        self.newcomment = ""
                                        UserDefaults.standard.set(self.comment10, forKey: "Comment10")
                                    }
                                }){
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 5)
                                            .frame(width:50,height:30)
                                            .foregroundColor(.blue)
                                        Text("追加")
                                            .foregroundColor(.white)
                                            .font(Font.mainFont(size: 10))
                                    }
                                }
                            }
                            //EditButton()
                                if selectmoview1 == true{
                                    List{
                                        ForEach(comment1, id: \.self){ item1 in
                                            Text(item1)
                                        }.onDelete{(IndexSet1) in
                                            self.comment1.remove(atOffsets: IndexSet1)
                                            UserDefaults.standard.set(self.comment1, forKey: "Comment1")
                                        }.onMove{(IndexSet,Destination)in
                                            self.comment1.move(fromOffsets: IndexSet, toOffset: Destination)
                                            UserDefaults.standard.set(self.comment1, forKey: "Comment1")
                                        }
                                    }
                                    .frame(width:650)
                                    
                                }else if selectmoview2 == true{
                                    List{
                                        ForEach(comment2, id: \.self){ item2 in
                                            Text(item2)
                                        }.onDelete{(IndexSet2) in
                                            self.comment2.remove(atOffsets: IndexSet2)
                                            UserDefaults.standard.set(self.comment2, forKey: "Comment2")
                                        }.onMove{(IndexSet2,Destination2)in
                                            self.comment2.move(fromOffsets: IndexSet2, toOffset: Destination2)
                                            UserDefaults.standard.set(self.comment2, forKey: "Comment2")
                                        }
                                    }.frame(width:650)
                                }else if selectmoview3 == true{
                                    List{
                                        ForEach(comment3, id: \.self){ item3 in
                                            Text(item3)
                                        }.onDelete{(IndexSet3) in
                                            self.comment3.remove(atOffsets: IndexSet3)
                                            UserDefaults.standard.set(self.comment3, forKey: "Comment3")
                                        }.onMove{(IndexSet3,Destination3)in
                                            self.comment3.move(fromOffsets: IndexSet3, toOffset: Destination3)
                                            UserDefaults.standard.set(self.comment3, forKey: "Comment3")
                                        }
                                    }.frame(width:650)
                                }else if selectmoview4 == true{
                                    List{
                                        ForEach(comment4, id: \.self){ item4 in
                                            Text(item4)
                                        }.onDelete{(IndexSet4) in
                                            self.comment4.remove(atOffsets: IndexSet4)
                                            UserDefaults.standard.set(self.comment4, forKey: "Comment4")
                                        }.onMove{(IndexSet4,Destination4)in
                                            self.comment4.move(fromOffsets: IndexSet4, toOffset: Destination4)
                                            UserDefaults.standard.set(self.comment4, forKey: "Comment4")
                                        }
                                    }.frame(width:650)
                                }else if selectmoview5 == true{
                                    List{
                                        ForEach(comment5, id: \.self){ item5 in
                                            Text(item5)
                                        }.onDelete{(IndexSet5) in
                                            self.comment5.remove(atOffsets: IndexSet5)
                                            UserDefaults.standard.set(self.comment5, forKey: "Comment5")
                                        }.onMove{(IndexSet5,Destination5)in
                                            self.comment5.move(fromOffsets: IndexSet5, toOffset: Destination5)
                                            UserDefaults.standard.set(self.comment5, forKey: "Comment5")
                                        }
                                    }.frame(width:650)
                                }else if selectmoview6 == true{
                                    List{
                                        ForEach(comment6, id: \.self){ item6 in
                                            Text(item6)
                                        }.onDelete{(IndexSet6) in
                                            self.comment6.remove(atOffsets: IndexSet6)
                                            UserDefaults.standard.set(self.comment6, forKey: "Comment6")
                                        }.onMove{(IndexSet6,Destination6)in
                                            self.comment6.move(fromOffsets: IndexSet6, toOffset: Destination6)
                                            UserDefaults.standard.set(self.comment6, forKey: "Comment6")
                                        }
                                    }.frame(width:650)
                                }else if selectmoview7 == true{
                                    List{
                                        ForEach(comment7, id: \.self){ item7 in
                                            Text(item7)
                                        }.onDelete{(IndexSet7) in
                                            self.comment7.remove(atOffsets: IndexSet7)
                                            UserDefaults.standard.set(self.comment7, forKey: "Comment7")
                                        }.onMove{(IndexSet7,Destination7)in
                                            self.comment7.move(fromOffsets: IndexSet7, toOffset: Destination7)
                                            UserDefaults.standard.set(self.comment7, forKey: "Comment7")
                                        }
                                    }.frame(width:650)
                                }else if selectmoview8 == true{
                                    List{
                                        ForEach(comment8, id: \.self){ item8 in
                                            Text(item8)
                                        }.onDelete{(IndexSet8) in
                                            self.comment8.remove(atOffsets: IndexSet8)
                                            UserDefaults.standard.set(self.comment8, forKey: "Comment8")
                                        }.onMove{(IndexSet8,Destination8)in
                                            self.comment8.move(fromOffsets: IndexSet8, toOffset: Destination8)
                                            UserDefaults.standard.set(self.comment8, forKey: "Comment8")
                                        }
                                    }.frame(width:650)
                                }else if selectmoview9 == true{
                                    List{
                                        ForEach(comment9, id: \.self){ item9 in
                                            Text(item9)
                                        }.onDelete{(IndexSet9) in
                                            self.comment9.remove(atOffsets: IndexSet9)
                                            UserDefaults.standard.set(self.comment9, forKey: "Comment9")
                                        }.onMove{(IndexSet9,Destination9)in
                                            self.comment9.move(fromOffsets: IndexSet9, toOffset: Destination9)
                                            UserDefaults.standard.set(self.comment9, forKey: "Comment9")
                                        }
                                    }.frame(width:650)
                                }else if selectmoview10 == true{
                                    List{
                                        ForEach(comment10, id: \.self){ item10 in
                                            Text(item10)
                                        }.onDelete{(IndexSet10) in
                                            self.comment10.remove(atOffsets: IndexSet10)
                                            UserDefaults.standard.set(self.comment10, forKey: "Comment10")
                                        }.onMove{(IndexSet10,Destination10)in
                                            self.comment10.move(fromOffsets: IndexSet10, toOffset: Destination10)
                                            UserDefaults.standard.set(self.comment10, forKey: "Comment10")
                                        }
                                    }.frame(width:650)
                                }
                        }
                        .offset(y:20)
                }
    //            .navigationTitle("動画を見よう！")
    //            .navigationBarTitleDisplayMode(.inline)
                
                VStack{
                    ZStack{
                        Image("吹き出し2")
                            .frame(height: 10)
                        Text("関連動画")
                            .font(Font.mainFont(size: 20))
                            .offset(x:7,y:3)
                    }.offset(y:-15)
                    ScrollView {
                        VStack{
                            Button(action: {
                                selectmoview1 = true
                                selectmoview2 = false
                                selectmoview3 = false
                                selectmoview4 = false
                                selectmoview5 = false
                                selectmoview6 = false
                                selectmoview7 = false
                                selectmoview8 = false
                                selectmoview9 = false
                                selectmoview10 = false
                                                        
                                buttonmovie1.toggle()
                                buttonmovie2 = true
                                buttonmovie3 = true
                                buttonmovie4 = true
                                buttonmovie5 = true
                                buttonmovie6 = true
                                buttonmovie7 = true
                                buttonmovie8 = true
                                buttonmovie9 = true
                                buttonmovie10 = true
                                
                            }){
                                Image("熊本の水1")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 300, height: 200)
                                    .buttonStyle(MyButtonStyle2())
                                    .disabled(buttonmovie1)
                                    .shadow(color: .gray, radius: 3, x: 3, y: 3)
                            }//1
                            Text("地下水が豊富な理由について\n説明するよ！")
                                .foregroundColor(Color(red:0.3,green:0.3, blue:0.3))
                                .font(Font.mainFont(size: 15))
                                .bold()
                        }
                        VStack{
                            Button(action: {
                                selectmoview1 = false
                                selectmoview2 = true
                                selectmoview3 = false
                                selectmoview4 = false
                                selectmoview5 = false
                                selectmoview6 = false
                                selectmoview7 = false
                                selectmoview8 = false
                                selectmoview9 = false
                                selectmoview10 = false
                                                        
                                buttonmovie1 = true
                                buttonmovie2.toggle()
                                buttonmovie3 = true
                                buttonmovie4 = true
                                buttonmovie5 = true
                                buttonmovie6 = true
                                buttonmovie7 = true
                                buttonmovie8 = true
                                buttonmovie9 = true
                                buttonmovie10 = true
                            }){
                                Image("熊本の水2")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 300, height: 200)
                                    .buttonStyle(MyButtonStyle2())
                                    .disabled(buttonmovie2)
                                    .shadow(color: .gray, radius: 3, x: 3, y: 3)
                            }//2
                            Text("この動画では水の硬度や、\n熊本水遺産について説明するよ！")
                                .foregroundColor(Color(red:0.3,green:0.3, blue:0.3))
                                .font(Font.mainFont(size: 15))
                                .bold()
                        }
                        VStack{
                            Button(action: {
                                selectmoview1 = false
                                selectmoview2 = false
                                selectmoview3 = true
                                selectmoview4 = false
                                selectmoview5 = false
                                selectmoview6 = false
                                selectmoview7 = false
                                selectmoview8 = false
                                selectmoview9 = false
                                selectmoview10 = false
                                
                                buttonmovie1 = true
                                buttonmovie2 = true
                                buttonmovie3.toggle()
                                buttonmovie4 = true
                                buttonmovie5 = true
                                buttonmovie6 = true
                                buttonmovie7 = true
                                buttonmovie8 = true
                                buttonmovie9 = true
                                buttonmovie10 = true
                            }){
                                Image("SDGs")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 300, height: 200)
                                    .buttonStyle(MyButtonStyle())
                                    .disabled(buttonmovie3)
                                    .shadow(color: .gray, radius: 3, x: 3, y: 3)
                            }.padding(.horizontal)//3
                            Text("世界の水について説明するよ！")
                                .foregroundColor(Color(red:0.3,green:0.3, blue:0.3))
                                .font(Font.mainFont(size: 15))
                                .bold()
                        }
                        VStack{
                            Button(action: {
                                selectmoview1 = false
                                selectmoview2 = false
                                selectmoview3 = false
                                selectmoview4 = true
                                selectmoview5 = false
                                selectmoview6 = false
                                selectmoview7 = false
                                selectmoview8 = false
                                selectmoview9 = false
                                selectmoview10 = false
                                
                                buttonmovie1 = true
                                buttonmovie2 = true
                                buttonmovie3 = true
                                buttonmovie4.toggle()
                                buttonmovie5 = true
                                buttonmovie6 = true
                                buttonmovie7 = true
                                buttonmovie8 = true
                                buttonmovie9 = true
                                buttonmovie10 = true
                            }){
                                Image("SDGs数字")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 300, height: 200)
                                    .buttonStyle(MyButtonStyle())
                                    .disabled(buttonmovie4)
                                    .shadow(color: .gray, radius: 3, x: 3, y: 3)
                            }.padding(.horizontal)//4
                            Text("SDGsと水について説明するよ！")
                                .foregroundColor(Color(red:0.3,green:0.3, blue:0.3))
                                .font(Font.mainFont(size: 15))
                                .bold()
                        }
                        VStack{
                            Button(action: {
                                selectmoview1 = false
                                selectmoview2 = false
                                selectmoview3 = false
                                selectmoview4 = false
                                selectmoview5 = true
                                selectmoview6 = false
                                selectmoview7 = false
                                selectmoview8 = false
                                selectmoview9 = false
                                selectmoview10 = false
                                
                                buttonmovie1 = true
                                buttonmovie2 = true
                                buttonmovie3 = true
                                buttonmovie4 = true
                                buttonmovie5.toggle()
                                buttonmovie6 = true
                                buttonmovie7 = true
                                buttonmovie8 = true
                                buttonmovie9 = true
                                buttonmovie10 = true
                            }){
                                Image("地下水1")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 300, height: 200)
                                    .buttonStyle(MyButtonStyle())
                                    .disabled(buttonmovie5)
                                    .shadow(color: .gray, radius: 3, x: 3, y: 3)
                            }.padding(.horizontal)//5
                            Text("雨の行方や地下水の減少\nについて説明するよ！")
                                .foregroundColor(Color(red:0.3,green:0.3, blue:0.3))
                                .font(Font.mainFont(size: 15))
                                .bold()
                        }
                        VStack{
                            Button(action: {
                                selectmoview1 = false
                                selectmoview2 = false
                                selectmoview3 = false
                                selectmoview4 = false
                                selectmoview5 = false
                                selectmoview6 = true
                                selectmoview7 = false
                                selectmoview8 = false
                                selectmoview9 = false
                                selectmoview10 = false
                                
                                buttonmovie1 = true
                                buttonmovie2 = true
                                buttonmovie3 = true
                                buttonmovie4 = true
                                buttonmovie5 = true
                                buttonmovie6.toggle()
                                buttonmovie7 = true
                                buttonmovie8 = true
                                buttonmovie9 = true
                                buttonmovie10 = true
                            }){
                                Image("地下水2")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 300, height: 200)
                                    .buttonStyle(MyButtonStyle())
                                    .disabled(buttonmovie6)
                                    .shadow(color: .gray, radius: 3, x: 3, y: 3)
                            }.padding(.horizontal)//6
                            Text("地下水が汚れている理由や\n守る活動について説明するよ！")
                                .foregroundColor(Color(red:0.3,green:0.3, blue:0.3))
                                .font(Font.mainFont(size: 15))
                                .bold()
                        }
                        VStack{
                            Button(action: {
                                selectmoview1 = false
                                selectmoview2 = false
                                selectmoview3 = false
                                selectmoview4 = false
                                selectmoview5 = false
                                selectmoview6 = false
                                selectmoview7 = true
                                selectmoview8 = false
                                selectmoview9 = false
                                selectmoview10 = false
                                
                                buttonmovie1 = true
                                buttonmovie2 = true
                                buttonmovie3 = true
                                buttonmovie4 = true
                                buttonmovie5 = true
                                buttonmovie6 = true
                                buttonmovie7.toggle()
                                buttonmovie8 = true
                                buttonmovie9 = true
                                buttonmovie10 = true
                            }){
                                Image("熊本の歴史1")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 300, height: 200)
                                    .buttonStyle(MyButtonStyle())
                                    .disabled(buttonmovie7)
                                    .shadow(color: .gray, radius: 3, x: 3, y: 3)
                            }.padding(.horizontal)//7
                            Text("加藤清正と水について\n説明するよ！")
                                .foregroundColor(Color(red:0.3,green:0.3, blue:0.3))
                                .font(Font.mainFont(size: 15))
                                .bold()
                        }
                        VStack{
                            Button(action: {
                                selectmoview1 = false
                                selectmoview2 = false
                                selectmoview3 = false
                                selectmoview4 = false
                                selectmoview5 = false
                                selectmoview6 = false
                                selectmoview7 = false
                                selectmoview8 = true
                                selectmoview9 = false
                                selectmoview10 = false
                                
                                buttonmovie1 = true
                                buttonmovie2 = true
                                buttonmovie3 = true
                                buttonmovie4 = true
                                buttonmovie5 = true
                                buttonmovie6 = true
                                buttonmovie7 = true
                                buttonmovie8.toggle()
                                buttonmovie9 = true
                                buttonmovie10 = true
                            }){
                                Image("熊本の歴史2")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 300, height: 200)
                                    .buttonStyle(MyButtonStyle())
                                    .disabled(buttonmovie8)
                                    .shadow(color: .gray, radius: 3, x: 3, y: 3)
                            }.padding(.horizontal)//8
                            Text("水道水がどこからきているのか\n説明するよ！")
                                .foregroundColor(Color(red:0.3,green:0.3, blue:0.3))
                                .font(Font.mainFont(size: 15))
                                .bold()
                        }
                        VStack{
                            Button(action: {
                                selectmoview1 = false
                                selectmoview2 = false
                                selectmoview3 = false
                                selectmoview4 = false
                                selectmoview5 = false
                                selectmoview6 = false
                                selectmoview7 = false
                                selectmoview8 = false
                                selectmoview9 = true
                                selectmoview10 = false
                                
                                buttonmovie1 = true
                                buttonmovie2 = true
                                buttonmovie3 = true
                                buttonmovie4 = true
                                buttonmovie5 = true
                                buttonmovie6 = true
                                buttonmovie7 = true
                                buttonmovie8 = true
                                buttonmovie9.toggle()
                                buttonmovie10 = true
                            }){
                                Image("節水1")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 300, height: 200)
                                    .buttonStyle(MyButtonStyle())
                                    .disabled(buttonmovie9)
                                    .shadow(color: .gray, radius: 3, x: 3, y: 3)
                            }.padding(.horizontal)//9
                            Text("節水について熊本市の取り組みや\n目標についてみていくよ！")
                                .foregroundColor(Color(red:0.3,green:0.3, blue:0.3))
                                .font(Font.mainFont(size: 15))
                                .bold()
                        }
                        VStack{
                            Button(action: {
                                selectmoview1 = false
                                selectmoview2 = false
                                selectmoview3 = false
                                selectmoview4 = false
                                selectmoview5 = false
                                selectmoview6 = false
                                selectmoview7 = false
                                selectmoview8 = false
                                selectmoview9 = false
                                selectmoview10 = true
                                
                                buttonmovie1 = true
                                buttonmovie2 = true
                                buttonmovie3 = true
                                buttonmovie4 = true
                                buttonmovie5 = true
                                buttonmovie6 = true
                                buttonmovie7 = true
                                buttonmovie8 = true
                                buttonmovie9 = true
                                buttonmovie10.toggle()
                            }){
                                Image("節水2")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 300, height: 200)
                                    .buttonStyle(MyButtonStyle())
                                    .disabled(buttonmovie10)
                                    .shadow(color: .gray, radius: 3, x: 3, y: 3)
                            }.padding(.horizontal)//10
                            Text("節水につながる行動について\nみていくよ！")
                                .foregroundColor(Color(red:0.3,green:0.3, blue:0.3))
                                .font(Font.mainFont(size: 15))
                                .bold()
                        }
                    }
                }
                .alert(isPresented: self.$isAlert){
                    Alert(title: Text("コメントを書いてみてね！"),dismissButton: .default(Text("OK！")))
                }
            }
            .onAppear(){
                guard let defaultitem1 = UserDefaults.standard.array(forKey: "Comment1") as? [String]
                else {return}
                self.comment1 = defaultitem1
                guard let defaultitem2 = UserDefaults.standard.array(forKey: "Comment2") as? [String]
                else {return}
                self.comment2 = defaultitem2
                guard let defaultitem3 = UserDefaults.standard.array(forKey: "Comment3") as? [String]
                else {return}
                self.comment3 = defaultitem3
                guard let defaultitem4 = UserDefaults.standard.array(forKey: "Comment4") as? [String]
                else {return}
                self.comment4 = defaultitem4
                guard let defaultitem5 = UserDefaults.standard.array(forKey: "Comment5") as? [String]
                else {return}
                self.comment5 = defaultitem5
                guard let defaultitem6 = UserDefaults.standard.array(forKey: "Comment6") as? [String]
                else {return}
                self.comment6 = defaultitem6
                guard let defaultitem7 = UserDefaults.standard.array(forKey: "Comment7") as? [String]
                else {return}
                self.comment7 = defaultitem7
                guard let defaultitem8 = UserDefaults.standard.array(forKey: "Comment8") as? [String]
                else {return}
                self.comment8 = defaultitem8
                guard let defaultitem9 = UserDefaults.standard.array(forKey: "Comment9") as? [String]
                else {return}
                self.comment9 = defaultitem9
                guard let defaultitem10 = UserDefaults.standard.array(forKey: "Comment10") as? [String]
                else {return}
                self.comment10 = defaultitem10
            }.customBackButton()
            
            
    //        .toolbar {
    //            /// ナビゲーションバー左、戻るボタンでSFシンボルを使いたい
    //            ToolbarItem(placement: .navigationBarLeading){
    //                Button(action: {}) {
    //                    Image(systemName: "house")
    //                }
    //            }
    //        }
        }
//        .onAppear{
//            self.scale.toggle()
//        }
    }
}

//struct playOnlineFile: View {
//        let url = URL(string: "http://ilab.watson.jp/Test/TatsukiTest/movie1.mp4")!
//        let playerItem = AVPlayerItem(url: url)
//    //動画再生
//    @State var avPlayer: AVPlayer?
//    var body: some View{
//        avPlayer = AVPlayer(playerItem: playerItem)
//        avPlayer?.play()
//    }
//}

struct MyButtonStyle2: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        MyButton2(configuration:configuration)
    }
    
    struct MyButton2: View {
        @Environment(\.isEnabled) var isEnabled
        let configuration: MyButtonStyle.Configuration
        var body: some View {
            configuration.label
                .foregroundColor(isEnabled ? .yellow : .yellow)
                .opacity(configuration.isPressed ? 0.2 : 1.0)
                .padding(15)
                .background(isEnabled ? Color.yellow.opacity(0.4) : Color.yellow)
                .cornerRadius(5)
        }
    }
}

//動画再生
//struct moviestart1: View{
////https://lolipopftp.lolipop.jp/file/edit/root/Test/MatsushitaTest/kumamotonomizu1ver2.mp4
//
//    @State var player = AVPlayer()
//    var videoUrl: String = "http://ilab.watson.jp/Test/TatsukiTest/movie1.mp4"
//
//     var body: some View{
//        VideoPlayer(player: player)
//            .onAppear(){
//                player = AVPlayer(url: URL(string: videoUrl)!)
//                player.play()
//            }
//            .onDisappear(){
//                player.pause()
//            }
//     }
//}

//struct UIViewControllerRepresenter: UIViewControllerRepresentable {
//   var uiViewController: UIViewController
//   init(_ uiViewController: UIViewController) {
//       self.uiViewController = uiViewController
//   }
//   func makeUIViewController(context: Self.Context) -> UIViewController {
//       uiViewController
//   }
//   func updateUIViewController(_ uiViewController: UIViewController, context: Self.Context) {
//       //
//   }
//}

struct moviestart1: View{

    var playerViewController = { () -> AVPlayerViewController in
          let address = "http://ilab.watson.jp/Test/MatsushitaTest/tikasuinohimitsu.mp4"
          let url = URL(string: address)!
          let pvc = AVPlayerViewController()
          pvc.player = AVPlayer(url: url)
          pvc.showsPlaybackControls = false
          return pvc
      }()
      
      var player: AVPlayer { playerViewController.player! }
      

     var body: some View{
         //UIViewControllerRepresenter(playerViewController)
        VideoPlayer(player: player)
            .onAppear(){
                player.play()
            }
            .onDisappear(){
                player.pause()
            }
        }
    }
struct moviestart2: View{

    var playerViewController = { () -> AVPlayerViewController in
          let address = "http://ilab.watson.jp/Test/MatsushitaTest/kumamotonomizunituite.mp4"
          let url = URL(string: address)!
          let pvc = AVPlayerViewController()
          pvc.player = AVPlayer(url: url)
          pvc.showsPlaybackControls = false
          return pvc
      }()
      
      var player: AVPlayer { playerViewController.player! }
      

     var body: some View{
         //UIViewControllerRepresenter(playerViewController)
        VideoPlayer(player: player)
            .onAppear(){
                player.play()
            }
            .onDisappear(){
                player.pause()
            }
        }
    }
struct moviestart3: View{

    var playerViewController = { () -> AVPlayerViewController in
          let address = "http://ilab.watson.jp/Test/MatsushitaTest/SDGsttesitteru.mp4"
          let url = URL(string: address)!
          let pvc = AVPlayerViewController()
          pvc.player = AVPlayer(url: url)
          pvc.showsPlaybackControls = false
          return pvc
      }()
      
      var player: AVPlayer { playerViewController.player! }
      

     var body: some View{
         //UIViewControllerRepresenter(playerViewController)
        VideoPlayer(player: player)
            .onAppear(){
                player.play()
            }
            .onDisappear(){
                player.pause()
            }
        }
    }
struct moviestart4: View{

    var playerViewController = { () -> AVPlayerViewController in
          let address = "http://ilab.watson.jp/Test/MatsushitaTest/SDGssuujikei.mp4"
          let url = URL(string: address)!
          let pvc = AVPlayerViewController()
          pvc.player = AVPlayer(url: url)
          pvc.showsPlaybackControls = false
          return pvc
      }()
      
      var player: AVPlayer { playerViewController.player! }
      

     var body: some View{
         //UIViewControllerRepresenter(playerViewController)
        VideoPlayer(player: player)
            .onAppear(){
                player.play()
            }
            .onDisappear(){
                player.pause()
            }
        }
    }
struct moviestart5: View{

    var playerViewController = { () -> AVPlayerViewController in
          let address = "http://ilab.watson.jp/Test/MatsushitaTest/tikasuinohimitumitemiru.mp4"
          let url = URL(string: address)!
          let pvc = AVPlayerViewController()
          pvc.player = AVPlayer(url: url)
          pvc.showsPlaybackControls = false
          return pvc
      }()
      
      var player: AVPlayer { playerViewController.player! }
      

     var body: some View{
         //UIViewControllerRepresenter(playerViewController)
        VideoPlayer(player: player)
            .onAppear(){
                player.play()
            }
            .onDisappear(){
                player.pause()
            }
        }
    }
struct moviestart6: View{

    var playerViewController = { () -> AVPlayerViewController in
          let address = "http://ilab.watson.jp/Test/MatsushitaTest/tikasuitteyogosareteru.mp4"
          let url = URL(string: address)!
          let pvc = AVPlayerViewController()
          pvc.player = AVPlayer(url: url)
          pvc.showsPlaybackControls = false
          return pvc
      }()
      
      var player: AVPlayer { playerViewController.player! }
      

     var body: some View{
         //UIViewControllerRepresenter(playerViewController)
        VideoPlayer(player: player)
            .onAppear(){
                player.play()
            }
            .onDisappear(){
                player.pause()
            }
        }
    }
struct moviestart7: View{

    var playerViewController = { () -> AVPlayerViewController in
          let address = "    http://ilab.watson.jp/Test/MatsushitaTest/katoukiyomasattesitteru.mp4"
          let url = URL(string: address)!
          let pvc = AVPlayerViewController()
          pvc.player = AVPlayer(url: url)
          pvc.showsPlaybackControls = false
          return pvc
      }()
      
      var player: AVPlayer { playerViewController.player! }
      

     var body: some View{
         //UIViewControllerRepresenter(playerViewController)
        VideoPlayer(player: player)
            .onAppear(){
                player.play()
            }
            .onDisappear(){
                player.pause()
            }
        }
    }
struct moviestart8: View{

    var playerViewController = { () -> AVPlayerViewController in
          let address = "http://ilab.watson.jp/Test/MatsushitaTest/suidousuittedokokarakiteru.mp4"
          let url = URL(string: address)!
          let pvc = AVPlayerViewController()
          pvc.player = AVPlayer(url: url)
          pvc.showsPlaybackControls = false
          return pvc
      }()
      
      var player: AVPlayer { playerViewController.player! }
      

     var body: some View{
         //UIViewControllerRepresenter(playerViewController)
        VideoPlayer(player: player)
            .onAppear(){
                player.play()
            }
            .onDisappear(){
                player.pause()
            }
        }
    }
struct moviestart9: View{

    var playerViewController = { () -> AVPlayerViewController in
          let address = "http://ilab.watson.jp/Test/MatsushitaTest/sessuinomokuhyouttesitteru.mp4"
          let url = URL(string: address)!
          let pvc = AVPlayerViewController()
          pvc.player = AVPlayer(url: url)
          pvc.showsPlaybackControls = false
          return pvc
      }()
      
      var player: AVPlayer { playerViewController.player! }
      

     var body: some View{
         //UIViewControllerRepresenter(playerViewController)
        VideoPlayer(player: player)
            .onAppear(){
                player.play()
            }
            .onDisappear(){
                player.pause()
            }
        }
    }
struct moviestart10: View{

    var playerViewController = { () -> AVPlayerViewController in
          let address = "http://ilab.watson.jp/Test/MatsushitaTest/sessuitteyatteru.mp4"
          let url = URL(string: address)!
          let pvc = AVPlayerViewController()
          pvc.player = AVPlayer(url: url)
          pvc.showsPlaybackControls = false
          return pvc
      }()
      
      var player: AVPlayer { playerViewController.player! }
      

     var body: some View{
         //UIViewControllerRepresenter(playerViewController)
        VideoPlayer(player: player)
            .onAppear(){
                player.play()
            }
            .onDisappear(){
                player.pause()
            }
        }
    }

//struct moviestart1: View{
//
//     private let player1 = AVPlayer(url: Bundle.main.url(forResource:"熊本の水２音声あり",withExtension: "mp4")!)
//
//     var body: some View{
//        VideoPlayer(player: player1)
//            .onAppear(){
//                player1.play()
//            }
//            .onDisappear(){
//                player1.pause()
//            }
//        }
//    }
//struct moviestart2: View{
//
//     private let player2 = AVPlayer(url: Bundle.main.url(forResource:"熊本の水２音声あり",withExtension: "mp4")!)
//
//     var body: some View{
//        VideoPlayer(player: player2)
//            .onAppear(){
//                player2.play()
//            }
//            .onDisappear(){
//                player2.pause()
//            }
//        }
//    }
//struct moviestart3: View{
//
//     private let player3 = AVPlayer(url: Bundle.main.url(forResource:"SDGs数字系_5",withExtension: "mp4")!)
//
//     var body: some View{
//        VideoPlayer(player: player3)
//            .onAppear(){
//                player3.play()
//            }
//            .onDisappear(){
//                player3.pause()
//            }
//        }
//    }
//struct moviestart4: View{
//
//     private let player4 = AVPlayer(url: Bundle.main.url(forResource:"熊本の水２音声あり",withExtension: "mp4")!)
//
//     var body: some View{
//        VideoPlayer(player: player4)
//            .onAppear(){
//                player4.play()
//            }
//            .onDisappear(){
//                player4.pause()
//            }
//        }
//    }
//struct moviestart5: View{
//
//     private let player5 = AVPlayer(url: Bundle.main.url(forResource:"熊本の水２音声あり",withExtension: "mp4")!)
//
//     var body: some View{
//        VideoPlayer(player: player5)
//            .onAppear(){
//                player5.play()
//            }
//            .onDisappear(){
//                player5.pause()
//            }
//        }
//    }
//struct moviestart6: View{
//
//     private let player6 = AVPlayer(url: Bundle.main.url(forResource:"熊本の水２音声あり",withExtension: "mp4")!)
//
//     var body: some View{
//        VideoPlayer(player: player6)
//            .onAppear(){
//                player6.play()
//
//            }
//            .onDisappear(){
//                player6.pause()
//            }
//        }
//    }
//struct moviestart7: View{
//
//     private let player7 = AVPlayer(url: Bundle.main.url(forResource:"加藤清正って知ってる？",withExtension: "mp4")!)
//
//     var body: some View{
//        VideoPlayer(player: player7)
//            .onAppear(){
//                player7.play()
//            }
//            .onDisappear(){
//                player7.pause()
//            }
//        }
//    }
//struct moviestart8: View{
//
//     private let player8 = AVPlayer(url: Bundle.main.url(forResource:"熊本の水２音声あり",withExtension: "mp4")!)
//
//     var body: some View{
//        VideoPlayer(player: player8)
//            .onAppear(){
//                player8.play()
//
//            }
//            .onDisappear(){
//                player8.pause()
//            }
//        }
//    }
//struct moviestart9: View{
//
//     private let player9 = AVPlayer(url: Bundle.main.url(forResource:"熊本の水２音声あり",withExtension: "mp4")!)
//
//     var body: some View{
//        VideoPlayer(player: player9)
//            .onAppear(){
//                player9.play()
//
//            }
//            .onDisappear(){
//                player9.pause()
//            }
//        }
//    }
//struct moviestart10: View{
//
//     private let player10 = AVPlayer(url: Bundle.main.url(forResource:"熊本の水２音声あり",withExtension: "mp4")!)
//
//     var body: some View{
//        VideoPlayer(player: player10)
//            .onAppear(){
//                player10.play()
//            }
//            .onDisappear(){
//                player10.pause()
//            }
//        }
//    }

//動画再生
//func playMovieFromUrl(movieUrl: URL?) {
//    if let movieUrl = movieUrl {
//        let videoPlayer = AVPlayer(url: movieUrl)
//        let playerController = AVPlayerViewController()
//        playerController.player = videoPlayer
//        self.present(playerController, animated: true, completion: {
//            videoPlayer.play()
//        })
//    } else {
//        print("cannot play")
//    }
//}

//func playMovieFromPath(moviePath: String?) {
//    if let moviePath = moviePath {
//        self.playMovieFromUrl(movieUrl: URL(fileURLWithPath: moviePath))
//    } else {
//        print("no such file")
//    }
//}
//let remoteFileUrl1: String = "https://lolipopftp.lolipop.jp/file/edit/root/Test/MatsushitaTest/kumamotonomizu1ver2.mp4"
//
//@IBAction func playMovieFromRemoteFile() {
//    playMovieFromUrl(movieUrl: URL(string: remoteFileUrl1))
//}
//let remoteFileUrl1: String = "https://lolipopftp.lolipop.jp/file/edit/root/Test/MatsushitaTest/SDGs%E6%95%B0%E5%AD%97%E7%B3%BB_5%20ver2.mp4"
//
//@IBAction func playMovieFromRemoteFile() {
//    playMovieFromUrl(movieUrl: URL(string: remoteFileUrl1))
//}
//let remoteFileUrl1: String = "https://lolipopftp.lolipop.jp/file/edit/root/Test/MatsushitaTest/%E7%86%8A%E6%9C%AC%E3%81%AE%E6%B0%B4%EF%BC%92%E3%80%80%E9%9F%B3%E5%A3%B0%EF%BC%88%E6%9C%89%EF%BC%89%20ver2.mp4"
//
//@IBAction func playMovieFromRemoteFile() {
//    playMovieFromUrl(movieUrl: URL(string: remoteFileUrl1))
//}

struct GifImage: UIViewRepresentable {
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.reload()
    }

    private let name: String

    init(_ name: String){
        self.name = name
    }

    func makeUIView(context: Context) -> WKWebView{
        let webView = WKWebView()
        let url = Bundle.main.url(forResource: name, withExtension: "gif")
        let data = try! Data(contentsOf: url!)

        webView.load(
            data,
            mimeType: "image/gif",
            characterEncodingName: "UTF-8",
            baseURL: url!.deletingLastPathComponent()
        )
        return webView
    }
}

struct MovieViewTest_Previews: PreviewProvider {
    static var previews: some View {
        MovieView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
