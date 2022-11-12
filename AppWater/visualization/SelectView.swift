//
//  SelectView.swift
//  AppWater
//
//  Created by 松下慎吾 on 2022/03/30.

import SwiftUI
import AudioToolbox
//import CoreData

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
    
    var saveprice = 148.5
    
    @State private var scale = false
    
    //contextを使うための処理
    //@Environment(\.managedObjectContext)  var viewContext
//    @State var alldataattirbute = 0

    //データベースよりデータを取得
    //FetchRequestはデータを要求する記述
//    @FetchRequest(
//       sortDescriptors: [])
//    var fetchedwaterdataentities: FetchedResults<WaterDataEntities>
//    @ObservedObject var waterdataentities :WaterDataEntities
    
    
    var body: some View {
        ZStack{
            Color(red:0.754,green:0.887, blue:0.914)
                .ignoresSafeArea()
            
            NavigationLink(destination: ExplainSelect()){
                Image(systemName: "questionmark.circle")
                    .resizable()
                    .frame(width: 40, height: 40)
                }.offset(x:480,y:-320)
            
                //記録するボタンを押すと、record変数の値を保存してVisualizationで値を取り出せる状態にする
                    Text("できたことを1つ選んでね")
                        .foregroundColor(.black)
                        .font(Font.mainFont(size: 40))
                        .offset(y:-360)
            Group{
                ZStack{
                    Button(action: {
                        buttonDisabled1.toggle()
                    }, label: {
                        RoundedRectangle(cornerRadius: 90)
                            .fill(Color.white)
                            .frame(width:120, height: 120)
                    })
                    .buttonStyle(MyButtonStyle())
                    .disabled(buttonDisabled1)
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
                        ZStack{
                            Image("記録歯磨き")//17L
                                .frame(width: 120,height: 120)
                            Text("17L")
                                .font(Font.mainFont(size: 20))
                                .offset(y:55)
                        }
                    })
                }.offset(x:-360,y: 160).scaleEffect(scale ? 1.05 : 1.0)
                    .animation(.easeOut(duration: 4.0).repeatForever(), value: scale)
                
                ZStack{
                    Button(action: {
                        buttonDisabled2.toggle()
                    }, label: {
                        RoundedRectangle(cornerRadius: 90)
                            .fill(Color.white)
                            .frame(width:140, height: 140)
                    })
                    .buttonStyle(MyButtonStyle())
                    .disabled(buttonDisabled2)
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
                        ZStack{
                            Image("記録シャワー")//36L
                                .frame(width:140, height: 140)
                                .offset(y:-15)
                            Text("36L")
                                .font(Font.mainFont(size: 20))
                                .offset(y:70)
                        }
                    })
                }.offset(x:400,y: -90)
                    .scaleEffect(scale ? 1.05 : 1.0)
                    .animation(.easeOut(duration: 3.0).repeatForever(), value: scale)
                
                ZStack{
                    Button(action: {
                        buttonDisabled3.toggle()
                    }, label: {
                        RoundedRectangle(cornerRadius: 90)
                            .fill(Color.white)
                            .frame(width:180, height: 180)
                    })
                    .buttonStyle(MyButtonStyle())
                    .disabled(buttonDisabled3)
                    .padding()
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
                        ZStack{
                            Image("記録残り湯")//55L
                                .frame(width:180, height: 180)
                                .offset(x:24,y:11)
                            Text("55L")
                                .font(Font.mainFont(size: 20))
                                .offset(y:75)
                        }
                    })
                }.offset(x:120,y: 155).scaleEffect(scale ? 1.05 : 1.0)
                    .animation(.easeOut(duration: 3.5).repeatForever(), value: scale)
                
                ZStack{
                    Button(action: {
                        buttonDisabled4.toggle()
                    }, label: {
                        RoundedRectangle(cornerRadius: 90)
                            .fill(Color.white)
                            .frame(width:100, height: 100)
                    })
                    .buttonStyle(MyButtonStyle())
                    .disabled(buttonDisabled4)
                    .padding()
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
                        ZStack{
                            Image("記録トイレ")//10L
                                .frame(width:100, height: 100)
                                .offset(x:29,y:-26)
                            Text("10L")
                                .font(Font.mainFont(size: 20))
                                .offset(y:50)
                        }
                    })
                }.offset(x:250,y: -10)
                    .scaleEffect(scale ? 1.05 : 1.0)
                    .animation(.easeOut(duration: 4.5).repeatForever(), value: scale)
                
                ZStack{
                    Button(action: {
                        buttonDisabled5.toggle()
                    }, label: {
                        RoundedRectangle(cornerRadius: 90)
                            .fill(Color.white)
                            .frame(width:138, height: 138)
                    })
                    .buttonStyle(MyButtonStyle())
                    .disabled(buttonDisabled5)
                    .padding()
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
                        ZStack{
                            Image("記録つけおき")//30L
                                .frame(width:138, height: 138)
                                .offset(x:-4,y:-13)
                            Text("30L")
                                .font(Font.mainFont(size: 20))
                                .offset(y:65)
                        }
                    })
                }.offset(x:20,y: -130).scaleEffect(scale ? 1.05 : 1.0)
                    .animation(.easeOut(duration: 5.0).repeatForever(), value: scale)
                
                ZStack{
                    
                    Button(action: {
                        buttonDisabled6.toggle()
                    }, label: {
                        RoundedRectangle(cornerRadius: 90)
                            .fill(Color.white)
                            .frame(width:175, height: 175)
                    })
                    .buttonStyle(MyButtonStyle())
                    .disabled(buttonDisabled6)
                    .padding()
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
                        ZStack{
                            Image("記録雨水")//50L
                                .frame(width:175, height: 175)
                                .offset(x:7,y:-5)
                            Text("50L")
                                .font(Font.mainFont(size: 20))
                                .offset(y:75)
                        }
                    })
                }.offset(x:-400,y: -80).scaleEffect(scale ? 1.05 : 1.0)
                    .animation(.easeOut(duration: 5.0).repeatForever(), value: scale)
                
                ZStack{
                    
                    Button(action: {
                        buttonDisabled7.toggle()
                    }, label: {
                        RoundedRectangle(cornerRadius: 100)
                            .fill(Color.white)
                            .frame(width:210, height: 210)
                    })
                    .buttonStyle(MyButtonStyle())
                    .disabled(buttonDisabled7)
                    .padding()
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
                        ZStack{
                            Image("記録洗濯")//60L
                                .frame(width:210, height: 210)
                                .offset(x:22,y:-16)
                            Text("60L")
                                .font(Font.mainFont(size: 20))
                                .offset(y:90)
                        }
                    })
                }.offset(x:-150,y:50).scaleEffect(scale ? 1.05 : 1.0)
                    .animation(.easeOut(duration: 6.0).repeatForever(), value: scale)
                
                ZStack{
                    
                    Button(action: {
                        buttonDisabled8.toggle()
                    }, label: {
                        RoundedRectangle(cornerRadius: 90)
                            .fill(Color.white)
                            .frame(width:130, height: 130)
                    })
                    .buttonStyle(MyButtonStyle())
                    .disabled(buttonDisabled8)
                    .padding()
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
                        ZStack{
                            Image("記録おけ")//24L
                                .frame(width:130, height: 130)
                                .offset(x:-15,y:-18)
                            Text("24L")
                                .font(Font.mainFont(size: 20))
                                .offset(y:62)
                        }
                    })
                }.offset(x:340,y: 150).scaleEffect(scale ? 1.05 : 1.0)
                    .animation(.easeOut(duration: 5.5).repeatForever(), value: scale)
            }
            .offset(y:-40)
            .onAppear(){
                self.scale.toggle()
            }
            
            Button(action: {
                dismiss()
                //データを合計させる
                SelectTotalRecord += SelectTotal
//                UserDefaults.standard.set(self.SelectTotalRecord,forKey: "SelectTotalRecordData")
                //毎月のリセットがかかるデータの合計
                waterData.MonthTotal += SelectTotalRecord
                UserDefaults.standard.set(self.waterData.MonthTotal,forKey: "MonthTotalData")
                //毎月のリセットにかからないデータの合計
                waterData.AllTotal += SelectTotalRecord
                UserDefaults.standard.set(self.waterData.AllTotal,forKey: "AllTotalData")
                //値段
                waterData.price = Int(saveprice) * waterData.MonthTotal/1000
                //設定した節水量-現在の月の節水料
                waterData.UntilGoleMount = waterData.GoleMount - waterData.MonthTotal
                
//                let waterdataentities = WaterDataEntities(context: viewContext)
//                    waterdataentities.alldataattribute = Int32(alldataattirbute)
//                alldataattirbute = SelectTotalRecord
//                try? viewContext.save()
//                print(alldataattirbute)
//                データを加える
//                adddata()
                print(waterData.MonthTotal)
                print(waterData.GoleMount)
            }){
                Text("きろくする")
                    .foregroundColor(.white)
                    .font(Font.mainFont(size: 40))
                    .frame(maxWidth: .infinity, minHeight: 100)
                    .background(Color(red:0.441,green:0.719,blue:0.75).ignoresSafeArea(edges: .bottom))
            }.fullScreenCover(isPresented: $isShowingView){
            }.offset(y:320)
        }.customBackButton()
    }
//    func adddata(){
//        let newdata = WaterDataEntities(context: viewContext)
//        newdata.alldataattribute = Int32(SelectTotalRecord)
//        do{
//            try viewContext.save()
//        } catch {
//            let nsError = error as NSError
//            fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
//        }
//    }
}


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
                .cornerRadius(150)
        }
    }
}

struct SelectView_Previews: PreviewProvider {
    static var previews: some View {
        SelectView()
            .previewInterfaceOrientation(.landscapeLeft)
        // ManagedObjectContextを環境変数に設定(preview用)
            .environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
