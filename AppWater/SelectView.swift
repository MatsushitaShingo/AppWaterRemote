//
//  SelectView.swift
//  AppWater
//
//  Created by 松下慎吾 on 2022/03/30.

import SwiftUI
import AudioToolbox
import CoreData

struct SelectView:View{
    
    let soundIdRing: SystemSoundID = 1104
    //候補1322,1306,1150,1107,1105,1104,1052,1050,1008,1004,1003
    //1053は不正解のときの音
    
    @State fileprivate var isShowingView: Bool = false
    @State fileprivate var SelectTotal = 0
    @State fileprivate var SelectTotalRecord = 0
    @State fileprivate var select1 = 17
    @State fileprivate var select2 = 36
    @State fileprivate var select3 = 55
    @State fileprivate var select4 = 10
    @State fileprivate var select5 = 30
    @State fileprivate var select6 = 50
    @State fileprivate var select7 = 60
    @State fileprivate var select8 = 24
    @Environment(\.dismiss) var dismiss
    let userdefaults = UserDefaults.standard
    @State private var buttonDisabled1 : Bool = true
    @State private var buttonDisabled2 : Bool = true
    @State private var buttonDisabled3 : Bool = true
    @State private var buttonDisabled4 : Bool = true
    @State private var buttonDisabled5 : Bool = true
    @State private var buttonDisabled6 : Bool = true
    @State private var buttonDisabled7 : Bool = true
    @State private var buttonDisabled8 : Bool = true
    @EnvironmentObject var waterData: WaterData
    let saveprice = 148.5
    
    //coredataを使うための処理
    @Environment(\.managedObjectContext)  var viewContext
    @State var alldataattirbute = 0
    
    var body: some View {
        ZStack{
            Color(red:0.754,green:0.887, blue:0.914)
                .ignoresSafeArea()
            
            VStack{
                //記録するボタンを押すと、record変数の値を保存してVisualizationで値を取り出せる状態にする
                    Text("できたことを1つ選んでね")
                        .foregroundColor(.black)
                        .font(.largeTitle)
                        .offset(y:-30)              
                VStack{
                    HStack{
                        ZStack{
                            Button(action: {
                                //他のボタンの色を戻す
                                buttonDisabled1.toggle()
                                buttonDisabled2 = true
                                buttonDisabled3 = true
                                buttonDisabled4 = true
                                buttonDisabled5 = true
                                buttonDisabled6 = true
                                buttonDisabled7 = true
                                buttonDisabled8 = true
                                
                                //ボタンが押されていない状態の時のエラー処理
                                if buttonDisabled1 == true{
                                    select1 = 0
                                }else{
                                    SelectTotal = self.select1
                                }
                                
                                //タップ音
                                AudioServicesPlaySystemSound(soundIdRing)
                                
                            }, label: {
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color.white)
                                                .frame(width:250, height: 200)
                            })
                            Button(action: {
                                buttonDisabled1.toggle()
                            }, label: {
                                VStack{
                                    Text("歯磨きはコップの水で")
                                        .foregroundColor(.black)
                                    Text("17L")
                                        .font(.largeTitle)
                                        .foregroundColor(.black)
                                }
                                        })
                                        .buttonStyle(MyButtonStyle())
                                        .disabled(buttonDisabled1)
                                        .padding()
                        }
                        
                        ZStack{
                            Button(action: {
                                buttonDisabled2.toggle()
                                buttonDisabled1 = true
                                buttonDisabled3 = true
                                buttonDisabled4 = true
                                buttonDisabled5 = true
                                buttonDisabled6 = true
                                buttonDisabled7 = true
                                buttonDisabled8 = true
                                if buttonDisabled2 == true{
                                    select2 = 0
                                }else{
                                    SelectTotal = self.select2
                                }
                                AudioServicesPlaySystemSound(soundIdRing)
                            }, label: {
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color.white)
                                                .frame(width:250, height: 200)
                            })
                            Button(action: {
                                buttonDisabled2.toggle()
                            }, label: {
                                VStack{
                                    Text("シャワーはこまめに")
                                        .foregroundColor(.black)
                                    Text("36L")
                                        .font(.largeTitle)
                                        .foregroundColor(.black)
                                }
                                        })
                                        .buttonStyle(MyButtonStyle())
                                        .disabled(buttonDisabled2)
                                        .padding()
                        }
                        ZStack{
                            Button(action: {
                                buttonDisabled3.toggle()
                                buttonDisabled1 = true
                                buttonDisabled2 = true
                                buttonDisabled4 = true
                                buttonDisabled5 = true
                                buttonDisabled6 = true
                                buttonDisabled7 = true
                                buttonDisabled8 = true
                                if buttonDisabled3 == true{
                                    select3 = 0
                                }else{
                                    SelectTotal = self.select3
                                }
                                AudioServicesPlaySystemSound(soundIdRing)
                            }, label: {
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color.white)
                                                .frame(width:250, height: 200)
                            })
                            Button(action: {
                                buttonDisabled3.toggle()
                            }, label: {
                                VStack{
                                    Text("風呂水は選択に使う")
                                        .foregroundColor(.black)
                                    Text("55L")
                                        .font(.largeTitle)
                                        .foregroundColor(.black)
                                }
                                        })
                                        .buttonStyle(MyButtonStyle())
                                        .disabled(buttonDisabled3)
                                        .padding()
                        }
                        ZStack{
                            Button(action: {
                                buttonDisabled4.toggle()
                                buttonDisabled1 = true
                                buttonDisabled2 = true
                                buttonDisabled3 = true
                                buttonDisabled5 = true
                                buttonDisabled6 = true
                                buttonDisabled7 = true
                                buttonDisabled8 = true
                                if buttonDisabled4 == true{
                                    select4 = 0
                                }else{
                                    SelectTotal = self.select4
                                }
                                AudioServicesPlaySystemSound(soundIdRing)
                            }, label: {
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color.white)
                                                .frame(width:250, height: 200)
                            })
                            Button(action: {
                                buttonDisabled4.toggle()
                            }, label: {
                                VStack{
                                    Text("トイレは一回で流す")
                                        .foregroundColor(.black)
                                    Text("10L")
                                        .font(.largeTitle)
                                        .foregroundColor(.black)
                                }
                                        })
                                        .buttonStyle(MyButtonStyle())
                                        .disabled(buttonDisabled4)
                                        .padding()
                        }
                    }
                    HStack{
                        ZStack{
                            Button(action: {
                                buttonDisabled5.toggle()
                                buttonDisabled1 = true
                                buttonDisabled2 = true
                                buttonDisabled3 = true
                                buttonDisabled4 = true
                                buttonDisabled6 = true
                                buttonDisabled7 = true
                                buttonDisabled8 = true
                                if buttonDisabled5 == true{
                                    select5 = 0
                                }else{
                                    SelectTotal = self.select5
                                }
                                AudioServicesPlaySystemSound(soundIdRing)
                            }, label: {
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color.white)
                                                .frame(width:250, height: 200)
                            })
                            Button(action: {
                                buttonDisabled5.toggle()
                            }, label: {
                                VStack{
                                    Text("食器はつけおき洗い")
                                        .foregroundColor(.black)
                                    Text("30L")
                                        .font(.largeTitle)
                                        .foregroundColor(.black)
                                }
                                        })
                                        .buttonStyle(MyButtonStyle())
                                        .disabled(buttonDisabled5)
                                        .padding()
                        }
                        ZStack{
                            Button(action: {
                                buttonDisabled6.toggle()
                                buttonDisabled1 = true
                                buttonDisabled2 = true
                                buttonDisabled3 = true
                                buttonDisabled4 = true
                                buttonDisabled5 = true
                                buttonDisabled7 = true
                                buttonDisabled8 = true
                                if buttonDisabled6 == true{
                                    select6 = 0
                                }else{
                                    SelectTotal = self.select6
                                }
                                AudioServicesPlaySystemSound(soundIdRing)
                            }, label: {
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color.white)
                                                .frame(width:250, height: 200)
                            })
                            Button(action: {
                                buttonDisabled6.toggle()
                            }, label: {
                                VStack{
                                    Text("雨水を有効活用")
                                        .foregroundColor(.black)
                                    Text("50L")
                                        .font(.largeTitle)
                                        .foregroundColor(.black)
                                }
                                        })
                                        .buttonStyle(MyButtonStyle())
                                        .disabled(buttonDisabled6)
                                        .padding()
                        }
                        ZStack{
                            Button(action: {
                                buttonDisabled7.toggle()
                                buttonDisabled1 = true
                                buttonDisabled2 = true
                                buttonDisabled3 = true
                                buttonDisabled4 = true
                                buttonDisabled5 = true
                                buttonDisabled6 = true
                                buttonDisabled8 = true
                                if buttonDisabled7 == true{
                                    select7 = 0
                                }else{
                                    SelectTotal = self.select7
                                }
                                AudioServicesPlaySystemSound(soundIdRing)
                            }, label: {
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color.white)
                                                .frame(width:250, height: 200)
                            })
                            Button(action: {
                                buttonDisabled7.toggle()
                            }, label: {
                                VStack{
                                    Text("洗濯はまとめ洗い")
                                        .foregroundColor(.black)
                                    Text("60L")
                                        .font(.largeTitle)
                                        .foregroundColor(.black)
                                }
                                        })
                                        .buttonStyle(MyButtonStyle())
                                        .disabled(buttonDisabled7)
                                        .padding()
                        }
                        ZStack{
                            Button(action: {
                                buttonDisabled8.toggle()
                                buttonDisabled1 = true
                                buttonDisabled2 = true
                                buttonDisabled3 = true
                                buttonDisabled4 = true
                                buttonDisabled5 = true
                                buttonDisabled6 = true
                                buttonDisabled7 = true
                                if buttonDisabled8 == true{
                                    select8 = 0
                                }else{
                                    SelectTotal = self.select8
                                }
                                AudioServicesPlaySystemSound(soundIdRing)
                            }, label: {
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color.white)
                                                .frame(width:250, height: 200)
                            })
                            Button(action: {
                                buttonDisabled8.toggle()
                            }, label: {
                                VStack{
                                    Text("洗顔は洗面器で")
                                        .foregroundColor(.black)
                                    Text("24L")
                                        .font(.largeTitle)
                                        .foregroundColor(.black)
                                }
                                        })
                                        .buttonStyle(MyButtonStyle())
                                        .disabled(buttonDisabled8)
                                        .padding()
                        }
                    }
                }
            }
            Button(action: {
                            dismiss()
                //データを合計させたい
                SelectTotalRecord += SelectTotal
                UserDefaults.standard.set(self.SelectTotalRecord,forKey: "SelectTotalRecordData")
                waterData.MonthTotal += SelectTotalRecord
                UserDefaults.standard.set(self.waterData.MonthTotal,forKey: "MonthTotalData")
                
                waterData.price = Int(saveprice) * waterData.MonthTotal/1000
                
                waterData.UntilGoleMount = waterData.GoleMount - waterData.MonthTotal
                
                waterData.AllTotal += SelectTotalRecord
                UserDefaults.standard.set(self.waterData.AllTotal,forKey: "AllTotalData")
                
                
                let waterdataentities = WaterDataEntities(context: viewContext)
                    waterdataentities.alldataattribute = Int32(alldataattirbute)
                alldataattirbute = SelectTotalRecord
                try? viewContext.save()
                print(alldataattirbute)
                        }){
                            ZStack{
                                Color(red:0.441,green:0.719, blue:0.75)
                                    .frame(width:1080,height: 100)
                                Text("きろくする\(alldataattirbute)")
                                    .foregroundColor(.white)
                                    .font(.largeTitle)
                            }
                        }.fullScreenCover(isPresented: $isShowingView){
                        }.offset(y:320)
        }
    }
}
//ボタンを押したら色が変わるためのコード
struct MyButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        MyButton(configuration:configuration)
    }
    
    struct MyButton: View {
        @Environment(\.isEnabled) var isEnabled
        let configuration: MyButtonStyle.Configuration
        var body: some View {
            configuration.label
                .foregroundColor(isEnabled ? .red : .blue)
                .opacity(configuration.isPressed ? 0.2 : 1.0)
                .padding(15)
                .background(isEnabled ? Color.blue.opacity(0.4) : Color.white)
                .cornerRadius(5)
        }
    }
}

struct SelectView_Previews: PreviewProvider {
    static var previews: some View {
        SelectView()
            .previewInterfaceOrientation(.landscapeLeft)
        // ManagedObjectContextを環境変数に設定
            .environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
