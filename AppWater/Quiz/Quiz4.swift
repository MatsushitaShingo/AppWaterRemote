

import SwiftUI
import AVKit

struct Quiz4ModalView1: View {
    
    @Environment(\.presentationMode)var PresentationMode
    
    var body: some View {
        ZStack{
            Color(red: 1, green: 0.965, blue: 0.826)
                .ignoresSafeArea()
            VStack(spacing: 50){
                Text("歴史")
                    .font(Font.mainFont(size: 60))
                Text("熊本の歴史について\n考えてみよう！")
                    .font(Font.mainFont(size: 40))
                NavigationLink(destination: Quiz4answer1()){
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

struct Quiz4answer1: View {
    @EnvironmentObject var envData: EnvironmentData
    @State private var toNextView = false
    
    @State private var isShowing1View1: Bool = false
    
    @State var progress: CGFloat = 0.30
    
    @State var startAnimation:CGFloat = 0
    
    var body: some View {
        ZStack{
            Color(red: 0.741, green: 0.678, blue: 0.827)
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
                        .foregroundColor(Color(red: 0.329,green: 0.251,blue:0.447))
                ZStack{
                    Text("熊本の白川中流域（大津・菊陽）に\n用水路を作ったり\n水田開発をした人物は？")
                        .font(Font.mainFont(size: 60))
                        .bold()
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                }.offset(y: -80)
                HStack {
                    NavigationLink(destination: Quiz4answer1true()) {
                        ZStack{
                            Rectangle()
                                .fill(Color.white)
                                .frame(width:250,height: 150)
                                .cornerRadius(10)
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                            Text("加藤清正")
                                .font(Font.mainFont(size: 40))
                                .background(Color.white)
                                .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                                .frame(width: 300, height: 100)
                        }
                    }
                    NavigationLink(destination: Quiz4answer1false()) {
                        ZStack{
                            Rectangle()
                                .fill(Color.white)
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                                .frame(width:250,height: 150)
                                .cornerRadius(10)
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                            Text("徳川家康")
                                .font(Font.mainFont(size: 40))
                                .background(Color.white)
                                .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                                .frame(width: 300, height: 100)
                        }
                    }
                    NavigationLink(destination: Quiz4answer1false()) {
                        ZStack{
                            Rectangle()
                                .fill(Color.white)
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                                .frame(width:250,height: 150)
                                .cornerRadius(10)
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                            Text("織田信長")
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

struct Quiz4answer1true: View {
    @State var showingmovie1 = false
        @State var selectmoview1 = true
    var body: some View {
        ZStack{
            Color(red: 0.741, green: 0.678, blue: 0.827)
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
                    Text("加藤清正は13回以上も川や用水路、\n田んぼの開発をおこなっているよ。")
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
                        moviestart8()}
                            
                    NavigationLink(destination: Quiz4answer2()) {
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
struct Quiz4answer1false: View {
    @State var showingmovie1 = false
        @State var selectmoview1 = true
    var body: some View {
        
        ZStack{
            Color(red: 0.741, green: 0.678, blue: 0.827)
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
                Text("加藤清正は13回以上も川や用水路、\n田んぼの開発をおこなっているよ。")
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
                    moviestart8()}
                
                NavigationLink(destination: Quiz4answer2()) {
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
struct Quiz4answer2: View {
    @State private var isShowing1View2: Bool = false
    
    @State var progress: CGFloat = 0.35
        @State var startAnimation:CGFloat = 0
    var body: some View {
        ZStack{
            Color(red: 0.741, green: 0.678, blue: 0.827)
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
                .foregroundColor(Color(red: 0.329,green: 0.251,blue:0.447))
                .font(.system(size: 80, weight: .black, design: .default))
            

            ZStack{
                                Text("1924年に完成して、熊本市で初めて給水が始まった水源地はどこ？")
                    .font(Font.mainFont(size: 60))
                                    .bold()
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                
                                    
            }.offset(y: -80)

            HStack {

                NavigationLink(destination: Quiz4answer2false()) {

                    ZStack{
                           Rectangle()
                            .fill(Color.white)
                            
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                            .frame(width:250,height: 150)
                            .cornerRadius(10)
                            .shadow(color: .gray, radius: 3, x: 5, y: 5)
                                        Text("江津湖")
                            .font(Font.mainFont(size: 40))
                            .background(Color.white)
                            .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                            .frame(width: 300, height: 100)
                                            
                    }
                        
                }
                        
                NavigationLink(destination: Quiz4answer2true()) {

                    ZStack{
                           Rectangle()
                            .fill(Color.white)
                            
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                            .frame(width:250,height: 150)
                            .cornerRadius(10)
                            .shadow(color: .gray, radius: 3, x: 5, y: 5)
                                        Text("八景水谷")
                            .font(Font.mainFont(size: 40))
                            .background(Color.white)
                            .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                            .frame(width: 300, height: 100)
                                            
                    }
                        
                }
                        
                NavigationLink(destination: Quiz4answer2false()) {

                    ZStack{
                           Rectangle()
                            .fill(Color.white)
                            
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                            .frame(width:250,height: 150)
                            .cornerRadius(10)
                            .shadow(color: .gray, radius: 3, x: 5, y: 5)
                                        Text("白川水源")
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

struct Quiz4answer2true: View {
    @State var showingmovie1 = false
        @State var selectmoview1 = true
    var body: some View {
        ZStack{
            Color(red: 0.741, green: 0.678, blue: 0.827)
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
                Text("水道がなかったころは、井戸をほって飲み水に使っていたため、\n伝せん病などが多く安全とは言えなかったよ。")
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
                                    moviestart8()}
                        
                NavigationLink(destination: Quiz4answer3()) {

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
struct Quiz4answer2false: View {
    @State var showingmovie1 = false
        @State var selectmoview1 = true
    var body: some View {
        ZStack{
            Color(red: 0.741, green: 0.678, blue: 0.827)
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
                Text("水道がなかったころは、井戸をほって飲み水に使っていたため、\n伝せん病などが多く安全とは言えなかったよ。")
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
                                    moviestart8()}
                        
                NavigationLink(destination: Quiz4answer3()) {

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
struct Quiz4answer3: View {
    @State private var isShowing1View3: Bool = false
    
    @State var progress: CGFloat = 0.35
            @State var startAnimation:CGFloat = 0
    var body: some View {
        ZStack{
            Color(red: 0.741, green: 0.678, blue: 0.827)
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
                .foregroundColor(Color(red: 0.329,green: 0.251,blue:0.447))
                .font(.system(size: 80, weight: .black, design: .default))
            ZStack{
                                Text("加藤清正らが作った馬場楠井出にある、水底に溜まる土砂を\n流すための仕掛けのある歴史遺産はなんでしょう？")
                    .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                                    .font(Font.mainFont(size: 40))
                                    .bold()
                                    .multilineTextAlignment(.center)
                            }

            HStack {

                NavigationLink(destination: Quiz4answer3false()) {
                    ZStack{
                           Rectangle()
                            .fill(Color.white)
                            
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                            .frame(width:250,height: 150)
                            .cornerRadius(10)
                            .shadow(color: .gray, radius: 3, x: 5, y: 5)
                                        Text("目ぐり井手")
                            .font(Font.mainFont(size: 40))
                            .background(Color.white)
                            .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                            .frame(width: 300, height: 100)
                                            
                    }
                        
                }
                        
                NavigationLink(destination: Quiz4answer3false()) {
                    ZStack{
                           Rectangle()
                            .fill(Color.white)
                            
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                            .frame(width:250,height: 150)
                            .cornerRadius(10)
                            .shadow(color: .gray, radius: 3, x: 5, y: 5)
                                        Text("耳ぐり井手")
                            .font(Font.mainFont(size: 40))
                            .background(Color.white)
                            .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                            .frame(width: 300, height: 100)
                                            
                    }
                }
                        
                NavigationLink(destination: Quiz4answer3true()) {
                    ZStack{
                           Rectangle()
                            .fill(Color.white)
                            
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                            .frame(width:250,height: 150)
                            .cornerRadius(10)
                            .shadow(color: .gray, radius: 3, x: 5, y: 5)
                                        Text("鼻ぐり井手")
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


struct Quiz4answer3true: View {
    @State var showingmovie1 = false
        @State var selectmoview1 = true
    var body: some View {
        ZStack{
            Color(red: 0.741, green: 0.678, blue: 0.827)
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
                Text("あそ特有の火山ばいのことをヨナといい、\nこのヨナは川のそこにたまると人の力でかきだすことは大変だよ。")
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
                                    moviestart7()}
                        
                NavigationLink(destination: Quiz4answer4()) {

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
struct Quiz4answer3false: View {
    @State var showingmovie1 = false
        @State var selectmoview1 = true
    var body: some View {
        ZStack{
            Color(red: 0.741, green: 0.678, blue: 0.827)
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
                Text("あそ特有の火山ばいのことをヨナといい、\nこのヨナは川のそこにたまると人の力でかきだすことは大変だよ。")
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
                                    moviestart7()}
                        
                NavigationLink(destination: Quiz4answer4()) {

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
struct Quiz4answer4: View {
    @State private var isShowing1View4: Bool = false
    
    @State var progress: CGFloat = 0.35
            @State var startAnimation:CGFloat = 0
    var body: some View {
        ZStack{
            Color(red: 0.741, green: 0.678, blue: 0.827)
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
                .foregroundColor(Color(red: 0.329,green: 0.251,blue:0.447))
                .font(.system(size: 80, weight: .black, design: .default))

            ZStack{
                                Text("世界かんがい遺産に選ばれている遺産の１つは\n菊陽町と熊本市の馬場楠井手用水、\nもう１つは渡鹿用水もう一つは次のうちどれ？")
                                    .font(Font.mainFont(size: 40))
                                    .bold()
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                
                                    
            }.offset(y: -80)


            
            HStack {

                NavigationLink(destination: Quiz4answer4true()) {
                    ZStack{
                           Rectangle()
                            .fill(Color.white)
                            
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                            .frame(width:250,height: 150)
                            .cornerRadius(10)
                            .shadow(color: .gray, radius: 3, x: 5, y: 5)
                                        Text("上井手用水と\n下井手用水")
                            .font(Font.mainFont(size: 40))
                            .background(Color.white)
                            .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                            .frame(width: 300, height: 100)
                                            
                    }
                        
                }
                        
                NavigationLink(destination: Quiz4answer4false()) {

                    ZStack{
                           Rectangle()
                            .fill(Color.white)
                            
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                            .frame(width:250,height: 150)
                            .cornerRadius(10)
                            .shadow(color: .gray, radius: 3, x: 5, y: 5)
                                        Text("たて井出用水と\nよこ井出用水")
                            .font(Font.mainFont(size: 40))
                            .background(Color.white)
                            .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                            .frame(width: 300, height: 100)
                                            
                    }
                }
                        
                
                NavigationLink(destination: Quiz4answer4false()) {

                    ZStack{
                           Rectangle()
                            .fill(Color.white)
                            
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                            .frame(width:250,height: 150)
                            .cornerRadius(10)
                            .shadow(color: .gray, radius: 3, x: 5, y: 5)
                                        Text("外井出用水と\n内井出用水")
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



struct Quiz4answer4true: View {
    
    @State var showingmovie1 = false
        @State var selectmoview1 = true
    
    var body: some View {
        ZStack{
            Color(red: 0.741, green: 0.678, blue: 0.827)
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
                Text("世界かんがい遺産は、日本だけでも45こ以上も登録されていて、\n世界で一番登録数が多いよ。")
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
                    moviestart8()}
                        
                NavigationLink(destination: Quiz4answer5()) {

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
struct Quiz4answer4false: View {
    @State var showingmovie1 = false
        @State var selectmoview1 = true
    var body: some View {
        ZStack{
            Color(red: 0.741, green: 0.678, blue: 0.827)
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
                Text("世界かんがい遺産は、日本だけでも45こ以上も登録されていて、\n世界で一番登録数が多いよ。")
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
                                    moviestart8()}
                        
                NavigationLink(destination: Quiz4answer5()) {

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
struct Quiz4answer5: View {
    @State private var isShowing1View5: Bool = false
    
    @State var progress: CGFloat = 0.35
            @State var startAnimation:CGFloat = 0
    
    var body: some View {
        ZStack{
            Color(red: 0.741, green: 0.678, blue: 0.827)
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
                .foregroundColor(Color(red: 0.329,green: 0.251,blue:0.447))
                .font(.system(size: 80, weight: .black, design: .default))

            ZStack{ Text("熊本城の南西地域を洪水から守るために\n作られたものは？")
                                    .font(Font.mainFont(size: 50))
                                    .bold()
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
            }.offset(y: -80)

            HStack {

                NavigationLink(destination: Quiz4answer5true()) {
                    ZStack{
                           Rectangle()
                            .fill(Color.white)
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                            .frame(width:250,height: 150)
                            .cornerRadius(10)
                            .shadow(color: .gray, radius: 3, x: 5, y: 5)
                                        Text("えづとも")
                            .font(Font.mainFont(size: 30))
                            .background(Color.white)
                            .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                            .frame(width: 300, height: 100)
                    }
                }
                        
                NavigationLink(destination: Quiz4answer5false()) {

                    ZStack{
                           Rectangle()
                            .fill(Color.white)
                            
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                            .frame(width:250,height: 150)
                            .cornerRadius(10)
                            .shadow(color: .gray, radius: 3, x: 5, y: 5)
                                        Text("ずっとも")
                            .font(Font.mainFont(size: 25))
                            .background(Color.white)
                            .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                            .frame(width: 300, height: 100)
                    }
                }
                      
                NavigationLink(destination: Quiz4answer5false()) {

                    ZStack{
                           Rectangle()
                            .fill(Color.white)
                            
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                            .frame(width:250,height: 150)
                            .cornerRadius(10)
                            .shadow(color: .gray, radius: 3, x: 5, y: 5)
                                        Text("いずとも")
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

struct Quiz4answer5true: View {
    @State var showingmovie1 = false
        @State var selectmoview1 = true
    var body: some View {
        ZStack{
            Color(red: 0.741, green: 0.678, blue: 0.827)
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
                Text("緑川の水害が起きないようにするために、\n加勢川(かせがわ)に作られたものがえづどもとよばれているよ。")
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
                                    moviestart8()}
                        
                NavigationLink(destination: Quiz4End()) {

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
struct Quiz4answer5false: View {
    @State var showingmovie1 = false
        @State var selectmoview1 = true
    var body: some View {
        ZStack{
            Color(red: 0.741, green: 0.678, blue: 0.827)
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
                Text("緑川の水害が起きないようにするために、\n加勢川(かせがわ)に作られたものがえづどもとよばれているよ。")
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
                                    moviestart8()}
                        
                NavigationLink(destination: Quiz4End()) {

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

struct Quiz4finishView: View{
    
     var body: some View{
         NavigationView{
             ZStack{
                 Color(red: 0.741, green: 0.678, blue: 0.827)
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
                             
                             NavigationLink(destination: Quiz4answer1()){
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

struct Quiz4End: View{
    
    @EnvironmentObject var envData: EnvironmentData
    @State var quizscore = 5
    //@ObservedObject var bbb = false
    
     var body: some View{
         ZStack{
             Color(red: 0.741, green: 0.678, blue: 0.827)
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
                     envData.ddd = true
                     UserDefaults.standard.bool(forKey: "ddd")
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

struct Quiz4_Previews: PreviewProvider {
    static var previews: some View {
        Quiz4answer1()
.previewInterfaceOrientation(.landscapeLeft)
    }
}
