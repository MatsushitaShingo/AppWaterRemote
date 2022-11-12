//
//  art.swift
//  AppWater
//
//  Created by 松下慎吾 on 2022/10/25.
//

import SwiftUI

struct art: View {

    @State var scale = false
    
    var body: some View {
        VStack{
            Button(action : {
                        //回転する角度を変更
                        //self.scale = true
                print(scale)
                    }) {
                        Image(systemName: "plus")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .foregroundColor(.blue)
                            .rotationEffect(.init(degrees: scale ? 45 : -45))
                            .animation(.default.speed(0.5).repeatForever(),value: scale)
//                        Text("90度回転する")
//                            .rotationEffect(.init(degrees: scale ? 45 : -45))
//                            .animation(.linear(duration: 1))
                    }
//            Image(systemName: "plus")
//                .foregroundColor(.blue)
//                .background(Color.red)
//                .rotationEffect(.init(degrees: scale ? 45 : -45))
//                .animation(.default.speed(0.5).repeatForever(),value: scale)
            
            Image(systemName: "circle.fill")
                .resizable()
                .frame(width: 100, height: 100)
                .foregroundColor(.red)
            
            ZStack{
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 100, height: 100)
                Rectangle()
                    .fill(Color.white)
                    .frame(width: 50, height: 50)
            }
        }.onAppear{
            //self.scale = true
        }
    }
}

struct art_Previews: PreviewProvider {
    static var previews: some View {
        art()
    }
}
