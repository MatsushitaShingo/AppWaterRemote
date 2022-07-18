//
//  WaterWave.swift
//  AppWater
//
//  Created by 松下慎吾 on 2022/04/22.
//

import SwiftUI

struct WaterWave: View {
    
    @State var progress: CGFloat = 0.5
    @State var startAnimation:CGFloat = 0
    
    var body: some View {
        VStack{
            //wave Form
            GeometryReader{proxy in
                let size = proxy.size
               
                ZStack{
                    //Water Drop
                    Image("コップ背景")
                        .resizable()
                        .aspectRatio(contentMode:  .fit)
                    //Strexhing in X Axis
                        .scaleEffect(x:1,y:1)
                        .offset(y: -1)
                    
                    //Waave Form Shepe
                    Waterwave(progress: progress, waveHeght: 0.015, offset: startAnimation)
                        .fill(Color.blue)
                    //Sater Drops
                        .overlay(content: {
                            ZStack{
                            Circle()
                                .fill(.white.opacity(0.1))
                                .frame(width: 15, height: 15)
                                .offset(x: -20)
                                
                                Circle()
                                    .fill(.white.opacity(0.1))
                                    .frame(width: 15, height: 15)
                                    .offset(x: 40,y: 30)
                                
                                Circle()
                                    .fill(.white.opacity(0.1))
                                    .frame(width: 15, height: 15)
                                    .offset(x:-30,y: 80)
                                
                                Circle()
                                    .fill(.white.opacity(0.1))
                                    .frame(width: 15, height: 15)
                                    .offset(x: 50,y: 70)
                                
                                Circle()
                                    .fill(.white.opacity(0.1))
                                    .frame(width: 15, height: 15)
                                    .offset(x: 40,y: 100)
                                
                                Circle()
                                    .fill(.white.opacity(0.1))
                                    .frame(width: 15, height: 15)
                                    .offset(x: -40,y: 50)
                            }
                        })
                    //Masking into Drop Shape
                        .mask{
                            Image("コップ背景")
                                .resizable()
                                .aspectRatio(contentMode:.fit)
                                .padding(20)
                        }
                    //Add Button
                        .overlay(alignment: .bottom){
                            Button{
                                progress += 0.01
                            } label: {
                                Image(systemName: "plus")
                                    .font(.system(size:40, weight: .black))
                                    .foregroundColor(Color.blue)
                                    .shadow(radius:  2)
                                    .padding(25)
                                    .background(.white,in: Circle())
                            }
                        }
                }
                .onAppear{
                    //Lopping Animation
                    withAnimation(.linear(duration: 2).repeatForever(autoreverses:false)){
                        //If you value less than the rect width it will not finish completely
                        startAnimation = size.width
                    }
                }
            }
            .frame(height: 350)
            
            Slider(value:  $progress)
        }
        .padding()
            .frame(width: .infinity, height: .infinity, alignment: .top)
            .background(Color.yellow)
    }
}

struct WaterWave_Previews: PreviewProvider {
    static var previews: some View {
        WaterWave()
    }
}

struct Waterwave: Shape{
    var progress: CGFloat
    //Wave Height
    var waveHeght: CGFloat
    //Intiol Animation Start
    var offset: CGFloat
    //Enabling Animation
    var animatableData: CGFloat{
        get{offset}
        set{offset = newValue}
    }
    
    func path(in rect: CGRect) -> Path{
        return Path{path in path.move(to: .zero)
        //Drawing waves using Sine
            let progressHeight: CGFloat = (1 - progress) * rect.height
            let height = waveHeght * rect.height
            
            for value in stride(from: 0, to: rect.width, by: 2){
                let x: CGFloat = value
                let sine: CGFloat = sin(Angle(degrees: value + offset).radians)
                let y: CGFloat = progressHeight + (height * sine)
                
                path.addLine(to:CGPoint(x: x,y: y))
            }
            
            //Bottom Portion
            path.addLine(to: CGPoint(x:rect.width, y: rect.height))
            path.addLine(to: CGPoint(x: 0, y: rect.height))
        }
    }
}
