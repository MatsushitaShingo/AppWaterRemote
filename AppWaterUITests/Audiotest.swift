//
//  Audiotest.swift
//  AppWater
//
//  Created by 松下慎吾 on 2022/04/23.
//

import SwiftUI
import AVFoundation

struct Audiotest: View {
    
    var body: some View {
        VStack{
            Button{
                playSound()
            }label: {
                Text("サウンド")
            }
        }
    }
}

struct Audiotest_Previews: PreviewProvider {
    static var previews: some View {
        Audiotest()
    }
}
var sound: AVAudioPlayer?

func playSound() {
    if let path = Bundle.main.path(forResource: "海岸3", ofType: "mp3") {
        do {
            sound = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            print("Playing sound")
            sound?.play()
        } catch {
            print( "Could not find file")
        }
    }
}
//struct moviestart1: View{
//    
//     private let player = AVPlayer(url: Bundle.main.url(forResource:"movie",withExtension: "mp4")!)
//    
//     var body: some View{
//        VideoPlayer(player: player)
//            .onAppear(){
//                player.play()
//                
//            }
//            .onDisappear(){
//                player.pause()
//            }
//        }
//    }
