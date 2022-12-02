

import SwiftUI
import AVKit

struct Quiz2ModalView1: View {
    
    @Environment(\.presentationMode)var PresentationMode
    
    var body: some View {
        ZStack{
            Color(red: 1, green: 0.965, blue: 0.826)
                .ignoresSafeArea()
            VStack(spacing: 50){
                Text("節水")
                    .font(Font.mainFont(size: 60))
                Text("熊本の節水について\n考えてみよう！")
                    .font(Font.mainFont(size: 40))
                NavigationLink(destination: Quiz2answer1()){
                    ZStack{
                        Color(red: 0.898,green: 0.361,blue:0.306)
                            .frame(width:500,height: 120)
                            .cornerRadius(40)
                            .shadow(color: .gray, radius: 3, x: 5, y: 5)
                        Text("スタート！")
                            .font(Font.mainFont(size: 40))
                            .padding(.vertical)
                            .foregroundColor(.white)
                            .navigationBarItems(trailing:Button(action:{self.PresentationMode.wrappedValue.dismiss()
                            })
                                                {
                            })
                    }
                    .customBackButton()
                    .navigationViewStyle(.stack)
                }
            }
        }
    }
}

struct Quiz2answer1: View {
    @EnvironmentObject var envData: EnvironmentData
    @State private var toNextView = false
    
    @State private var isShowing1View1: Bool = false
    
    @State var progress: CGFloat = 0.30
    
    @State var startAnimation:CGFloat = 0
    
    var body: some View {
        ZStack{
            Color(red: 0.945, green: 0.698, blue: 0.494)
                .ignoresSafeArea()
//            Waterwave(progress: progress, waveHeght: 0.015, offset: startAnimation)
//                .fill(Color.white)
            VStack (spacing: 10){
//                Button(action: {self.isShowing1View1.toggle()}){
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
//                }.fullScreenCover(isPresented:$isShowing1View1){
//                    finishView()
//                }.offset(x:500,y: -100)
                    Text("第１問")
                        .font(Font.mainFont(size: 60))
                        .fontWeight(.heavy)
                        .padding()
                        .offset(y: -100)
                        .foregroundColor(Color(red: 0.894,green: 0.537,blue:0.137))
                ZStack{
                    Text("熊本市水保全課や上下水道局の窓口で\n配布しているコレはなんでしょう")
                        .font(Font.mainFont(size: 60))
                        .bold()
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                }.offset(y: -80)
                HStack {
                    NavigationLink(destination: Quiz2answer1true()) {
                        ZStack{
                            Rectangle()
                                .fill(Color.white)
                                .frame(width:250,height: 150)
                                .cornerRadius(10)
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                            Text("節水コマ")
                                .font(Font.mainFont(size: 40))
                                .background(Color.white)
                                .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                                .frame(width: 300, height: 100)
                        }
                    }
                    NavigationLink(destination: Quiz2answer1false()) {
                        ZStack{
                            Rectangle()
                                .fill(Color.white)
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                                .frame(width:250,height: 150)
                                .cornerRadius(10)
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                            Text("ベイゴマ")
                                .font(Font.mainFont(size: 40))
                                .background(Color.white)
                                .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                                .frame(width: 300, height: 100)
                        }
                    }
                    NavigationLink(destination: Quiz2answer1false()) {
                        ZStack{
                            Rectangle()
                                .fill(Color.white)
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                                .frame(width:250,height: 150)
                                .cornerRadius(10)
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                            Text("貯水コマ")
                                .font(Font.mainFont(size: 40))
                                .background(Color.white)
                                .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                                .frame(width: 300, height: 100)
                        }
                    }
                }
            }
        }.customBackButton()
    }
}

struct Quiz2answer1true: View {
    @State var showingmovie1 = false
        @State var selectmoview1 = true
    var body: some View {
        ZStack{
            Color(red: 0.945, green: 0.698, blue: 0.494)
                .ignoresSafeArea()

            VStack(spacing: 30){
                Text("正解")
                    .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                    .fontWeight(.heavy)
                    .font(.system(size: 80, weight: .black, design: .default))
                
                Image(systemName: "poweroff")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .foregroundColor(.red)
                ZStack{
                    Color.white
                        .frame(width:1000,height: 250)
                    Text("学校で見られる節水として、\n動画にも出てきた雨水タンクがあるよ。\n自分達の小学校にもないか、さがしてみてね。")
                        .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                        .font(Font.mainFont(size: 40))
                        .bold()
                        .frame(width:1000,height: 250)
                        .border(Color.red, width: 10)
                }
                
                HStack {
                    Button(action: {
                    if selectmoview1 == true {
                        showingmovie1 = true
                    }
                    }){
                        Text("動画を見る")
                            .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                            .font(Font.mainFont(size: 40))
                            .bold()
                            .frame(width: 200, height: 100)
                            .border(Color.gray, width: 5)
                    }.sheet(isPresented: $showingmovie1){
                        moviestart9()}
                            
                    NavigationLink(destination: Quiz2answer2()) {
                        Text("次の問題へ")
                            .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                            .font(Font.mainFont(size: 40))
                            .bold()
                            .frame(width: 200, height: 100)
                            .border(Color.gray, width: 5)
                    }
                }
            }
        }.customBackButton()
    }
}
struct Quiz2answer1false: View {
    @State var showingmovie1 = false
        @State var selectmoview1 = true
    var body: some View {
        
        ZStack{
            Color(red: 0.945, green: 0.698, blue: 0.494)
                .ignoresSafeArea()
            VStack(spacing: 30){
                Text("不正解")
            .fontWeight(.heavy)
            .font(.system(size: 80, weight: .black, design: .default))
            .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
            
                Image(systemName: "multiply")
                    .resizable()
                    .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.blue)
                ZStack{
                Color.white
                    .frame(width:1000,height: 250)
                Text("学校で見られる節水として、\n動画にも出てきた雨水タンクがあるよ。\n自分達の小学校にもないか、さがしてみてね。")
                    .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                    .font(Font.mainFont(size: 40))
                    .bold()
                    .frame(width:1000,height: 250)
                }
                HStack {
                    Button(action: {
                        if selectmoview1 == true {
                            showingmovie1 = true
                    }
                }){
                    Text("動画を見る")
                        .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                        .font(Font.mainFont(size: 40))
                        .bold()
                        .frame(width: 200, height: 100)
                        .border(Color.gray, width: 5)
                }.sheet(isPresented: $showingmovie1){
                    moviestart6()}
                
                NavigationLink(destination: Quiz2answer2()) {
                    Text("次の問題へ")
                        .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                        .font(Font.mainFont(size: 40))
                        .bold()
                        .frame(width: 200, height: 100)
                        .border(Color.gray, width: 5)
                }
            }
        }
        }.customBackButton()
    }
}
//地下水2
struct Quiz2answer2: View {
    @State private var isShowing1View2: Bool = false
    
    @State var progress: CGFloat = 0.35
        @State var startAnimation:CGFloat = 0
    var body: some View {
        ZStack{
            Color(red: 0.945, green: 0.698, blue: 0.494)
                .ignoresSafeArea()
//            Waterwave(progress: progress, waveHeght: 0.03, offset: startAnimation)
//                .fill(Color.white)
        VStack (spacing: 10){
//            Button(action: {self.isShowing1View2.toggle()}){
//                ZStack{
//                    Image(systemName: "drop.fill")
//                        .resizable()
//                        .scaledToFit()
//                        .frame(width: 50, height: 50)
//                        .foregroundColor(.blue)
//                    Text("戻る")
//                        .padding(.vertical)
//                        .foregroundColor(.white)
//                }
//            }.fullScreenCover(isPresented:$isShowing1View2){
//                finishView()
//            }.offset(x:500,y: -100)
            Text("第２問")
                .font(Font.mainFont(size: 60))
                .fontWeight(.heavy)
                .padding()
                .offset(y: -100)
                .foregroundColor(Color(red: 0.894,green: 0.537,blue:0.137))
                .font(.system(size: 80, weight: .black, design: .default))
            

            ZStack{
                                Text("節水にならない行動は？")
                    .font(Font.mainFont(size: 60))
                                    .bold()
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                
                                    
            }.offset(y: -80)

            HStack {

                NavigationLink(destination: Quiz2answer2false()) {

                    ZStack{
                           Rectangle()
                            .fill(Color.white)
                            
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                            .frame(width:250,height: 150)
                            .cornerRadius(10)
                            .shadow(color: .gray, radius: 3, x: 5, y: 5)
                                        Text("コップいっぱいの水で\n歯磨きする")
                            .font(Font.mainFont(size: 40))
                            .background(Color.white)
                            .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                            .frame(width: 300, height: 100)
                                            
                    }
                        
                }
                        
                NavigationLink(destination: Quiz2answer2true()) {

                    ZStack{
                           Rectangle()
                            .fill(Color.white)
                            
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                            .frame(width:250,height: 150)
                            .cornerRadius(10)
                            .shadow(color: .gray, radius: 3, x: 5, y: 5)
                                        Text("水を出しっぱなしで\n歯磨きをする")
                            .font(Font.mainFont(size: 30))
                            .background(Color.white)
                            .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                            .frame(width: 300, height: 100)
                                            
                    }
                        
                }
                        
                NavigationLink(destination: Quiz2answer2false()) {

                    ZStack{
                           Rectangle()
                            .fill(Color.white)
                            
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                            .frame(width:250,height: 150)
                            .cornerRadius(10)
                            .shadow(color: .gray, radius: 3, x: 5, y: 5)
                                        Text("トイレを一回で流す")
                            .font(Font.mainFont(size: 40))
                            .background(Color.white)
                            .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                            .frame(width: 300, height: 100)
                                            
                    }
                        
                }

             
                    }
//            .padding()
//            .padding()
//            ZStack{
//                Color(red: 0.898,green: 0.361,blue:0.306)
//                    .frame(width:500,height: 120)
//                    .cornerRadius(30)
//                Text("こたえる")
//                    .font(Font.mainFont(size: 40))
//                    .bold()
//                    .foregroundColor(.white)
//            }
        }
        }.customBackButton()
    }
}

struct Quiz2answer2true: View {
    @State var showingmovie1 = false
        @State var selectmoview1 = true
    var body: some View {
        ZStack{
            Color(red: 0.945, green: 0.698, blue: 0.494)
                .ignoresSafeArea()
        VStack(spacing: 30){
            Text("正解")
            .fontWeight(.heavy)
            .font(Font.mainFont(size: 40))
            
            Image(systemName: "poweroff")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.red)
            ZStack{
                Color.white
                    .frame(width:1000,height: 250)
                Text("シャワーもこまめに開け閉めしたり、トイレも大小レバーを\n使い分けるなど、節水に取り組んでみよう。")
                                                        .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                                                        .font(Font.mainFont(size: 35))
                                                        .bold()
                                                        .frame(width:1000,height: 250)
                                                        .border(Color.red, width: 10)
                            }
            
            HStack {

                Button(action: {
                                                if selectmoview1 == true {
                                                    showingmovie1 = true
                                                }
                                }){
                                    Text("動画を見る")
                                        .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                                        .font(Font.mainFont(size: 40))
                                        .bold()
                                        .frame(width: 200, height: 100)
                                        .border(Color.gray, width: 5)
                                }.sheet(isPresented: $showingmovie1){
                                    moviestart10()}
                        
                NavigationLink(destination: Quiz2answer3()) {

                    Text("次の問題へ")
                        .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                        .font(Font.mainFont(size: 40))
                        .bold()
                        .frame(width: 200, height: 100)
                        .border(Color.gray, width: 5)
                }
        }
    }
        }.customBackButton()
}
}
struct Quiz2answer2false: View {
    @State var showingmovie1 = false
        @State var selectmoview1 = true
    var body: some View {
        ZStack{
            Color(red: 0.945, green: 0.698, blue: 0.494)
                .ignoresSafeArea()
        VStack(spacing: 30){
            Text("不正解")
                .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
            .fontWeight(.heavy)
            .font(.system(size: 80, weight: .black, design: .default))
            
            Image(systemName: "multiply")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.blue)
            ZStack{
                Color.white
                    .frame(width:1000,height: 250)
                Text("シャワーもこまめに開け閉めしたり、トイレも大小レバーを\n使い分けるなど、節水に取り組んでみよう。")
                                    .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                                    .font(Font.mainFont(size: 35))
                                    .bold()
                                    .frame(width:1000,height: 250)
                                    .border(Color.blue, width: 10)
                            }
            
            HStack {

                Button(action: {
                                                if selectmoview1 == true {
                                                    showingmovie1 = true
                                                }
                                }){
                                    Text("動画を見る")
                                        .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                                        .font(Font.mainFont(size: 40))
                                        .bold()
                                        .frame(width: 200, height: 100)
                                        .border(Color.gray, width: 5)
                                }.sheet(isPresented: $showingmovie1){
                                    moviestart10()}
                        
                NavigationLink(destination: Quiz2answer3()) {

                    Text("次の問題へ")
                        .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                        .font(Font.mainFont(size: 40))
                        .bold()
                        .frame(width: 200, height: 100)
                        .border(Color.gray, width: 5)
                }
        }
    }
        }.customBackButton()
}
}


//地下水３
struct Quiz2answer3: View {
    @State private var isShowing1View3: Bool = false
    
    @State var progress: CGFloat = 0.35
            @State var startAnimation:CGFloat = 0
    var body: some View {
        ZStack{
            Color(red: 0.945, green: 0.698, blue: 0.494)
                .ignoresSafeArea()
//            Waterwave(progress: progress, waveHeght: 0.03, offset: startAnimation)
//                            .fill(Color.white)
        VStack (spacing: 10){
//            Button(action: {self.isShowing1View3.toggle()}){
//                ZStack{
//                    Image(systemName: "drop.fill")
//                        .resizable()
//                        .scaledToFit()
//                        .frame(width: 50, height: 50)
//                        .foregroundColor(.blue)
//                    Text("戻る")
//                        .padding(.vertical)
//                        .foregroundColor(.white)
//                }
//            }.fullScreenCover(isPresented:$isShowing1View3){
//                finishView()
//            }.offset(x:500,y: -100)
            Text("第３問")
                .font(Font.mainFont(size: 60))
                .fontWeight(.heavy)
                .padding()
                .offset(y: -100)
                .foregroundColor(Color(red: 0.894,green: 0.537,blue:0.137))
                .font(.system(size: 80, weight: .black, design: .default))
            ZStack{
                                Text("平成17年度から熊本市民総参加で\n節水に取り組んでいる節水活動は？")
                    .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                                    .font(Font.mainFont(size: 40))
                                    .bold()
                                    .multilineTextAlignment(.center)
                            }

            HStack {

                NavigationLink(destination: Quiz2answer3false()) {
                    ZStack{
                           Rectangle()
                            .fill(Color.white)
                            
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                            .frame(width:250,height: 150)
                            .cornerRadius(10)
                            .shadow(color: .gray, radius: 3, x: 5, y: 5)
                                        Text("節水みんな運動")
                            .font(Font.mainFont(size: 40))
                            .background(Color.white)
                            .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                            .frame(width: 300, height: 100)
                                            
                    }
                        
                }
                        
                NavigationLink(destination: Quiz2answer3false()) {
                    ZStack{
                           Rectangle()
                            .fill(Color.white)
                            
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                            .frame(width:250,height: 150)
                            .cornerRadius(10)
                            .shadow(color: .gray, radius: 3, x: 5, y: 5)
                                        Text("節水市民体操")
                            .font(Font.mainFont(size: 40))
                            .background(Color.white)
                            .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                            .frame(width: 300, height: 100)
                                            
                    }
                }
                        
                NavigationLink(destination: Quiz2answer3true()) {
                    ZStack{
                           Rectangle()
                            .fill(Color.white)
                            
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                            .frame(width:250,height: 150)
                            .cornerRadius(10)
                            .shadow(color: .gray, radius: 3, x: 5, y: 5)
                                        Text("節水市民運動")
                            .font(Font.mainFont(size: 40))
                            .background(Color.white)
                            .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                            .frame(width: 300, height: 100)
                                            
                    }

                }

             
                    }
//            .padding()
//                            .padding()
//                            ZStack{
//                                Color(red: 0.898,green: 0.361,blue:0.306)
//                                    .frame(width:500,height: 120)
//                                    .cornerRadius(30)
//                                Text("こたえる")
//                                    .font(Font.mainFont(size: 40))
//                                    .bold()
//                                    .foregroundColor(.white)
//                            }
        }
        }.customBackButton()
    }
}


struct Quiz2answer3true: View {
    @State var showingmovie1 = false
        @State var selectmoview1 = true
    var body: some View {
        ZStack{
            Color(red: 0.945, green: 0.698, blue: 0.494)
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
                    .frame(width:1000,height: 250)
                Text("節水市民運動には「節水ソング」というテーマソングがあるんだ。\nみんなで歌って、節水に取り組んでみてね。")
                                                        .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                                                        .font(Font.mainFont(size: 35))
                                                        .bold()
                                                        .frame(width:1000,height: 250)
                                                        .border(Color.red, width: 10)
                            }
            
            HStack {

                Button(action: {
                                                if selectmoview1 == true {
                                                    showingmovie1 = true
                                                }
                                }){
                                    Text("動画を見る")
                                        .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                                        .font(Font.mainFont(size: 40))
                                        .bold()
                                        .frame(width: 200, height: 100)
                                        .border(Color.gray, width: 5)
                                }.sheet(isPresented: $showingmovie1){
                                    moviestart9()}
                        
                NavigationLink(destination: Quiz2answer4()) {

                    Text("次の問題へ")
                        .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                        .font(Font.mainFont(size: 40))
                        .bold()
                        .frame(width: 200, height: 100)
                        .border(Color.gray, width: 5)
                }
        }
    }
        }.customBackButton()
}
}
struct Quiz2answer3false: View {
    @State var showingmovie1 = false
        @State var selectmoview1 = true
    var body: some View {
        ZStack{
            Color(red: 0.945, green: 0.698, blue: 0.494)
                .ignoresSafeArea()
        VStack(spacing: 30){
            Text("不正解")
                .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
            .fontWeight(.heavy)
            .font(.system(size: 80, weight: .black, design: .default))
            
            Image(systemName: "multiply")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.blue)
            ZStack{
                Color.white
                    .frame(width:1000,height: 250)
                Text("節水市民運動には「節水ソング」というテーマソングがあるんだ。\nみんなで歌って、節水に取り組んでみてね。")
                                    .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                                    .font(Font.mainFont(size: 35))
                                    .bold()
                                    .frame(width:1000,height: 250)
                                    .border(Color.blue, width: 10)
                            }
            
            HStack {

                Button(action: {
                                                if selectmoview1 == true {
                                                    showingmovie1 = true
                                                }
                                }){
                                    Text("動画を見る")
                                        .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                                        .font(Font.mainFont(size: 40))
                                        .bold()
                                        .frame(width: 200, height: 100)
                                        .border(Color.gray, width: 5)
                                }.sheet(isPresented: $showingmovie1){
                                    moviestart9()}
                        
                NavigationLink(destination: Quiz2answer4()) {

                    Text("次の問題へ")
                        .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                        .font(Font.mainFont(size: 40))
                        .bold()
                        .frame(width: 200, height: 100)
                        .border(Color.gray, width: 5)
                }
        }
    }
        }.customBackButton()
}
}

//地下水４
struct Quiz2answer4: View {
    @State private var isShowing1View4: Bool = false
    
    @State var progress: CGFloat = 0.35
            @State var startAnimation:CGFloat = 0
    var body: some View {
        ZStack{
            Color(red: 0.945, green: 0.698, blue: 0.494)
                .ignoresSafeArea()
//            Waterwave(progress: progress, waveHeght: 0.03, offset: startAnimation)
//                            .fill(Color.white)
        VStack (spacing: 10){
//            Button(action: {self.isShowing1View4.toggle()}){
//                ZStack{
//                    Image(systemName: "drop.fill")
//                        .resizable()
//                        .scaledToFit()
//                        .frame(width: 50, height: 50)
//                        .foregroundColor(.blue)
//                    Text("戻る")
//                        .padding(.vertical)
//                        .foregroundColor(.white)
//                }
//            }.fullScreenCover(isPresented:$isShowing1View4){
//                finishView()
//            }.offset(x:500,y: -100)
            Text("第４問")
                .font(Font.mainFont(size: 60))
                .fontWeight(.heavy)
                .padding()
                .offset(y: -100)
                .foregroundColor(Color(red: 0.894,green: 0.537,blue:0.137))
                .font(.system(size: 80, weight: .black, design: .default))

            ZStack{
                                Text("熊本市の一人一日当たりの生活用水使用量の\n令和6年度までの目標は何L？")
                                    .font(Font.mainFont(size: 40))
                                    .bold()
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                
                                    
            }.offset(y: -80)


            
            HStack {

                NavigationLink(destination: Quiz2answer4true()) {
                    ZStack{
                           Rectangle()
                            .fill(Color.white)
                            
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                            .frame(width:250,height: 150)
                            .cornerRadius(10)
                            .shadow(color: .gray, radius: 3, x: 5, y: 5)
                                        Text("210L")
                            .font(Font.mainFont(size: 40))
                            .background(Color.white)
                            .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                            .frame(width: 300, height: 100)
                                            
                    }
                        
                }
                        
                NavigationLink(destination: Quiz2answer4false()) {

                    ZStack{
                           Rectangle()
                            .fill(Color.white)
                            
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                            .frame(width:250,height: 150)
                            .cornerRadius(10)
                            .shadow(color: .gray, radius: 3, x: 5, y: 5)
                                        Text("110L")
                            .font(Font.mainFont(size: 40))
                            .background(Color.white)
                            .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                            .frame(width: 300, height: 100)
                                            
                    }
                }
                        
                
                NavigationLink(destination: Quiz2answer4false()) {

                    ZStack{
                           Rectangle()
                            .fill(Color.white)
                            
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                            .frame(width:250,height: 150)
                            .cornerRadius(10)
                            .shadow(color: .gray, radius: 3, x: 5, y: 5)
                                        Text("510L")
                            .font(Font.mainFont(size: 40))
                            .background(Color.white)
                            .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                            .frame(width: 300, height: 100)
                                            
                    }


                }

             
                    }
//            .padding()
//                            .padding()
//                            ZStack{
//                                Color(red: 0.898,green: 0.361,blue:0.306)
//                                    .frame(width:500,height: 120)
//                                    .cornerRadius(30)
//                                Text("こたえる")
//                                    .font(Font.mainFont(size: 40))
//                                    .bold()
//                                    .foregroundColor(.white)
//                            }
        }
        }.customBackButton()
    }
}



struct Quiz2answer4true: View {
    
    @State var showingmovie1 = false
        @State var selectmoview1 = true
    
    var body: some View {
        ZStack{
            Color(red: 0.945, green: 0.698, blue: 0.494)
                .ignoresSafeArea()
        VStack(spacing: 30){
            Text("正解")
                .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
            .fontWeight(.heavy)
            .font(.system(size: 80, weight: .black, design: .default))
            
            Image(systemName: "poweroff")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.red)
            ZStack{
                Color.white
                    .frame(width:1000,height: 250)
                Text("平成17年は「230リットル」を目標として、平成26年度から平成30年度までは、\n「218リットル」という目標で取り組んできたよ。この調子でへっていくといいね。")
                                    .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                                    .font(Font.mainFont(size: 40))
                                    .bold()
                                    .frame(width:1000,height: 250)
                                    .border(Color.red, width: 10)
                            }
            
            HStack {
                Button(action: {
                                if selectmoview1 == true {
                                    showingmovie1 = true
                                }
                }){
                    Text("動画を見る")
                        .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                        .font(Font.mainFont(size: 40))
                        .bold()
                        .frame(width: 200, height: 100)
                        .border(Color.gray, width: 5)
                }.sheet(isPresented: $showingmovie1){
                    moviestart9()}
                        
                NavigationLink(destination: Quiz2answer5()) {

                    Text("次の問題へ")
                        .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                        .font(Font.mainFont(size: 40))
                        .bold()
                        .frame(width: 200, height: 100)
                        .border(Color.gray, width: 5)
                }
        }
    }
        }.customBackButton()
}
}
struct Quiz2answer4false: View {
    @State var showingmovie1 = false
        @State var selectmoview1 = true
    var body: some View {
        ZStack{
            Color(red: 0.945, green: 0.698, blue: 0.494)
                .ignoresSafeArea()
        VStack(spacing: 30){
            Text("不正解")
                .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
            .fontWeight(.heavy)
            .font(.system(size: 80, weight: .black, design: .default))
            
            Image(systemName: "multiply")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.blue)
            ZStack{
                Color.white
                    .frame(width:1000,height: 250)
                Text("平成17年は「230リットル」を目標として、平成26年度から平成30年度までは、\n「218リットル」という目標で取り組んできたよ。この調子でへっていくといいね。")
                                    .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                                    .font(Font.mainFont(size: 40))
                                    .bold()
                                    .frame(width:1000,height: 250)
                                    .border(Color.blue, width: 10)
                            }
            
            HStack {

                Button(action: {
                                                if selectmoview1 == true {
                                                    showingmovie1 = true
                                                }
                                }){
                                    Text("動画を見る")
                                        .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                                        .font(Font.mainFont(size: 40))
                                        .bold()
                                        .frame(width: 200, height: 100)
                                        .border(Color.gray, width: 5)
                                }.sheet(isPresented: $showingmovie1){
                                    moviestart9()}
                        
                NavigationLink(destination: Quiz2answer5()) {

                    Text("次の問題へ")
                        .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                        .font(Font.mainFont(size: 40))
                        .bold()
                        .frame(width: 200, height: 100)
                        .border(Color.gray, width: 5)
                }
        }
    }
        }.customBackButton()
}
}


//地下水５
struct Quiz2answer5: View {
    @State private var isShowing1View5: Bool = false
    
    @State var progress: CGFloat = 0.35
            @State var startAnimation:CGFloat = 0
    
    var body: some View {
        ZStack{
            Color(red: 0.945, green: 0.698, blue: 0.494)
                .ignoresSafeArea()
//            Waterwave(progress: progress, waveHeght: 0.03, offset: startAnimation)
//                            .fill(Color.white)
        VStack (spacing: 10){
//            Button(action: {self.isShowing1View5.toggle()}){
//                ZStack{
//                    Image(systemName: "drop.fill")
//                        .resizable()
//                        .scaledToFit()
//                        .frame(width: 50, height: 50)
//                        .foregroundColor(.blue)
//                    Text("戻る")
//                        .padding(.vertical)
//                        .foregroundColor(.white)
//                }
//            }.fullScreenCover(isPresented:$isShowing1View5){
//                finishView()
//            }.offset(x:500,y: -100)
            Text("第５問")
                .font(Font.mainFont(size: 60))
                .fontWeight(.heavy)
                .padding()
                .offset(y: -100)
                .foregroundColor(Color(red: 0.894,green: 0.537,blue:0.137))
                .font(.system(size: 80, weight: .black, design: .default))

            ZStack{ Text("蛇口の水を１分間流し続けたら約何 Lになる？")
                                    .font(Font.mainFont(size: 50))
                                    .bold()
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
            }.offset(y: -80)

            HStack {

                NavigationLink(destination: Quiz2answer5true()) {
                    ZStack{
                           Rectangle()
                            .fill(Color.white)
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                            .frame(width:250,height: 150)
                            .cornerRadius(10)
                            .shadow(color: .gray, radius: 3, x: 5, y: 5)
                                        Text("6L")
                            .font(Font.mainFont(size: 30))
                            .background(Color.white)
                            .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                            .frame(width: 300, height: 100)
                    }
                }
                        
                NavigationLink(destination: Quiz2answer5false()) {

                    ZStack{
                           Rectangle()
                            .fill(Color.white)
                            
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                            .frame(width:250,height: 150)
                            .cornerRadius(10)
                            .shadow(color: .gray, radius: 3, x: 5, y: 5)
                                        Text("20L")
                            .font(Font.mainFont(size: 25))
                            .background(Color.white)
                            .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                            .frame(width: 300, height: 100)
                    }
                }
                      
                NavigationLink(destination: Quiz2answer5false()) {

                    ZStack{
                           Rectangle()
                            .fill(Color.white)
                            
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                            .frame(width:250,height: 150)
                            .cornerRadius(10)
                            .shadow(color: .gray, radius: 3, x: 5, y: 5)
                                        Text("50L")
                            .font(Font.mainFont(size: 25))
                            .background(Color.white)
                            .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                            .frame(width: 300, height: 100)
                                            
                    }
                }
            }
//            .padding()
//                            .padding()
//                            ZStack{
//                                Color(red: 0.898,green: 0.361,blue:0.306)
//                                    .frame(width:500,height: 120)
//                                    .cornerRadius(30)
//                                Text("こたえる")
//                                    .font(Font.mainFont(size: 40))
//                                    .bold()
//                                    .foregroundColor(.white)
//                            }
            
        }
        }.customBackButton()
    }
}

struct Quiz2answer5true: View {
    @State var showingmovie1 = false
        @State var selectmoview1 = true
    var body: some View {
        ZStack{
            Color(red: 0.945, green: 0.698, blue: 0.494)
                .ignoresSafeArea()
        VStack(spacing: 30){
            Text("正解")
                .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
            .fontWeight(.heavy)
            .font(.system(size: 80, weight: .black, design: .default))
            
            Image(systemName: "poweroff")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.red)
            ZStack{
                Color.white
                    .frame(width:1000,height: 250)
                Text("シャワーは流しっぱなしにすれば、1分間に約12Lの水が流れてしまうよ。\nこまめな開けしめをわすれずに。")
                                    .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                                    .font(Font.mainFont(size: 30))
                                    .bold()
                                    .frame(width:1000,height: 250)
                                    .border(Color.red, width: 10)
                            }
            
            HStack {

                Button(action: {
                                                if selectmoview1 == true {
                                                    showingmovie1 = true
                                                }
                                }){
                                    Text("動画を見る")
                                        .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                                        .font(Font.mainFont(size: 40))
                                        .bold()
                                        .frame(width: 200, height: 100)
                                        .border(Color.gray, width: 5)
                                }.sheet(isPresented: $showingmovie1){
                                    moviestart10()}
                        
                NavigationLink(destination: Quiz2End()) {

                    Text("次の問題へ")
                        .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                        .font(Font.mainFont(size: 40))
                        .bold()
                        .frame(width: 200, height: 100)
                        .border(Color.gray, width: 5)
                }
        }
    }
        }.customBackButton()
}
}
struct Quiz2answer5false: View {
    @State var showingmovie1 = false
        @State var selectmoview1 = true
    var body: some View {
        ZStack{
            Color(red: 0.945, green: 0.698, blue: 0.494)
                .ignoresSafeArea()
        VStack(spacing: 30){
            Text("不正解")
                .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
            .fontWeight(.heavy)
            .font(.system(size: 80, weight: .black, design: .default))
            
            Image(systemName: "multiply")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.blue)
            ZStack{
                Color.white
                    .frame(width:1000,height: 250)
                Text("シャワーは流しっぱなしにすれば、1分間に約12Lの水が流れてしまうよ。\nこまめな開けしめをわすれずに。")
                                    .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                                    .font(Font.mainFont(size: 30))
                                    .bold()
                                    .frame(width:1000,height: 250)
                                    .border(Color.blue, width: 10)
                            }
            
            HStack {

                Button(action: {
                                                if selectmoview1 == true {
                                                    showingmovie1 = true
                                                }
                                }){
                                    Text("動画を見る")
                                        .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                                        .font(Font.mainFont(size: 40))
                                        .bold()
                                        .frame(width: 200, height: 100)
                                        .border(Color.gray, width: 5)
                                }.sheet(isPresented: $showingmovie1){
                                    moviestart10()}
                        
                NavigationLink(destination: Quiz2End()) {

                    Text("次の問題へ")
                        .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                        .font(Font.mainFont(size: 40))
                        .bold()
                        .frame(width: 200, height: 100)
                        .border(Color.gray, width: 5)
                }
        }
    }
        }.customBackButton()
}
}

struct Quiz2finishView: View{
    
     var body: some View{
         NavigationView{
             ZStack{
                 Color(red: 0.945, green: 0.698, blue: 0.494)
                     .ignoresSafeArea()
             VStack{
                         Text("　中止しますか？")
                             .font(.system(size: 70, weight: .black))
                             .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                         HStack{
                             NavigationLink(destination: ContentView()){
                                 
                                 Text("はい")
                                     .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                                     .font(Font.mainFont(size: 40))
                                     .bold()
                                     .frame(width: 200, height: 150)
                                     .border(Color.gray, width: 5)
                             }
                             
                             NavigationLink(destination: Quiz2answer1()){
                                     Text("いいえ")
                                     .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                                         .font(Font.mainFont(size: 40))
                                         .bold()
                                         .frame(width: 200, height: 150)
                                         .border(Color.gray, width: 5)
                             }
                         }
                     }
             }.customBackButton()
         }


    }
}

struct Quiz2End: View{
    
    @EnvironmentObject var envData: EnvironmentData
    @State var quizscore = 5
    //@ObservedObject var bbb = false
    
     var body: some View{
         ZStack{
             Color(red: 0.945, green: 0.698, blue: 0.494)
                 .ignoresSafeArea()
         VStack{
             Text("５問中○問正解しました！")
                 .font(.system(size: 70, weight: .black, design: .default))
                 .bold()
                 .padding()
                 .padding()
                 .padding()
                 .navigationBarHidden(true)
                 .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
             Button(action: {
                 envData.isNavigationActive.wrappedValue = false
                 if quizscore == 5 {
                     envData.bbb = true
                     UserDefaults.standard.bool(forKey: "bbb")
                     //envData.ccc = true
                 }
             }){
                 ZStack{
                     Color.red
                         .frame(width:200,height: 110)
                     Text("終了")
                         .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                         .font(Font.mainFont(size: 40))
                         .bold()
                 }
             }
         }
         }.customBackButton()
    }
}

struct Quiz2_Previews: PreviewProvider {
    static var previews: some View {
        Quiz2answer1()
.previewInterfaceOrientation(.landscapeLeft)
    }
}
