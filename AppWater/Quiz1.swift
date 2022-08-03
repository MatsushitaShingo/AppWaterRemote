//
//  Quiz1.swift
//  AppWater
//
//  Created by 田中翔大 on 2022/04/01.
//

import SwiftUI
import AVKit


struct ModalView1: View {
    
    @State private var isActive1 = false
    @Binding var isFirstViewActive1: Bool
    
    var body: some View {
        NavigationLink(destination: Quiz1answer1(isFirstViewActive1: $isFirstViewActive1), isActive: $isActive1) {
            Button(action: {
                self.isActive1 = true
            }, label: {
                ZStack{
                    Image(systemName: "drop.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                        .foregroundColor(.black)
                    Text("START!")
                        .padding(.vertical)
                        .foregroundColor(.white)

                    
                }
            })
        }
        .isDetailLink(false)
        .navigationViewStyle(.stack)
    }
}

struct tanakaView: View {
    
    @Binding var isFirstViewActive1: Bool
    
    var body: some View {
        Button(action: {
            self.isFirstViewActive1 = false
        }, label: {
            Text("Back to First View.")
        })
        .navigationBarTitle("Third View")
    }
}

//struct ModalView1: View {
//
//    @Environment(\.presentationMode)var PresentationMode
//
//    var body: some View {
//        NavigationView{
//
//
//            NavigationLink(destination: Quiz1answer1()){
//                ZStack{
//                    Image(systemName: "drop.fill")
//                        .resizable()
//                        .scaledToFit()
//                        .frame(width: 200, height: 200)
//                        .foregroundColor(.black)
//                    Text("START!")
//                        .padding(.vertical)
//                        .foregroundColor(.white)
//                        .navigationBarItems(trailing:Button(action:{self.PresentationMode.wrappedValue.dismiss()
//                        })
//                                            {
//                            Text("戻る")
//                        })
//
//                }
//
//          }.navigationViewStyle(.stack)
//
//        }
//
//
//    }
//}

struct Quiz1answer1: View {
    
    @State private var isShowing2View1: Bool = false
    @State private var isActive1 = false
    @Binding var isFirstViewActive1: Bool
    
    var body: some View {
        ZStack{
            Color(red: 0.965, green: 0.878, blue: 0.216)
                .ignoresSafeArea()
            VStack (spacing: 10){
                
                NavigationLink(destination: finishView(isFirstViewActive1: $isFirstViewActive1), isActive: $isActive1) {
                    Button(action: {
                        self.isActive1 = true
                    }, label: {
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

                    })
                }.isDetailLink(false)
                    .offset(x:500,y: -100)
              
//                Button(action: {self.isShowing2View1.toggle()}){
//                    ZStack{
//                        Image(systemName: "drop.fill")
//                            .resizable()
//                            .scaledToFit()
//                            .frame(width: 50, height: 50)
//                            .foregroundColor(.blue)
//                        Text("戻る")
//                            .padding(.vertical)
//                            .foregroundColor(.white)
//                    }
//                }.fullScreenCover(isPresented:$isShowing2View1){
//                    finishView()
//                }.offset(x:500,y: -100)
//
                    ZStack{
                        
                        Text("第１問")
                            .font(.largeTitle)
                            
                    }.offset(y: -100)
                    

                    
                

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

                    NavigationLink(destination: Quiz1answer1true(isFirstViewActive1: $isFirstViewActive1), isActive: $isActive1) {
                        Button(action: {
                            self.isActive1 = true
                        }, label: {
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
                        })
                    }.isDetailLink(false)
                    
                    NavigationLink(destination: Quiz1answer1false(isFirstViewActive1: $isFirstViewActive1), isActive: $isActive1) {
                        Button(action: {
                            self.isActive1 = true
                        }, label: {
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
                        })
                    }.isDetailLink(false)
                            
//                    NavigationLink(destination: Quiz1answer1false()) {
//
//                        ZStack{
//                               Rectangle()
//                                .fill(Color.white)
//                                .border(Color.black, width: 3)
//                                .frame(width:350,height: 150)
//                                            Text("全シアン")
//                                .font(.largeTitle)
//                                .background(Color.white)
//                                .foregroundColor(Color.black)
//                                .frame(width: 300, height: 100)
//
//                        }
//                    }
                            
                    NavigationLink(destination: Quiz1answer1false(isFirstViewActive1: $isFirstViewActive1), isActive: $isActive1) {
                        Button(action: {
                            self.isActive1 = true
                        }, label: {
                            ZStack{
                                   Rectangle()
                                    .fill(Color.white)
                                    .border(Color.black, width: 3)
                                    .frame(width:350,height: 150)
                                Text("四塩化炭素")
                    .font(.largeTitle)
                    .background(Color.white)
                    .foregroundColor(Color.black)
                    .frame(width: 300, height: 100)
                                                    
                            }
                        })
                    }.isDetailLink(false)
                
//                    NavigationLink(destination: Quiz1answer1false()) {
//
//                        ZStack{
//                               Rectangle()
//                                .fill(Color.white)
//                                .border(Color.black, width: 3)
//                                .frame(width:350,height: 150)
//                                            Text("四塩化炭素")
//                                . font(.largeTitle)
//                                .background(Color.white)
//                                .foregroundColor(Color.black)
//                                .frame(width: 300, height: 100)
//
//                        }
//
//
//                    }

                 
                        }
        }

            
        }
    }
}

struct Quiz1answer1true: View {
    
    @State private var isActive1 = false
    @Binding var isFirstViewActive1: Bool
    
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
                          
                    NavigationLink(destination: Quiz1answer2(isFirstViewActive1: $isFirstViewActive1), isActive: $isActive1) {
                        Button(action: {
                            self.isActive1 = true
                        }, label: {
                            Text("次の問題へ")
                                .foregroundColor(.red)
                                .font(.largeTitle)
                                .bold()
                                .frame(width: 200, height: 100)
                                .border(Color.gray, width: 5)
                        })
                    }.isDetailLink(false)
                    
//                    NavigationLink(destination: Quiz1answer2()) {
//
//                        Text("次の問題へ")
//                            .foregroundColor(.red)
//                            .font(.largeTitle)
//                            .bold()
//                            .frame(width: 200, height: 100)
//                            .border(Color.gray, width: 5)
//                    }
            }
        }
        }

}
}
struct Quiz1answer1false: View {
    
    @State private var isActive1 = false
    @Binding var isFirstViewActive1: Bool
    
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
                        
                
                NavigationLink(destination: Quiz1answer2(isFirstViewActive1: $isFirstViewActive1), isActive: $isActive1) {
                    Button(action: {
                        self.isActive1 = true
                    }, label: {
                        Text("次の問題へ")
                            .foregroundColor(.red)
                            .font(.largeTitle)
                            .bold()
                            .frame(width: 200, height: 100)
                            .border(Color.gray, width: 5)
                    })
                }.isDetailLink(false)
//                NavigationLink(destination: Quiz1answer2()) {
//
//                    Text("次の問題へ")
//                        .foregroundColor(.red)
//                        .font(.largeTitle)
//                        .bold()
//                        .frame(width: 200, height: 100)
//                        .border(Color.gray, width: 5)
//                }
        }
    }
}
}

struct moviestart1: View{
    
    
    
     private let player = AVPlayer(url: Bundle.main.url(forResource:"movie",withExtension: "mp4")!)
    
     var body: some View{
        VideoPlayer(player: player)
            .onAppear(){
                player.play()
                
            }
            .onDisappear(){
                player.pause()
            }
        }
    }

//地下水2
struct Quiz1answer2: View {
    
    @State private var isActive1 = false
    @Binding var isFirstViewActive1: Bool
    
    var body: some View {
        VStack (spacing: 10){
            NavigationLink(destination: finishView(isFirstViewActive1: $isFirstViewActive1), isActive: $isActive1) {
                Button(action: {
                    self.isActive1 = true
                }, label: {
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

                })
            }.isDetailLink(false)
                .offset(x:500,y: -100)
            Text("地下水２")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .padding()
            

            ZStack{
                Rectangle()
                 .stroke(lineWidth: 5)
                 .frame(width:850,height: 300)
                                Text("地下水は日本の水使用量全体の約何％を占めている？")
                                    .foregroundColor(.black)
                                    .font(.largeTitle)
                                    .bold()
                                    .multilineTextAlignment(.center)
                            }

            HStack {

                NavigationLink(destination: Quiz1answer2false(isFirstViewActive1: $isFirstViewActive1), isActive: $isActive1) {
                    Button(action: {
                        self.isActive1 = true
                    }, label: {
                        ZStack{
                               Rectangle()
                                .fill(Color.white)
                                .border(Color.black, width: 3)
                                .frame(width:350,height: 150)
                                            Text("30%")
                                .font(.largeTitle)
                                .background(Color.white)
                                .foregroundColor(Color.black)
                                .frame(width: 300, height: 100)
                                                
                        }
                    })
                }.isDetailLink(false)
                
//                NavigationLink(destination: Quiz1answer2false()) {
//
//                    ZStack{
//                           Rectangle()
//                            .fill(Color.white)
//                            .border(Color.black, width: 3)
//                            .frame(width:350,height: 150)
//                                        Text("30%")
//                            .font(.largeTitle)
//                            .background(Color.white)
//                            .foregroundColor(Color.black)
//                            .frame(width: 300, height: 100)
//
//                    }
//
//                }
                        
                NavigationLink(destination: Quiz1answer2true(isFirstViewActive1: $isFirstViewActive1), isActive: $isActive1) {
                    Button(action: {
                        self.isActive1 = true
                    }, label: {
                        ZStack{
                               Rectangle()
                                .fill(Color.white)
                                .border(Color.black, width: 3)
                                .frame(width:350,height: 150)
                                            Text("10%")
                                .font(.largeTitle)
                                .background(Color.white)
                                .foregroundColor(Color.black)
                                .frame(width: 300, height: 100)
                                                
                        }
                    })
                }.isDetailLink(false)
                
//                NavigationLink(destination: Quiz1answer2true()) {
//
//                    ZStack{
//                           Rectangle()
//                            .fill(Color.white)
//                            .border(Color.black, width: 3)
//                            .frame(width:350,height: 150)
//                                        Text("10%")
//                            .font(.largeTitle)
//                            .background(Color.white)
//                            .foregroundColor(Color.black)
//                            .frame(width: 300, height: 100)
//
//                    }
//
//                }
                NavigationLink(destination: Quiz1answer2false(isFirstViewActive1: $isFirstViewActive1), isActive: $isActive1) {
                    Button(action: {
                        self.isActive1 = true
                    }, label: {
                        ZStack{
                               Rectangle()
                                .fill(Color.white)
                                .border(Color.black, width: 3)
                                .frame(width:350,height: 150)
                                            Text("50%")
                                .font(.largeTitle)
                                .background(Color.white)
                                .foregroundColor(Color.black)
                                .frame(width: 300, height: 100)
                                                
                        }

                    })
                }.isDetailLink(false)
                        
//                NavigationLink(destination: Quiz1answer2false()) {
//
//                    ZStack{
//                           Rectangle()
//                            .fill(Color.white)
//                            .border(Color.black, width: 3)
//                            .frame(width:350,height: 150)
//                                        Text("50%")
//                            .font(.largeTitle)
//                            .background(Color.white)
//                            .foregroundColor(Color.black)
//                            .frame(width: 300, height: 100)
//
//                    }
//
//                }

             
                    }
            
        }
    }
}

struct Quiz1answer2true: View {
    
    @State private var isActive1 = false
    @Binding var isFirstViewActive1: Bool
    
    var body: some View {
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
                    Color.red
                    .frame(width:650,height: 200)
                    Text("解説")
                    .foregroundColor(.black)
                    .font(.largeTitle)
                    .bold()
                            }
            
            HStack {

                NavigationLink(destination: moviestart2()) {

                    Text("動画を見る")
                        .foregroundColor(.red)
                        .font(.largeTitle)
                        .bold()
                        .frame(width: 200, height: 100)
                        .border(Color.gray, width: 5)
                }
                      
                
                NavigationLink(destination: Quiz1answer3(isFirstViewActive1: $isFirstViewActive1), isActive: $isActive1) {
                    Button(action: {
                        self.isActive1 = true
                    }, label: {
                        Text("次の問題へ")
                            .foregroundColor(.red)
                            .font(.largeTitle)
                            .bold()
                            .frame(width: 200, height: 100)
                            .border(Color.gray, width: 5)

                    })
                }.isDetailLink(false)
//                NavigationLink(destination: Quiz1answer3()) {
//
//                    Text("次の問題へ")
//                        .foregroundColor(.red)
//                        .font(.largeTitle)
//                        .bold()
//                        .frame(width: 200, height: 100)
//                        .border(Color.gray, width: 5)
//                }
        }
    }
}
}
struct Quiz1answer2false: View {
    
    @State private var isActive1 = false
    @Binding var isFirstViewActive1: Bool
    
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

                NavigationLink(destination: moviestart2()) {

                    Text("動画を見る")
                        .foregroundColor(.red)
                        .font(.largeTitle)
                        .bold()
                        .frame(width: 200, height: 100)
                        .border(Color.gray, width: 5)
                }
                     
                NavigationLink(destination: Quiz1answer3(isFirstViewActive1: $isFirstViewActive1), isActive: $isActive1) {
                    Button(action: {
                        self.isActive1 = true
                    }, label: {
                        Text("次の問題へ")
                            .foregroundColor(.red)
                            .font(.largeTitle)
                            .bold()
                            .frame(width: 200, height: 100)
                            .border(Color.gray, width: 5)

                    })
                }.isDetailLink(false)
                
//                NavigationLink(destination: Quiz1answer3()) {
//
//                    Text("次の問題へ")
//                        .foregroundColor(.red)
//                        .font(.largeTitle)
//                        .bold()
//                        .frame(width: 200, height: 100)
//                        .border(Color.gray, width: 5)
//                }
        }
    }
}
}

struct moviestart2: View{
    
     private let player = AVPlayer(url: Bundle.main.url(forResource:"movie",withExtension: "mp4")!)
    
     var body: some View{
        VideoPlayer(player: player)
            .onAppear(){
                player.play()
                
            }
            .onDisappear(){
                player.pause()
            }
        }
    }


//地下水３
struct Quiz1answer3: View {
    
    @State private var isActive1 = false
    @Binding var isFirstViewActive1: Bool
    
    var body: some View {
        VStack (spacing: 10){
            NavigationLink(destination: finishView(isFirstViewActive1: $isFirstViewActive1), isActive: $isActive1) {
                Button(action: {
                    self.isActive1 = true
                }, label: {
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

                })
            }.isDetailLink(false)
                .offset(x:500,y: -100)
            Text("地下水3")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .padding()
            

            ZStack{
                Rectangle()
                 .stroke(lineWidth: 5)
                 .frame(width:1050,height: 300)
                                Text("地下水が減少している理由は2つあり、\n一つは、水田が畑になっていることである。もう一つは？")
                                    .foregroundColor(.black)
                                    .font(.largeTitle)
                                    .bold()
                                    .multilineTextAlignment(.center)
                            }

            HStack {

                NavigationLink(destination: Quiz1answer3false(isFirstViewActive1: $isFirstViewActive1), isActive: $isActive1) {
                    Button(action: {
                        self.isActive1 = true
                    }, label: {
                        ZStack{
                               Rectangle()
                                .fill(Color.white)
                                .border(Color.black, width: 3)
                                .frame(width:350,height: 150)
                                            Text("街が広がって、\n雨水が染み込まないから")
                                .font(.title2)
                                .background(Color.white)
                                .foregroundColor(Color.black)
                                .frame(width: 300, height: 100)
                                                
                        }
                    })
                }.isDetailLink(false)
                
//                NavigationLink(destination: Quiz1answer3false()) {
//                    ZStack{
//                           Rectangle()
//                            .fill(Color.white)
//                            .border(Color.black, width: 3)
//                            .frame(width:350,height: 150)
//                                        Text("街が広がって、\n雨水が染み込まないから")
//                            .font(.title2)
//                            .background(Color.white)
//                            .foregroundColor(Color.black)
//                            .frame(width: 300, height: 100)
//
//                    }
//
//                }
                        
                
                NavigationLink(destination: Quiz1answer3false(isFirstViewActive1: $isFirstViewActive1), isActive: $isActive1) {
                    Button(action: {
                        self.isActive1 = true
                    }, label: {
                        ZStack{
                               Rectangle()
                                .fill(Color.white)
                                .border(Color.black, width: 3)
                                .frame(width:350,height: 150)
                                            Text("森が広がって、\n雨水が染み込まないから")
                                .font(.title2)
                                .background(Color.white)
                                .foregroundColor(Color.black)
                                .frame(width: 300, height: 100)
                                                
                        }
                    })
                }.isDetailLink(false)
                
//                NavigationLink(destination: Quiz1answer3false()) {
//                    ZStack{
//                           Rectangle()
//                            .fill(Color.white)
//                            .border(Color.black, width: 3)
//                            .frame(width:350,height: 150)
//                                        Text("森が広がって、\n雨水が染み込まないから")
//                            .font(.title2)
//                            .background(Color.white)
//                            .foregroundColor(Color.black)
//                            .frame(width: 300, height: 100)
//
//                    }
//                }
                        
                NavigationLink(destination: Quiz1answer3true(isFirstViewActive1: $isFirstViewActive1), isActive: $isActive1) {
                    Button(action: {
                        self.isActive1 = true
                    }, label: {
                        ZStack{
                               Rectangle()
                                .fill(Color.white)
                                .border(Color.black, width: 3)
                                .frame(width:350,height: 150)
                                            Text("土地が汚れて、\n雨水が染み込まないから")
                                .font(.title2)
                                .background(Color.white)
                                .foregroundColor(Color.black)
                                .frame(width: 300, height: 100)
                                                
                        }
                    })
                }.isDetailLink(false)
                
//                NavigationLink(destination: Quiz1answer3true()) {
//                    ZStack{
//                           Rectangle()
//                            .fill(Color.white)
//                            .border(Color.black, width: 3)
//                            .frame(width:350,height: 150)
//                                        Text("土地が汚れて、\n雨水が染み込まないから")
//                            .font(.title2)
//                            .background(Color.white)
//                            .foregroundColor(Color.black)
//                            .frame(width: 300, height: 100)
//
//                    }
//
//                }

             
                    }
            
        }
    }
}


struct Quiz1answer3true: View {
    
    @State private var isActive1 = false
    @Binding var isFirstViewActive1: Bool
    
    var body: some View {
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
                    Color.red
                    .frame(width:650,height: 200)
                    Text("解説")
                    .foregroundColor(.black)
                    .font(.largeTitle)
                    .bold()
                            }
            
            HStack {

                NavigationLink(destination: moviestart3()) {

                    Text("動画を見る")
                        .foregroundColor(.red)
                        .font(.largeTitle)
                        .bold()
                        .frame(width: 200, height: 100)
                        .border(Color.gray, width: 5)
                }
                        
                NavigationLink(destination: Quiz1answer4(isFirstViewActive1: $isFirstViewActive1), isActive: $isActive1) {
                    Button(action: {
                        self.isActive1 = true
                    }, label: {
                        Text("次の問題へ")
                            .foregroundColor(.red)
                            .font(.largeTitle)
                            .bold()
                            .frame(width: 200, height: 100)
                            .border(Color.gray, width: 5)
                    })
                }.isDetailLink(false)
                
//                NavigationLink(destination: Quiz1answer4()) {
//
//                    Text("次の問題へ")
//                        .foregroundColor(.red)
//                        .font(.largeTitle)
//                        .bold()
//                        .frame(width: 200, height: 100)
//                        .border(Color.gray, width: 5)
//                }
        }
    }
}
}
struct Quiz1answer3false: View {
    @State private var isActive1 = false
    @Binding var isFirstViewActive1: Bool
    
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

                NavigationLink(destination: moviestart3()) {

                    Text("動画を見る")
                        .foregroundColor(.red)
                        .font(.largeTitle)
                        .bold()
                        .frame(width: 200, height: 100)
                        .border(Color.gray, width: 5)
                }
                        
                NavigationLink(destination: Quiz1answer4(isFirstViewActive1: $isFirstViewActive1), isActive: $isActive1) {
                    Button(action: {
                        self.isActive1 = true
                    }, label: {
                        Text("次の問題へ")
                            .foregroundColor(.red)
                            .font(.largeTitle)
                            .bold()
                            .frame(width: 200, height: 100)
                            .border(Color.gray, width: 5)
                    })
                }.isDetailLink(false)
                
//                NavigationLink(destination: Quiz1answer4()) {
//
//                    Text("次の問題へ")
//                        .foregroundColor(.red)
//                        .font(.largeTitle)
//                        .bold()
//                        .frame(width: 200, height: 100)
//                        .border(Color.gray, width: 5)
//                }
        }
    }
}
}

struct moviestart3: View{
    
     private let player = AVPlayer(url: Bundle.main.url(forResource:"movie",withExtension: "mp4")!)
    
     var body: some View{
        VideoPlayer(player: player)
            .onAppear(){
                player.play()
                
            }
            .onDisappear(){
                player.pause()
            }
        }
    }

//地下水４
struct Quiz1answer4: View {
    @State private var isActive1 = false
    @Binding var isFirstViewActive1: Bool
    var body: some View {
        VStack (spacing: 10){
            NavigationLink(destination: finishView(isFirstViewActive1: $isFirstViewActive1), isActive: $isActive1) {
                Button(action: {
                    self.isActive1 = true
                }, label: {
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

                })
            }.isDetailLink(false)
                .offset(x:500,y: -100)
            Text("地下水4")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .padding()
            

            ZStack{
                Rectangle()
                 .stroke(lineWidth: 5)
                 .frame(width:1050,height: 300)
                                Text("問題")
                                    .foregroundColor(.black)
                                    .font(.largeTitle)
                                    .bold()
                                    .multilineTextAlignment(.center)
                            }


                .padding()
                .padding()
            HStack {

                NavigationLink(destination: Quiz1answer4false(isFirstViewActive1: $isFirstViewActive1), isActive: $isActive1) {
                    Button(action: {
                        self.isActive1 = true
                    }, label: {
                        ZStack{
                               Rectangle()
                                .fill(Color.white)
                                .border(Color.black, width: 3)
                                .frame(width:350,height: 150)
                                            Text("間違い")
                                .font(.largeTitle)
                                .background(Color.white)
                                .foregroundColor(Color.black)
                                .frame(width: 300, height: 100)
                                                
                        }
                    })
                }.isDetailLink(false)
                
                NavigationLink(destination:  Quiz1answer4true(isFirstViewActive1: $isFirstViewActive1), isActive: $isActive1) {
                    Button(action: {
                        self.isActive1 = true
                    }, label: {
                        ZStack{
                               Rectangle()
                                .fill(Color.white)
                                .border(Color.black, width: 3)
                                .frame(width:350,height: 150)
                                            Text("正解")
                                .font(.largeTitle)
                                .background(Color.white)
                                .foregroundColor(Color.black)
                                .frame(width: 300, height: 100)
                                                
                        }
                    })
                }.isDetailLink(false)
                        
                
                NavigationLink(destination:  Quiz1answer4false(isFirstViewActive1: $isFirstViewActive1), isActive: $isActive1) {
                    Button(action: {
                        self.isActive1 = true
                    }, label: {
                        ZStack{
                               Rectangle()
                                .fill(Color.white)
                                .border(Color.black, width: 3)
                                .frame(width:350,height: 150)
                                            Text("間違い")
                                .font(.largeTitle)
                                .background(Color.white)
                                .foregroundColor(Color.black)
                                .frame(width: 300, height: 100)
                                                
                        }
                    })
                }.isDetailLink(false)
                

             
                    }
            
        }
    }
}


struct Quiz1answer4true: View {
    
    @State private var isActive1 = false
    @Binding var isFirstViewActive1: Bool
    
    var body: some View {
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
                    Color.red
                    .frame(width:650,height: 200)
                    Text("解説")
                    .foregroundColor(.black)
                    .font(.largeTitle)
                    .bold()
                            }
            
            HStack {

                NavigationLink(destination: moviestart4()) {

                    Text("動画を見る")
                        .foregroundColor(.red)
                        .font(.largeTitle)
                        .bold()
                        .frame(width: 200, height: 100)
                        .border(Color.gray, width: 5)
                }
                    
                NavigationLink(destination: Quiz1answer5(isFirstViewActive1: $isFirstViewActive1), isActive: $isActive1) {
                    Button(action: {
                        self.isActive1 = true
                    }, label: {
                        Text("次の問題へ")
                            .foregroundColor(.red)
                            .font(.largeTitle)
                            .bold()
                            .frame(width: 200, height: 100)
                            .border(Color.gray, width: 5)
                    })
                }.isDetailLink(false)
                
//                NavigationLink(destination: Quiz1answer5()) {
//
//                    Text("次の問題へ")
//                        .foregroundColor(.red)
//                        .font(.largeTitle)
//                        .bold()
//                        .frame(width: 200, height: 100)
//                        .border(Color.gray, width: 5)
//                }
        }
    }
}
}
struct Quiz1answer4false: View {
    
    @State private var isActive1 = false
    @Binding var isFirstViewActive1: Bool
    
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

                NavigationLink(destination: moviestart4()) {

                    Text("動画を見る")
                        .foregroundColor(.red)
                        .font(.largeTitle)
                        .bold()
                        .frame(width: 200, height: 100)
                        .border(Color.gray, width: 5)
                }
                     
                NavigationLink(destination: Quiz1answer5(isFirstViewActive1: $isFirstViewActive1), isActive: $isActive1) {
                    Button(action: {
                        self.isActive1 = true
                    }, label: {
                        Text("次の問題へ")
                            .foregroundColor(.red)
                            .font(.largeTitle)
                            .bold()
                            .frame(width: 200, height: 100)
                            .border(Color.gray, width: 5)
                    })
                }.isDetailLink(false)
                
//                NavigationLink(destination: Quiz1answer5()) {
//
//                    Text("次の問題へ")
//                        .foregroundColor(.red)
//                        .font(.largeTitle)
//                        .bold()
//                        .frame(width: 200, height: 100)
//                        .border(Color.gray, width: 5)
//                }
        }
    }
}
}

struct moviestart4: View{
    
     private let player = AVPlayer(url: Bundle.main.url(forResource:"movie",withExtension: "mp4")!)
    
     var body: some View{
        VideoPlayer(player: player)
            .onAppear(){
                player.play()
                
            }
            .onDisappear(){
                player.pause()
            }
        }
    }


//地下水５
struct Quiz1answer5: View {
    @State private var isActive1 = false
    @Binding var isFirstViewActive1: Bool
    var body: some View {
        VStack (spacing: 10){
            NavigationLink(destination: finishView(isFirstViewActive1: $isFirstViewActive1), isActive: $isActive1) {
                Button(action: {
                    self.isActive1 = true
                }, label: {
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

                })
            }.isDetailLink(false)
                .offset(x:500,y: -100)
            Text("地下水5")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .padding()
            

            ZStack{
                    Color.red
                        .frame(width:650,height: 300)
                                Text("問題")
                                    .foregroundColor(.black)
                                    .font(.largeTitle)
                                    .bold()
                            }

                .padding()
                .padding()
            HStack {
                
                NavigationLink(destination: Quiz1answer5true(isFirstViewActive1: $isFirstViewActive1), isActive: $isActive1) {
                    Button(action: {
                        self.isActive1 = true
                    }, label: {
                        ZStack{
                               Rectangle()
                                .fill(Color.white)
                                .border(Color.black, width: 3)
                                .frame(width:350,height: 150)
                                            Text("正解")
                                .font(.largeTitle)
                                .background(Color.white)
                                .foregroundColor(Color.black)
                                .frame(width: 300, height: 100)
                                                
                        }
                    })
                }.isDetailLink(false)
                
                NavigationLink(destination:  Quiz1answer5false(isFirstViewActive1: $isFirstViewActive1), isActive: $isActive1) {
                    Button(action: {
                        self.isActive1 = true
                    }, label: {
                        ZStack{
                               Rectangle()
                                .fill(Color.white)
                                .border(Color.black, width: 3)
                                .frame(width:350,height: 150)
                                            Text("間違い")
                                .font(.largeTitle)
                                .background(Color.white)
                                .foregroundColor(Color.black)
                                .frame(width: 300, height: 100)
                                                
                        }
                    })
                }.isDetailLink(false)
                        
                
                NavigationLink(destination:  Quiz1answer4false(isFirstViewActive1: $isFirstViewActive1), isActive: $isActive1) {
                    Button(action: {
                        self.isActive1 = true
                    }, label: {
                        ZStack{
                               Rectangle()
                                .fill(Color.white)
                                .border(Color.black, width: 3)
                                .frame(width:350,height: 150)
                                            Text("間違い")
                                .font(.largeTitle)
                                .background(Color.white)
                                .foregroundColor(Color.black)
                                .frame(width: 300, height: 100)
                                                
                        }
                    })
                }.isDetailLink(false)


             
                    }
            
        }
    }
}


struct Quiz1answer5true: View {
    
    @State private var isActive1 = false
    @Binding var isFirstViewActive1: Bool
    
    var body: some View {
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
                    Color.red
                    .frame(width:650,height: 200)
                    Text("解説")
                    .foregroundColor(.black)
                    .font(.largeTitle)
                    .bold()
                            }
            
            HStack {

                NavigationLink(destination: moviestart5()) {

                    Text("動画を見る")
                        .foregroundColor(.red)
                        .font(.largeTitle)
                        .bold()
                        .frame(width: 200, height: 100)
                        .border(Color.gray, width: 5)
                }
                        
                NavigationLink(destination: Quiz1End(isFirstViewActive1: $isFirstViewActive1), isActive: $isActive1) {
                    Button(action: {
                        self.isActive1 = true
                    }, label: {
                        Text("次の問題へ")
                            .foregroundColor(.red)
                            .font(.largeTitle)
                            .bold()
                            .frame(width: 200, height: 100)
                            .border(Color.gray, width: 5)
                    })
                }.isDetailLink(false)
                
//                NavigationLink(destination: Quiz1End()) {
//
//                    Text("次の問題へ")
//                        .foregroundColor(.red)
//                        .font(.largeTitle)
//                        .bold()
//                        .frame(width: 200, height: 100)
//                        .border(Color.gray, width: 5)
//                }
        }
    }
}
}
struct Quiz1answer5false: View {
    
    @State private var isActive1 = false
    @Binding var isFirstViewActive1: Bool
    
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

                NavigationLink(destination: moviestart5()) {

                    Text("動画を見る")
                        .foregroundColor(.red)
                        .font(.largeTitle)
                        .bold()
                        .frame(width: 200, height: 100)
                        .border(Color.gray, width: 5)
                }
                        
                NavigationLink(destination: Quiz1End(isFirstViewActive1: $isFirstViewActive1), isActive: $isActive1) {
                    Button(action: {
                        self.isActive1 = true
                    }, label: {
                        Text("次の問題へ")
                            .foregroundColor(.red)
                            .font(.largeTitle)
                            .bold()
                            .frame(width: 200, height: 100)
                            .border(Color.gray, width: 5)
                    })
                }.isDetailLink(false)
                
//                NavigationLink(destination: Quiz1End()) {
//
//                    Text("次の問題へ")
//                        .foregroundColor(.red)
//                        .font(.largeTitle)
//                        .bold()
//                        .frame(width: 200, height: 100)
//                        .border(Color.gray, width: 5)
//                }
        }
    }
}
}

struct moviestart5: View{
    
     private let player = AVPlayer(url: Bundle.main.url(forResource:"movie",withExtension: "mp4")!)
    
     var body: some View{
        VideoPlayer(player: player)
            .onAppear(){
                player.play()
                
            }
            .onDisappear(){
                player.pause()
            }
        }
    }

struct finishView: View{
    
    @State private var isActive1 = false
    @Binding var isFirstViewActive1: Bool
    
     var body: some View{
         NavigationView{
             VStack{
                         Text("　中止しますか？")
                             .font(.system(size: 70, weight: .black))
                         HStack{
                             Button(action: {
                                 self.isFirstViewActive1 = false
                             }, label: {
                                 Text("終了")
                                     .foregroundColor(.black)
                                     .font(.largeTitle)
                                     .bold()

                             })
                             

//                             NavigationLink(destination: ContentView()){
//
//                                 Text("はい")
//                                     .foregroundColor(.red)
//                                     .font(.largeTitle)
//                                     .bold()
//                                     .frame(width: 200, height: 150)
//                                     .border(Color.gray, width: 5)
//                             }
                             
                             
                             
                             NavigationLink(destination: tanakaView(isFirstViewActive1: $isFirstViewActive1), isActive: $isActive1) {
                                 Button(action: {
                                     self.isActive1 = true
                                 }, label: {
                                     Text("いいえ")
                                         .foregroundColor(.red)
                                         .font(.largeTitle)
                                         .bold()
                                         .frame(width: 200, height: 150)
                                         .border(Color.gray, width: 5)
                                 })
                             }.isDetailLink(false)
                             
//                             NavigationLink(destination: Quiz1answer1()){
//                                     Text("いいえ")
//                                         .foregroundColor(.red)
//                                         .font(.largeTitle)
//                                         .bold()
//                                         .frame(width: 200, height: 150)
//                                         .border(Color.gray, width: 5)
//                             }
                         }
                     }
         }


    }
}

struct Quiz1End: View{
        
    @Binding var isFirstViewActive1: Bool
    
     var body: some View{
         VStack{
             
                     Text("５問中〇〇問正解しました！")
                         .font(.system(size: 70, weight: .black, design: .default))
                         .bold()
                         .padding()
                         .padding()
                         .padding()
                         .navigationBarHidden(true)
             
             Button(action: {
                 self.isFirstViewActive1 = false
             }, label: {
                 Text("終了")
                     .foregroundColor(.black)
                     .font(.largeTitle)
                     .bold()

             })
//                     NavigationLink(destination: StudyView()){
//                         ZStack{
//                             Color.red
//                                 .frame(width:200,height: 110)
//                             Text("終了")
//                                 .foregroundColor(.black)
//                                 .font(.largeTitle)
//                                 .bold()
//
//                         }
//                     }
                 }
    }
}

struct Quiz1_Previews: PreviewProvider {
    
    @Binding var isFirstViewActive1: Bool
    
    static var previews: some View {
        Quiz1answer1(isFirstViewActive1: $isFirstViewActive1)
.previewInterfaceOrientation(.landscapeLeft)
    }
}
