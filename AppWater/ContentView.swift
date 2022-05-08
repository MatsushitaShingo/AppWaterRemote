//
//  ContentView.swift
//  AppWater
//
//  Created by 松下慎吾 on 2022/03/15.
//

import SwiftUI

class WaterData: ObservableObject {
    @Published var MonthTotal = 0
    @Published var AllTotal = 0
}

struct ContentView: View {
    var body: some View {
        NavigationView{
            HStack{
                NavigationLink(destination: Audiotest()){
                    ZStack{
                        Image(systemName: "drop.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 200)
                        Text("動画再生機能")
                            .padding(.vertical)
                            .foregroundColor(.white)
                    }
                }
                NavigationLink(destination: MovieViewTest()){
                    ZStack{
                        Image(systemName: "drop.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 200)
                        Text("動画を見よう！")
                            .padding(.vertical)
                            .foregroundColor(.white)
                    }
                }
                //遷移後のボタンのtextを”戻る”にする
                .navigationTitle("戻る")
                .navigationBarHidden(true)
                NavigationLink(destination: StudyView()){
                    ZStack{
                        Image(systemName: "drop.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 200)
                        Text("クイズを解こう！")
                            .padding(.vertical)
                            .foregroundColor(.white)
                    }
                }
                NavigationLink(destination: VisulalizationViewTest()){
                    ZStack{
                        Image(systemName: "drop.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 200)
                        Text("記録しよう！")
                            .padding(.vertical)
                            .foregroundColor(.white)
                    }
                }
            }.toolbar {
                /// ナビゲーションバー左、戻るボタンでSFシンボルを使いたい
                ToolbarItem(placement: .navigationBarLeading){
                    Button(action: {}) {
                        Image(systemName: "house")
                    }
                }
            }
        }
        .navigationViewStyle(.stack)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

