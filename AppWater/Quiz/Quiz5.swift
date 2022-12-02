

import SwiftUI
import AVKit

struct Quiz5ModalView1: View {
    
    @Environment(\.presentationMode)var PresentationMode
    
    var body: some View {
        ZStack{
            Color(red: 1, green: 0.965, blue: 0.826)
                .ignoresSafeArea()
            VStack(spacing: 50){
                Text("世界の水")
                    .font(Font.mainFont(size: 60))
                Text("世界の水について\n考えてみよう！")
                    .font(Font.mainFont(size: 40))
                NavigationLink(destination: Quiz5answer1()){
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

struct Quiz5answer1: View {
    @EnvironmentObject var envData: EnvironmentData
    @State private var toNextView = false
    
    @State private var isShowing1View1: Bool = false
    
    @State var progress: CGFloat = 0.30
    
    @State var startAnimation:CGFloat = 0
    
    var body: some View {
        ZStack{
            Color(red: 0.937, green: 0.957, blue: 0.561)
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
                        .foregroundColor(Color(red: 0.820,green: 0.859,blue:0.090))
                ZStack{
                    Text("SDGsの目標６は何？")
                        .font(Font.mainFont(size: 60))
                        .bold()
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                }.offset(y: -80)
                HStack {
                    NavigationLink(destination: Quiz5answer1true()) {
                        ZStack{
                            Rectangle()
                                .fill(Color.white)
                                .frame(width:250,height: 150)
                                .cornerRadius(10)
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                            Text("安全な水とトイレを世界中に")
                                .font(Font.mainFont(size: 35))
                                .background(Color.white)
                                .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                                .frame(width: 300, height: 100)
                        }
                    }
                    NavigationLink(destination: Quiz5answer1false()) {
                        ZStack{
                            Rectangle()
                                .fill(Color.white)
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                                .frame(width:250,height: 150)
                                .cornerRadius(10)
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                            Text("陸の豊かさも\n守ろう")
                                .font(Font.mainFont(size: 40))
                                .background(Color.white)
                                .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                                .frame(width: 300, height: 100)
                        }
                    }
                    NavigationLink(destination: Quiz5answer1false()) {
                        ZStack{
                            Rectangle()
                                .fill(Color.white)
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                                .frame(width:250,height: 150)
                                .cornerRadius(10)
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                            Text("住み続けられる\nまちづくりを")
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

struct Quiz5answer1true: View {
    @State var showingmovie1 = false
        @State var selectmoview1 = true
    var body: some View {
        ZStack{
            Color(red: 0.937, green: 0.957, blue: 0.561)
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
                    Text("SDGsは全部で17こう目。6の「安全な水とトイレを世界中に」\nだけでなく、ぜひ、全部見てみてね。")
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
                        moviestart3()}
                            
                    NavigationLink(destination: Quiz5answer2()) {
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
struct Quiz5answer1false: View {
    @State var showingmovie1 = false
        @State var selectmoview1 = true
    var body: some View {
        
        ZStack{
            Color(red: 0.937, green: 0.957, blue: 0.561)
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
                Text("SDGsは全部で17こう目。6の「安全な水とトイレを世界中に」\nだけでなく、ぜひ、全部見てみてね。")
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
                    moviestart3()}
                
                NavigationLink(destination: Quiz5answer2()) {
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
struct Quiz5answer2: View {
    @State private var isShowing1View2: Bool = false
    
    @State var progress: CGFloat = 0.35
        @State var startAnimation:CGFloat = 0
    var body: some View {
        ZStack{
            Color(red: 0.937, green: 0.957, blue: 0.561)
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
                .foregroundColor(Color(red: 0.820,green: 0.859,blue:0.090))
                .font(.system(size: 80, weight: .black, design: .default))
            

            ZStack{
                                Text("国連では、毎年何月何日を\n「世界水の日」として定めているでしょうか？")
                    .font(Font.mainFont(size: 60))
                                    .bold()
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                
                                    
            }.offset(y: -80)

            HStack {

                NavigationLink(destination: Quiz5answer2false()) {

                    ZStack{
                           Rectangle()
                            .fill(Color.white)
                            
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                            .frame(width:250,height: 150)
                            .cornerRadius(10)
                            .shadow(color: .gray, radius: 3, x: 5, y: 5)
                                        Text("9月9日")
                            .font(Font.mainFont(size: 40))
                            .background(Color.white)
                            .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                            .frame(width: 300, height: 100)
                                            
                    }
                        
                }
                        
                NavigationLink(destination: Quiz5answer2true()) {

                    ZStack{
                           Rectangle()
                            .fill(Color.white)
                            
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                            .frame(width:250,height: 150)
                            .cornerRadius(10)
                            .shadow(color: .gray, radius: 3, x: 5, y: 5)
                                        Text("3月22日")
                            .font(Font.mainFont(size: 40))
                            .background(Color.white)
                            .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                            .frame(width: 300, height: 100)
                                            
                    }
                        
                }
                        
                NavigationLink(destination: Quiz5answer2false()) {

                    ZStack{
                           Rectangle()
                            .fill(Color.white)
                            
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                            .frame(width:250,height: 150)
                            .cornerRadius(10)
                            .shadow(color: .gray, radius: 3, x: 5, y: 5)
                                        Text("12月24日")
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

struct Quiz5answer2true: View {
    @State var showingmovie1 = false
        @State var selectmoview1 = true
    var body: some View {
        ZStack{
            Color(red: 0.937, green: 0.957, blue: 0.561)
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
                Text("日本では8月1日を「水の日」。８月１日～７日までを水の週間として、\n全国的にイベントを行なっているよ。")
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
                                    moviestart3()}
                        
                NavigationLink(destination: Quiz5answer3()) {

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
struct Quiz5answer2false: View {
    @State var showingmovie1 = false
        @State var selectmoview1 = true
    var body: some View {
        ZStack{
            Color(red: 0.937, green: 0.957, blue: 0.561)
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
                Text("日本では8月1日を「水の日」。８月１日～７日までを水の週間として、\n全国的にイベントを行なっているよ。")
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
                                    moviestart3()}
                        
                NavigationLink(destination: Quiz5answer3()) {

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
struct Quiz5answer3: View {
    @State private var isShowing1View3: Bool = false
    
    @State var progress: CGFloat = 0.35
            @State var startAnimation:CGFloat = 0
    var body: some View {
        ZStack{
            Color(red: 0.937, green: 0.957, blue: 0.561)
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
                .foregroundColor(Color(red: 0.820,green: 0.859,blue:0.090))
                .font(.system(size: 80, weight: .black, design: .default))
            ZStack{
                                Text("地球上にある水の中で、\n私たちが生活に使える水は何％か？")
                    .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                                    .font(Font.mainFont(size: 40))
                                    .bold()
                                    .multilineTextAlignment(.center)
                            }

            HStack {

                NavigationLink(destination: Quiz5answer3false()) {
                    ZStack{
                           Rectangle()
                            .fill(Color.white)
                            
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                            .frame(width:250,height: 150)
                            .cornerRadius(10)
                            .shadow(color: .gray, radius: 3, x: 5, y: 5)
                                        Text("10%")
                            .font(Font.mainFont(size: 40))
                            .background(Color.white)
                            .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                            .frame(width: 300, height: 100)
                                            
                    }
                        
                }
                        
                NavigationLink(destination: Quiz5answer3false()) {
                    ZStack{
                           Rectangle()
                            .fill(Color.white)
                            
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                            .frame(width:250,height: 150)
                            .cornerRadius(10)
                            .shadow(color: .gray, radius: 3, x: 5, y: 5)
                                        Text("100%")
                            .font(Font.mainFont(size: 40))
                            .background(Color.white)
                            .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                            .frame(width: 300, height: 100)
                                            
                    }
                }
                        
                NavigationLink(destination: Quiz5answer3true()) {
                    ZStack{
                           Rectangle()
                            .fill(Color.white)
                            
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                            .frame(width:250,height: 150)
                            .cornerRadius(10)
                            .shadow(color: .gray, radius: 3, x: 5, y: 5)
                                        Text("0.01%")
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


struct Quiz5answer3true: View {
    @State var showingmovie1 = false
        @State var selectmoview1 = true
    var body: some View {
        ZStack{
            Color(red: 0.937, green: 0.957, blue: 0.561)
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
                Text("地球上のたん水（塩分をほとんどふくまない水）は、\n2.5％で、その70％は氷などで、生活に使えない水だよ。")
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
                                    moviestart4()}
                        
                NavigationLink(destination: Quiz5answer4()) {

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
struct Quiz5answer3false: View {
    @State var showingmovie1 = false
        @State var selectmoview1 = true
    var body: some View {
        ZStack{
            Color(red: 0.937, green: 0.957, blue: 0.561)
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
                Text("地球上のたん水（塩分をほとんどふくまない水）は、\n2.5％で、その70％は氷などで、生活に使えない水だよ。")
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
                                    moviestart4()}
                        
                NavigationLink(destination: Quiz5answer4()) {

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
struct Quiz5answer4: View {
    @State private var isShowing1View4: Bool = false
    
    @State var progress: CGFloat = 0.35
            @State var startAnimation:CGFloat = 0
    var body: some View {
        ZStack{
            Color(red: 0.937, green: 0.957, blue: 0.561)
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
                .foregroundColor(Color(red: 0.820,green: 0.859,blue:0.090))
                .font(.system(size: 80, weight: .black, design: .default))

            ZStack{
                                Text("ユニセフによると、世界で◯億人が、\n安全な水を飲める環境に無い。。")
                                    .font(Font.mainFont(size: 40))
                                    .bold()
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                
                                    
            }.offset(y: -80)


            
            HStack {

                NavigationLink(destination: Quiz5answer4true()) {
                    ZStack{
                           Rectangle()
                            .fill(Color.white)
                            
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                            .frame(width:250,height: 150)
                            .cornerRadius(10)
                            .shadow(color: .gray, radius: 3, x: 5, y: 5)
                                        Text("22")
                            .font(Font.mainFont(size: 40))
                            .background(Color.white)
                            .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                            .frame(width: 300, height: 100)
                                            
                    }
                        
                }
                        
                NavigationLink(destination: Quiz5answer4false()) {

                    ZStack{
                           Rectangle()
                            .fill(Color.white)
                            
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                            .frame(width:250,height: 150)
                            .cornerRadius(10)
                            .shadow(color: .gray, radius: 3, x: 5, y: 5)
                                        Text("52")
                            .font(Font.mainFont(size: 40))
                            .background(Color.white)
                            .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                            .frame(width: 300, height: 100)
                                            
                    }
                }
                        
                
                NavigationLink(destination: Quiz5answer4false()) {

                    ZStack{
                           Rectangle()
                            .fill(Color.white)
                            
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                            .frame(width:250,height: 150)
                            .cornerRadius(10)
                            .shadow(color: .gray, radius: 3, x: 5, y: 5)
                                        Text("2")
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



struct Quiz5answer4true: View {
    
    @State var showingmovie1 = false
        @State var selectmoview1 = true
    
    var body: some View {
        ZStack{
            Color(red: 0.937, green: 0.957, blue: 0.561)
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
                Text("水むだづかいをやめて節水したり、いろんな国について\n調べたりすることも、世界の水を守ることにつながるよ。")
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
                    moviestart4()}
                        
                NavigationLink(destination: Quiz5answer5()) {

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
struct Quiz5answer4false: View {
    @State var showingmovie1 = false
        @State var selectmoview1 = true
    var body: some View {
        ZStack{
            Color(red: 0.937, green: 0.957, blue: 0.561)
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
                Text("むだづかいをやめて節水したり、いろんな国について\n調べたりすることも、世界の水を守ることにつながるよ。")
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
                                    moviestart4()}
                        
                NavigationLink(destination: Quiz5answer5()) {

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
struct Quiz5answer5: View {
    @State private var isShowing1View5: Bool = false
    
    @State var progress: CGFloat = 0.35
            @State var startAnimation:CGFloat = 0
    
    var body: some View {
        ZStack{
            Color(red: 0.937, green: 0.957, blue: 0.561)
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
                .foregroundColor(Color(red: 0.820,green: 0.859,blue:0.090))
                .font(.system(size: 80, weight: .black, design: .default))

            ZStack{ Text("世界中で安全な水道水を飲めるのは何ヵ国？")
                                    .font(Font.mainFont(size: 50))
                                    .bold()
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
            }.offset(y: -80)

            HStack {

                NavigationLink(destination: Quiz5answer5true()) {
                    ZStack{
                           Rectangle()
                            .fill(Color.white)
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                            .frame(width:250,height: 150)
                            .cornerRadius(10)
                            .shadow(color: .gray, radius: 3, x: 5, y: 5)
                                        Text("15")
                            .font(Font.mainFont(size: 30))
                            .background(Color.white)
                            .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                            .frame(width: 300, height: 100)
                    }
                }
                        
                NavigationLink(destination: Quiz5answer5false()) {

                    ZStack{
                           Rectangle()
                            .fill(Color.white)
                            
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                            .frame(width:250,height: 150)
                            .cornerRadius(10)
                            .shadow(color: .gray, radius: 3, x: 5, y: 5)
                                        Text("100")
                            .font(Font.mainFont(size: 25))
                            .background(Color.white)
                            .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                            .frame(width: 300, height: 100)
                    }
                }
                      
                NavigationLink(destination: Quiz5answer5false()) {

                    ZStack{
                           Rectangle()
                            .fill(Color.white)
                            
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                            .frame(width:250,height: 150)
                            .cornerRadius(10)
                            .shadow(color: .gray, radius: 3, x: 5, y: 5)
                                        Text("65")
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

struct Quiz5answer5true: View {
    @State var showingmovie1 = false
        @State var selectmoview1 = true
    var body: some View {
        ZStack{
            Color(red: 0.937, green: 0.957, blue: 0.561)
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
                Text("日本の国土交通省が、毎年調べていて、2018年の調さでは9カ国という\nほうこくもあるんだ。毎年数が変わるかもしれないから、何カ国なのか、\n自分でも調べてみてね。")
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
                                    moviestart4()}
                        
                NavigationLink(destination: Quiz5End()) {

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
struct Quiz5answer5false: View {
    @State var showingmovie1 = false
        @State var selectmoview1 = true
    var body: some View {
        ZStack{
            Color(red: 0.937, green: 0.957, blue: 0.561)
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
                Text("日本の国土交通省が、毎年調べていて、2018年の調さでは9カ国という\nほうこくもあるんだ。毎年数が変わるかもしれないから、何カ国なのか、\n自分でも調べてみてね。")
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
                                    moviestart4()}
                        
                NavigationLink(destination: Quiz5End()) {

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

struct Quiz5finishView: View{
    
     var body: some View{
         NavigationView{
             ZStack{
                 Color(red: 0.937, green: 0.957, blue: 0.561)
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
                             
                             NavigationLink(destination: Quiz5answer1()){
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

struct Quiz5End: View{
    
    @EnvironmentObject var envData: EnvironmentData
    @State var quizscore = 5
    //@ObservedObject var bbb = false
    
     var body: some View{
         ZStack{
             Color(red: 0.937, green: 0.957, blue: 0.561)
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
                     envData.eee = true
                     UserDefaults.standard.bool(forKey: "eee")
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

struct Quiz5_Previews: PreviewProvider {
    static var previews: some View {
        Quiz5answer1()
.previewInterfaceOrientation(.landscapeLeft)
    }
}
