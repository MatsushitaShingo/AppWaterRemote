//
//  SelectView.swift
//  AppWater
//
//  Created by 松下慎吾 on 2022/03/30.
//

import SwiftUI

struct SelectView:View{
    
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
    @State private var buttonDisabled7: Bool = true
    @State private var buttonDisabled8 : Bool = true
    
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.white, .yellow]), startPoint: .top, endPoint: .bottom)
                             .ignoresSafeArea()
            VStack{
                //記録するボタンを押すと、record変数の値を保存してVisualizationで値を取り出せる状態にする
                Button(action: {
                                dismiss()
                                UserDefaults.standard.set(self.SelectTotal,forKey: "RecordData")
                    //データを合計させたい
                self.SelectTotalRecord = self.select1+self.select2+self.select3+self.select4+self.select5+self.select6+self.select7+self.select8
                UserDefaults.standard.set(SelectTotalRecord,forKey: "FinalRecordData")
                
                            }){
                                ZStack{
                                    Color.green
                                        .frame(width:110,height: 110)
                                    Text("節水した！")
                                        .foregroundColor(.red)
                                }
                            }.fullScreenCover(isPresented: $isShowingView){
                            }.offset(y:-100)
                VStack{
                    HStack{
                        ZStack{
                            Button(action: {
                                buttonDisabled1.toggle()
                                buttonDisabled2 = true
                                buttonDisabled3 = true
                                buttonDisabled4 = true
                                buttonDisabled5 = true
                                buttonDisabled6 = true
                                buttonDisabled7 = true
                                buttonDisabled8 = true
                                SelectTotal = self.SelectTotalRecord + self.select1
                            }, label: {
                                RoundedRectangle(cornerRadius: 30)
                                    .fill(Color.gray)
                                                .frame(width:250, height: 200)
                            })
                            Button(action: {
                                buttonDisabled1.toggle()
                            }, label: {
                                VStack{
                                    Text("歯磨きはコップの水で")
                                    Text("17")
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
                                SelectTotal = self.SelectTotalRecord + self.select2
                            }, label: {
                                RoundedRectangle(cornerRadius: 30)
                                    .fill(Color.gray)
                                                .frame(width:250, height: 200)
                            })
                            Button(action: {
                                buttonDisabled2.toggle()
                            }, label: {
                                VStack{
                                    Text("シャワーはこまめに")
                                    Text("36")
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
                                SelectTotal = self.SelectTotalRecord + self.select3
                            }, label: {
                                RoundedRectangle(cornerRadius: 30)
                                    .fill(Color.gray)
                                                .frame(width:250, height: 200)
                            })
                            Button(action: {
                                buttonDisabled3.toggle()
                            }, label: {
                                VStack{
                                    Text("風呂水は選択に使う")
                                    Text("55")
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
                                SelectTotal = self.SelectTotalRecord + self.select4
                            }, label: {
                                RoundedRectangle(cornerRadius: 30)
                                    .fill(Color.gray)
                                                .frame(width:250, height: 200)
                            })
                            Button(action: {
                                buttonDisabled4.toggle()
                            }, label: {
                                VStack{
                                    Text("トイレは一回で流す")
                                    Text("10")
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
                                SelectTotal = self.SelectTotalRecord + self.select5
                            }, label: {
                                RoundedRectangle(cornerRadius: 30)
                                    .fill(Color.gray)
                                                .frame(width:250, height: 200)
                            })
                            Button(action: {
                                buttonDisabled5.toggle()
                            }, label: {
                                VStack{
                                    Text("食器はつけおき洗い")
                                    Text("30")
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
                                SelectTotal = self.SelectTotalRecord + self.select6
                            }, label: {
                                RoundedRectangle(cornerRadius: 30)
                                    .fill(Color.gray)
                                                .frame(width:250, height: 200)
                            })
                            Button(action: {
                                buttonDisabled6.toggle()
                            }, label: {
                                VStack{
                                    Text("雨水を有効活用")
                                    Text("")
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
                                SelectTotal = self.SelectTotalRecord + self.select7
                            }, label: {
                                RoundedRectangle(cornerRadius: 30)
                                    .fill(Color.gray)
                                                .frame(width:250, height: 200)
                            })
                            Button(action: {
                                buttonDisabled7.toggle()
                            }, label: {
                                VStack{
                                    Text("洗濯はまとめ洗い")
                                    Text("60")
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
                                SelectTotal = self.SelectTotalRecord + self.select8
                            }, label: {
                                RoundedRectangle(cornerRadius: 30)
                                    .fill(Color.gray)
                                                .frame(width:250, height: 200)
                            })
                            Button(action: {
                                buttonDisabled8.toggle()
                            }, label: {
                                VStack{
                                    Text("洗顔は洗面器で")
                                    Text("24")
                                }
                                        })
                                        .buttonStyle(MyButtonStyle())
                                        .disabled(buttonDisabled8)
                                        .padding()
                        }
                    }
                }
            }
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
                .foregroundColor(isEnabled ? .blue : .red)
                .opacity(configuration.isPressed ? 0.2 : 1.0)
                .padding(15)
                .background(isEnabled ? Color.blue.opacity(0.4) : Color.white)
                .cornerRadius(10)
        }
    }
}

struct SelectView_Previews: PreviewProvider {
    static var previews: some View {
        SelectView()
        
            .previewInterfaceOrientation(.landscapeLeft)

    }
}
