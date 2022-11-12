//
//  TransitionTest.swift
//  AppWater
//
//  Created by 松下慎吾 on 2022/11/11.
//

import SwiftUI

struct TransitionTest: View {
    
    @State private var flag = true
    @EnvironmentObject var waterData: WaterData
    
    var body: some View {
        VStack {
//                    Button("トランジション") {
//                        withAnimation() {
//                            self.waterData.display.toggle()
//                        }
//                    }
            if waterData.display == true{
                        Circle()
                            .fill(Color.blue)
                            .frame(width: 100, height: 100)
                            .transition(AnyTransition.opacity.combined(with: .offset(x: 100, y: 50)))     // トランジションの適用
            }else{
                Circle()
                    .fill(Color.red)
                    .frame(width: 100, height: 100)
            }
                }
        .onAppear(){
            withAnimation() {
                self.waterData.display.toggle()
            }
        }
    }
}

struct TransitionTest_Previews: PreviewProvider {
    static var previews: some View {
        TransitionTest()
    }
}
