//
//  MovieView.swift
//  AppWater
//
//  Created by 松下慎吾 on 2022/03/15.
//

import SwiftUI
import AVKit

struct MovieView: View {
    @State var showingDetail1 = false
    @State var showingDetail2 = false
//    let player = URL(fileURLWithPath: Bundle.main.path(forResource:"movie",ofType: "mp4")!)
    
     
     
    
    var body: some View {
        ScrollView{
            VStack{
                HStack{
                    Button(action: {
                        self.showingDetail1.toggle()
                    }){
                        Image("夜景")
                    }.fullScreenCover(isPresented: $showingDetail1){
                        moviestart()
                    }
                    
                    Button(action: {
                        self.showingDetail2.toggle()
                    }){
                        Image("飛行機窓")
                    }.fullScreenCover(isPresented: $showingDetail2){
                        moviestart1()
                    }
                }
                HStack{
                    Button(action: {
                        self.showingDetail1.toggle()
                    }){
                        Image("夜景")
                    }.fullScreenCover(isPresented: $showingDetail1){
                        moviestart()
                    }
                    
                    Button(action: {
                        self.showingDetail2.toggle()
                    }){
                        Image("飛行機窓")
                    }.fullScreenCover(isPresented: $showingDetail2){
                        moviestart1()
                    }
                }

                HStack{
                    Button(action: {
                        self.showingDetail1.toggle()
                    }){
                        Image("夜景")
                    }.fullScreenCover(isPresented: $showingDetail1){
                        moviestart()
                    }
                    
                    Button(action: {
                        self.showingDetail2.toggle()
                    }){
                        Image("飛行機窓")
                    }.fullScreenCover(isPresented: $showingDetail2){
                        moviestart1()
                    }
                }
                HStack{
                    Button(action: {
                        self.showingDetail1.toggle()
                    }){
                        Image("夜景")
                    }.fullScreenCover(isPresented: $showingDetail1){
                        moviestart()
                    }
                    
                    Button(action: {
                        self.showingDetail2.toggle()
                    }){
                        Image("飛行機窓")
                    }.fullScreenCover(isPresented: $showingDetail2){
                        moviestart1()
                    }
                }

                HStack{
                    Button(action: {
                        self.showingDetail1.toggle()
                    }){
                        Image("夜景")
                    }.fullScreenCover(isPresented: $showingDetail1){
                        moviestart()
                    }
                    
                    Button(action: {
                        self.showingDetail2.toggle()
                    }){
                        Image("飛行機窓")
                    }.fullScreenCover(isPresented: $showingDetail2){
                        moviestart1()
                    }
                }
        }
    }
}
struct moviestart: View{
    
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
    struct moviestart1: View{
        
         private let player1 = AVPlayer(url: Bundle.main.url(forResource:"mov_hts-samp001",withExtension: "mp4")!)
        
         var body: some View{
            VideoPlayer(player: player1)
                .onAppear(){
                    player1.play()
                    
                }
                .onDisappear(){
                    player1.pause()
                }
            }
        }
}

struct MovieView_Previews: PreviewProvider {
    static var previews: some View {
        MovieView()
.previewInterfaceOrientation(.landscapeLeft)
    }
}
