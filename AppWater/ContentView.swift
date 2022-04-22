//
//  ContentView.swift
//  AppWater
//
//  Created by 松下慎吾 on 2022/03/15.
//

import SwiftUI

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
                NavigationLink(destination: MovieView()){
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
                //遷移後のボタンのtextを”戻る”にする
                .navigationTitle("戻る")
                .navigationBarHidden(true)
                NavigationLink(destination: StudyView()){
                    ZStack{
                        Image(systemName: "drop.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 200)
                        Text("学習機能")
                            .padding(.vertical)
                            .foregroundColor(.white)
                    }
                }
                NavigationLink(destination: Visualization()){
                    ZStack{
                        Image(systemName: "drop.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 200)
                        Text("可視化機能")
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

