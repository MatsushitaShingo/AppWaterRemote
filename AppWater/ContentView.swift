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
                          }
                      }.navigationViewStyle(.stack)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
.previewInterfaceOrientation(.landscapeLeft)
    }
}
