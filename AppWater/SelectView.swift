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
    @State fileprivate var select1 = 1
    @State fileprivate var select2 = 5
    @State fileprivate var select3 = 10
    @State fileprivate var select4 = 50
    @State fileprivate var select5 = 100
    @State fileprivate var select6 = 500
    @State fileprivate var select7 = 1000
    @State fileprivate var select8 = 5000
    @Environment(\.dismiss) var dismiss
    let userdefaults = UserDefaults.standard
    @State private var buttonDisabled:Bool = true
    
    var body: some View {
        
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
                                Color.blue
                                    .frame(width:110,height: 110)
                                Text("記録する")
                                    .foregroundColor(.red)
                            }
                        }.fullScreenCover(isPresented: $isShowingView){
                        }.offset(y:-100)
            VStack{
                HStack{
                    ZStack{
                        Button(action: {
                            buttonDisabled.toggle()
                        }, label: {
                                        Text("トイレ")
                                    })
                                    .buttonStyle(MyButtonStyle())
                                    .disabled(buttonDisabled)
                                    .padding()
                        Button(action: {
                            buttonDisabled.toggle()
                            SelectTotal = self.SelectTotalRecord + self.select1
                        }, label: {
                            Text("　　")
                        })
                    }
                    
                    ZStack{
                        Button(action: {buttonDisabled.toggle()}, label: {
                                        Text("お風呂")
                                    })
                                    .buttonStyle(MyButtonStyle())
                                    .disabled(buttonDisabled)
                                    .padding()
                        Button(action: {
                            buttonDisabled.toggle()
                            SelectTotal = self.SelectTotalRecord + self.select2
                        }, label: {
                            Text("　　")
                        })
                    }
                    ZStack{
                        Button(action: {buttonDisabled.toggle()}, label: {
                                        Text("シャワ")
                                    })
                                    .buttonStyle(MyButtonStyle())
                                    .disabled(buttonDisabled)
                                    .padding()
                        Button(action: {
                            buttonDisabled.toggle()
                            SelectTotal = self.SelectTotalRecord + self.select3
                        }, label: {
                            Text("　　")
                        })
                    }
                    ZStack{
                        Button(action: {buttonDisabled.toggle()}, label: {
                                        Text("節水あ")
                                    })
                                    .buttonStyle(MyButtonStyle())
                                    .disabled(buttonDisabled)
                                    .padding()
                        Button(action: {
                            buttonDisabled.toggle()
                            SelectTotal = self.SelectTotalRecord + self.select4
                        }, label: {
                            Text("　　")
                        })
                    }
                }
                HStack{
                    ZStack{
                        Button(action: {buttonDisabled.toggle()}, label: {
                                        Text("水撒き")
                                    })
                                    .buttonStyle(MyButtonStyle())
                                    .disabled(buttonDisabled)
                                    .padding()
                        Button(action: {
                            buttonDisabled.toggle()
                            SelectTotal = self.SelectTotalRecord + self.select5
                        }, label: {
                            Text("　　")
                        })
                    }
                    ZStack{
                        Button(action: {buttonDisabled.toggle()}, label: {
                                        Text("洗がん")
                                    })
                                    .buttonStyle(MyButtonStyle())
                                    .disabled(buttonDisabled)
                                    .padding()
                        Button(action: {
                            buttonDisabled.toggle()
                            SelectTotal = self.SelectTotalRecord + self.select6
                        }, label: {
                            Text("　　")
                        })
                    }
                    ZStack{
                        Button(action: {buttonDisabled.toggle()}, label: {
                                        Text("歯磨き")
                                    })
                                    .buttonStyle(MyButtonStyle())
                                    .disabled(buttonDisabled)
                                    .padding()
                        Button(action: {
                            buttonDisabled.toggle()
                            SelectTotal = self.SelectTotalRecord + self.select7
                        }, label: {
                            Text("　　")
                        })
                    }
                    ZStack{
                        Button(action: {buttonDisabled.toggle()}, label: {
                                        Text("みず巻")
                                    })
                                    .buttonStyle(MyButtonStyle())
                                    .disabled(buttonDisabled)
                                    .padding()
                        Button(action: {
                            buttonDisabled.toggle()
                            SelectTotal = self.SelectTotalRecord + self.select8
                        }, label: {
                            Text("　　")
                        })
                    }
                }
            }
//                HStack{
//                    Button{
//                        record = self.finalrecord + self.select1
//                    }label: {
//                        Text("トイレ")
//                            .foregroundColor(.red)
//                            .font(.largeTitle)
//                            .background(Circle()
//                                .fill(Color.gray)
//                                .frame(width:80, height:80))
//                    }
//                    Button{
//                        record = self.finalrecord + self.select2
//                    }label: {
//                        Text("お風呂")
//                            .foregroundColor(.red)
//                            .font(.largeTitle)
//                            .background(Circle()
//                                .fill(Color.gray)
//                                .frame(width:80, height:80))
//                    }
//                    Button{
//                        record = self.finalrecord + self.select3
//                    }label: {
//                        Text("シャワ")
//                            .foregroundColor(.red)
//                            .font(.largeTitle)
//                            .background(Circle()
//                                .fill(Color.gray)
//                                .frame(width:80, height:80))
//                    }
//                    Button{
//                        record = self.finalrecord + self.select4
//                    }label: {
//                        Text("歯磨き")
//                            .foregroundColor(.red)
//                            .font(.largeTitle)
//                            .background(Circle()
//                                .fill(Color.gray)
//                                .frame(width:80, height:80))
//                    }
//                }.offset(y:-50)
//                HStack{
//                    Button{
//                        record = self.finalrecord + self.select5
//                    }label: {
//                        Text("洗顔ー")
//                            .foregroundColor(.red)
//                            .font(.largeTitle)
//                            .background(Circle()
//                                .fill(Color.gray)
//                                .frame(width:80, height:80))
//                    }
//                    Button{
//                        record = self.finalrecord + self.select6
//                    }label: {
//                        Text("水まき")
//                            .foregroundColor(.red)
//                            .font(.largeTitle)
//                            .background(Circle()
//                                .fill(Color.gray)
//                                .frame(width:80, height:80))
//                    }
//                    Button{
//                        record = self.finalrecord + self.select7
//                    }label: {
//                        Text("お風呂")
//                            .foregroundColor(.red)
//                            .font(.largeTitle)
//                            .background(Circle()
//                                .fill(Color.gray)
//                                .frame(width:80, height:80))
//                    }
//                    Button{
//                        record = self.finalrecord + self.select8
//                    }label: {
//                        Text("トイレ")
//                            .foregroundColor(.red)
//                            .font(.largeTitle)
//                            .background(Circle()
//                                .fill(Color.gray)
//                                .frame(width:80, height:80))
//                    }
//                }
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
                .background(isEnabled ? Color.blue.opacity(0.4) : Color.gray)
                .cornerRadius(10)
        }
    }
}

struct SelectView_Previews: PreviewProvider {
    static var previews: some View {
        SelectView()
        //日本語として表示する
            .environment(\.locale, Locale(identifier: "ja_JP"))
            .previewInterfaceOrientation(.landscapeLeft)

    }
}
