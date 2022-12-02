


import SwiftUI
import AVKit


struct Quiz3ModalView1: View {
    
    @Environment(\.presentationMode)var PresentationMode
    
    var body: some View {
        ZStack{
            Color(red: 1, green: 0.965, blue: 0.826)
                .ignoresSafeArea()
            VStack(spacing: 50){
                Text("熊本の水")
                    .font(Font.mainFont(size: 60))
                Text("熊本の水について\n考えてみよう！")
                    .font(Font.mainFont(size: 40))
                NavigationLink(destination: Quiz3answer1()){
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

struct Quiz3answer1: View {
    @EnvironmentObject var envData: EnvironmentData
    @State private var toNextView = false
    
    @State private var isShowing1View1: Bool = false
    
    @State var progress: CGFloat = 0.30
    
    @State var startAnimation:CGFloat = 0
    
    var body: some View {
        ZStack{
            Color(red: 0.549, green: 0.816, blue: 0.816)
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
                        .foregroundColor(Color(red: 0.247,green: 0.365,blue:0.447))
                ZStack{
                    Text("熊本市の水道水は、地下水何％？")
                        .font(Font.mainFont(size: 60))
                        .bold()
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                }.offset(y: -80)
                HStack {
                    NavigationLink(destination: Quiz3answer1true()){
                        ZStack{
                            Rectangle()
                                .fill(Color.white)
                                .frame(width:250,height: 150)
                                .cornerRadius(10)
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                            Text("100")
                                .font(Font.mainFont(size: 40))
                                .background(Color.white)
                                .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                                .frame(width: 300, height: 100)
                        }
                    }
                
                    NavigationLink(destination: Quiz3answer1false()) {
                        ZStack{
                            Rectangle()
                                .fill(Color.white)
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                                .frame(width:250,height: 150)
                                .cornerRadius(10)
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                            Text("50")
                                .font(Font.mainFont(size: 40))
                                .background(Color.white)
                                .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                                .frame(width: 300, height: 100)
                        }
                    }
                    NavigationLink(destination: Quiz3answer1false()) {
                        ZStack{
                            Rectangle()
                                .fill(Color.white)
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                                .frame(width:250,height: 150)
                                .cornerRadius(10)
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                            Text("75")
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

struct Quiz3answer1true: View {
    @State var showingmovie1 = false
        @State var selectmoview1 = true
    var body: some View {
        ZStack{
            Color(red: 0.549, green: 0.816, blue: 0.816)
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
                    Text("熊本市の水道水が地下水100％であることは日本全国でも、\n世界全体から見てもめずらしいことだよ。")
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
                        moviestart2()}
                            
                    NavigationLink(destination: Quiz3answer2()) {
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
struct Quiz3answer1false: View {
    @State var showingmovie1 = false
        @State var selectmoview1 = true
    var body: some View {
        
        ZStack{
            Color(red: 0.549, green: 0.816, blue: 0.816)
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
                Text("熊本市の水道水が地下水100％であることは日本全国でも、\n世界全体から見てもめずらしいことだよ。")
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
                    moviestart2()}
                
                NavigationLink(destination: Quiz3answer2()) {
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
struct Quiz3answer2: View {
    @State private var isShowing1View2: Bool = false
    
    @State var progress: CGFloat = 0.35
        @State var startAnimation:CGFloat = 0
    var body: some View {
        ZStack{
            Color(red: 0.549, green: 0.816, blue: 0.816)
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
                .foregroundColor(Color(red: 0.247,green: 0.365,blue:0.447))
                .font(.system(size: 80, weight: .black, design: .default))
            

            ZStack{
                                Text("熊本市内の湧水や、行事などを\nみんなの財産として登録する制度は？")
                    .font(Font.mainFont(size: 60))
                                    .bold()
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                
                                    
            }.offset(y: -80)

            HStack {

                NavigationLink(destination: Quiz3answer2false()) {

                    ZStack{
                           Rectangle()
                            .fill(Color.white)
                            
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                            .frame(width:250,height: 150)
                            .cornerRadius(10)
                            .shadow(color: .gray, radius: 3, x: 5, y: 5)
                                        Text("熊本水大賞")
                            .font(Font.mainFont(size: 40))
                            .background(Color.white)
                            .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                            .frame(width: 300, height: 100)
                                            
                    }
                        
                }
                        
                NavigationLink(destination: Quiz3answer2true()) {

                    ZStack{
                           Rectangle()
                            .fill(Color.white)
                            
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                            .frame(width:250,height: 150)
                            .cornerRadius(10)
                            .shadow(color: .gray, radius: 3, x: 5, y: 5)
                                        Text("熊本水遺産")
                            .font(Font.mainFont(size: 40))
                            .background(Color.white)
                            .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                            .frame(width: 300, height: 100)
                                            
                    }
                        
                }
                        
                NavigationLink(destination: Quiz3answer2false()) {

                    ZStack{
                           Rectangle()
                            .fill(Color.white)
                            
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                            .frame(width:250,height: 150)
                            .cornerRadius(10)
                            .shadow(color: .gray, radius: 3, x: 5, y: 5)
                                        Text("熊本水制度")
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

struct Quiz3answer2true: View {
    @State var showingmovie1 = false
        @State var selectmoview1 = true
    var body: some View {
        ZStack{
            Color(red: 0.549, green: 0.816, blue: 0.816)
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
                Text("熊本水遺産は、えづこやみずあかりなど、\n熊本市の全92ヶ所が登録されているよ。")
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
                                    moviestart2()}
                        
                NavigationLink(destination: Quiz3answer3()) {

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
struct Quiz3answer2false: View {
    @State var showingmovie1 = false
        @State var selectmoview1 = true
    var body: some View {
        ZStack{
            Color(red: 0.549, green: 0.816, blue: 0.816)
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
                Text("熊本水遺産は、えづこやみずあかりなど、\n熊本市の全92ヶ所が登録されているよ。")
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
                                    moviestart2()}
                        
                NavigationLink(destination: Quiz3answer3()) {

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
struct Quiz3answer3: View {
    @State private var isShowing1View3: Bool = false
    
    @State var progress: CGFloat = 0.35
            @State var startAnimation:CGFloat = 0
    var body: some View {
        ZStack{
            Color(red: 0.549, green: 0.816, blue: 0.816)
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
                .foregroundColor(Color(red: 0.247,green: 0.365,blue:0.447))
                .font(.system(size: 80, weight: .black, design: .default))
            ZStack{
                                Text("熊本の水は軟水？硬水？")
                    .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                                    .font(Font.mainFont(size: 40))
                                    .bold()
                                    .multilineTextAlignment(.center)
                            }

            HStack {

                NavigationLink(destination: Quiz3answer3false()) {
                    ZStack{
                           Rectangle()
                            .fill(Color.white)
                            
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                            .frame(width:250,height: 150)
                            .cornerRadius(10)
                            .shadow(color: .gray, radius: 3, x: 5, y: 5)
                                        Text("香水")
                            .font(Font.mainFont(size: 40))
                            .background(Color.white)
                            .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                            .frame(width: 300, height: 100)
                                            
                    }
                        
                }
                        
                NavigationLink(destination: Quiz3answer3false()) {
                    ZStack{
                           Rectangle()
                            .fill(Color.white)
                            
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                            .frame(width:250,height: 150)
                            .cornerRadius(10)
                            .shadow(color: .gray, radius: 3, x: 5, y: 5)
                                        Text("硬水")
                            .font(Font.mainFont(size: 40))
                            .background(Color.white)
                            .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                            .frame(width: 300, height: 100)
                                            
                    }
                }
                        
                NavigationLink(destination: Quiz3answer3true()) {
                    ZStack{
                           Rectangle()
                            .fill(Color.white)
                            
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                            .frame(width:250,height: 150)
                            .cornerRadius(10)
                            .shadow(color: .gray, radius: 3, x: 5, y: 5)
                                        Text("軟水")
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


struct Quiz3answer3true: View {
    @State var showingmovie1 = false
        @State var selectmoview1 = true
    var body: some View {
        ZStack{
            Color(red: 0.549, green: 0.816, blue: 0.816)
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
                Text("熊本の水は軟水だけど、全国的に見ると硬水よりだから、\nミネラルがバランスよくはいっていて飲みやすいよ。")
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
                                    moviestart2()}
                        
                NavigationLink(destination: Quiz3answer4()) {

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
struct Quiz3answer3false: View {
    @State var showingmovie1 = false
        @State var selectmoview1 = true
    var body: some View {
        ZStack{
            Color(red: 0.549, green: 0.816, blue: 0.816)
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
                Text("熊本の水は軟水だけど、全国的に見ると硬水よりだから、\nミネラルがバランスよくはいっていて飲みやすいよ。")
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
                                    moviestart2()}
                        
                NavigationLink(destination: Quiz3answer4()) {

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
struct Quiz3answer4: View {
    @State private var isShowing1View4: Bool = false
    
    @State var progress: CGFloat = 0.35
            @State var startAnimation:CGFloat = 0
    var body: some View {
        ZStack{
            Color(red: 0.549, green: 0.816, blue: 0.816)
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
                .foregroundColor(Color(red: 0.247,green: 0.365,blue:0.447))
                .font(.system(size: 80, weight: .black, design: .default))

            ZStack{
                                Text("熊本市で地下水ができやすくなったのは、\nなんという火山のおかげ？")
                                    .font(Font.mainFont(size: 40))
                                    .bold()
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                
                                    
            }.offset(y: -80)


            
            HStack {

                NavigationLink(destination: Quiz3answer4true()) {
                    ZStack{
                           Rectangle()
                            .fill(Color.white)
                            
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                            .frame(width:250,height: 150)
                            .cornerRadius(10)
                            .shadow(color: .gray, radius: 3, x: 5, y: 5)
                                        Text("阿蘇山")
                            .font(Font.mainFont(size: 40))
                            .background(Color.white)
                            .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                            .frame(width: 300, height: 100)
                                            
                    }
                        
                }
                        
                NavigationLink(destination: Quiz3answer4false()) {

                    ZStack{
                           Rectangle()
                            .fill(Color.white)
                            
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                            .frame(width:250,height: 150)
                            .cornerRadius(10)
                            .shadow(color: .gray, radius: 3, x: 5, y: 5)
                                        Text("きんぽう山")
                            .font(Font.mainFont(size: 40))
                            .background(Color.white)
                            .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                            .frame(width: 300, height: 100)
                                            
                    }
                }
                        
                
                NavigationLink(destination: Quiz3answer4false()) {

                    ZStack{
                           Rectangle()
                            .fill(Color.white)
                            
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                            .frame(width:250,height: 150)
                            .cornerRadius(10)
                            .shadow(color: .gray, radius: 3, x: 5, y: 5)
                                        Text("立田山")
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



struct Quiz3answer4true: View {
    
    @State var showingmovie1 = false
        @State var selectmoview1 = true
    
    var body: some View {
        ZStack{
            Color(red: 0.549, green: 0.816, blue: 0.816)
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
                Text("ふん火によって、阿蘇(あそ)にはカルデラというものができたよ。\nこのカルデラの中とその周りに約7万人もの人が住んでいるんだ。")
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
                    moviestart1()}
                        
                NavigationLink(destination: Quiz3answer5()) {

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
struct Quiz3answer4false: View {
    @State var showingmovie1 = false
        @State var selectmoview1 = true
    var body: some View {
        ZStack{
            Color(red: 0.549, green: 0.816, blue: 0.816)
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
                Text("ふん火によって、阿蘇(あそ)にはカルデラというものができたよ。\nこのカルデラの中とその周りに約7万人もの人が住んでいるんだ。")
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
                                    moviestart1()}
                        
                NavigationLink(destination: Quiz3answer5()) {

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
struct Quiz3answer5: View {
    @State private var isShowing1View5: Bool = false
    
    @State var progress: CGFloat = 0.35
            @State var startAnimation:CGFloat = 0
    
    var body: some View {
        ZStack{
            Color(red: 0.549, green: 0.816, blue: 0.816)
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
                .foregroundColor(Color(red: 0.247,green: 0.365,blue:0.447))
                .font(.system(size: 80, weight: .black, design: .default))

            ZStack{
                Text("阿蘇に降った雨が、地下水になって\n熊本市内まで流れてくるのに何年かかる？")
                                    .font(Font.mainFont(size: 50))
                                    .bold()
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
            }.offset(y: -80)

            HStack {

                NavigationLink(destination: Quiz3answer5true()) {
                    ZStack{
                           Rectangle()
                            .fill(Color.white)
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                            .frame(width:250,height: 150)
                            .cornerRadius(10)
                            .shadow(color: .gray, radius: 3, x: 5, y: 5)
                                        Text("20年")
                            .font(Font.mainFont(size: 30))
                            .background(Color.white)
                            .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                            .frame(width: 300, height: 100)
                    }
                }
                        
                NavigationLink(destination: Quiz3answer5false()) {

                    ZStack{
                           Rectangle()
                            .fill(Color.white)
                            
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                            .frame(width:250,height: 150)
                            .cornerRadius(10)
                            .shadow(color: .gray, radius: 3, x: 5, y: 5)
                                        Text("100年")
                            .font(Font.mainFont(size: 25))
                            .background(Color.white)
                            .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                            .frame(width: 300, height: 100)
                    }
                }
                      
                NavigationLink(destination: Quiz3answer5false()) {

                    ZStack{
                           Rectangle()
                            .fill(Color.white)
                            
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                            .frame(width:250,height: 150)
                            .cornerRadius(10)
                            .shadow(color: .gray, radius: 3, x: 5, y: 5)
                                        Text("50年")
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

struct Quiz3answer5true: View {
    @State var showingmovie1 = false
        @State var selectmoview1 = true
    var body: some View {
        ZStack{
            Color(red: 0.549, green: 0.816, blue: 0.816)
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
                Text("20年間もかけても地下水がくさらないのは、くさる原いんとなるきんを、\nすななどの地そうが取ってくれているからだよ。")
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
                                    moviestart1()}
                        
                NavigationLink(destination: Quiz3End()) {

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
struct Quiz3answer5false: View {
    @State var showingmovie1 = false
        @State var selectmoview1 = true
    var body: some View {
        ZStack{
            Color(red: 0.549, green: 0.816, blue: 0.816)
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
                Text("20年間もかけても地下水がくさらないのは、くさる原いんとなるきんを、\nすななどの地そうが取ってくれているからだよ。。")
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
                                    moviestart1()}
                        
                NavigationLink(destination: Quiz3End()) {

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

struct Quiz3finishView: View{
    
     var body: some View{
         NavigationView{
             ZStack{
                 Color(red: 0.549, green: 0.816, blue: 0.816)
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
                             
                             NavigationLink(destination: Quiz3answer1()){
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

struct Quiz3End: View{
    
    @EnvironmentObject var envData: EnvironmentData
    @State var quizscore = 5
    //@ObservedObject var bbb = false
    
     var body: some View{
         ZStack{
             Color(red: 0.549, green: 0.816, blue: 0.816)
                 .ignoresSafeArea()
         VStack{
             Text("５問中○○問正解しました！")
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
                     envData.ccc = true
                     UserDefaults.standard.bool(forKey: "ccc")
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

struct Quiz3_Previews: PreviewProvider {
    static var previews: some View {
        Quiz3answer1()
.previewInterfaceOrientation(.landscapeLeft)
    }
}
