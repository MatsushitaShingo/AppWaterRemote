////
////  ChartsTest.swift
////  AppWater
////
////  Created by 松下慎吾 on 2022/05/09.
////
//
//import SwiftUI
//import Charts
//import CoreData
//
//struct contentview: View {
//    
//    @StateObject var viewModel = ViewModel()
//    @FetchRequest(entity: WaterDataEntities.entity(), sortDescriptors: [NSSortDescriptor(key: "date", ascending: true)],animation: .spring()) var results : FetchedResults<WaterDataEntities>
//    @Environment(\.managedObjectContext) var context
//    
//    @EnvironmentObject var waterData: WaterData
//    
//    @State var progress: CGFloat = 0.5
//    @State var startAnimation:CGFloat = 0
//    
//    var body: some View {
//        ZStack{
//            Color(red:0.754,green:0.887, blue:0.914)
//                .ignoresSafeArea()
//            
//            VStack(spacing:0){
//                HStack{
//                    Text("節水記録")
//                        .font(.largeTitle)
//                        .fontWeight(.heavy)
//                        .foregroundColor(.black)
//                    Spacer(minLength: 0)
//                }
//                .padding()
//                
//                //CoreDataのデータが無い場合の表示
//                if results.isEmpty{
//                    Spacer()
//                    Text("No Data")
//                        .font(.title)
//                        .foregroundColor(.primary)
//                        .fontWeight(.heavy)
//                    Spacer()
//                }else{
////                    //データをチャートで表示
////                    LineChart()
////                        .frame(height: 440)
//                    
//                    //データを数字で表示
//                    ScrollView(.vertical,showsIndicators: false, content:{
//                        
//                        LazyVStack(alignment: .leading, spacing: 20){
//                            
//                            ForEach(results){data in
//                                VStack(alignment: .leading, spacing: 5, content: {
//                                    Text(String(data.alldataattribute))
//                                        .font(.title)
//                                        .fontWeight(.bold)
//                                    Text(data.date ?? Date(),style: .date)
//                                        .fontWeight(.bold)
//                                    Divider()
//                                })
//                                .foregroundColor(.primary)
//                                //更新、削除を行う。編集の場合は、ViewModelクラスの編集用のメソッドを呼ぶ
//                                .contextMenu{
////                                    Button(action: {
////                                        viewModel.EditItem(item: data)
////                                    }, label: {
////                                        Text("Edit")
////                                    })
//                                    Button(action: {
//                                        context.delete(data)
//                                        try! context.save()
//                                    }, label: {
//                                        Text("削除")
//                                    })
//                                }
//                            }
//                        }
//                    }).padding().padding()
//                }
//                HStack{
//                    ZStack{
//                        Color.white
//                            .frame(width:700,height: 220)
//                            .cornerRadius(30)
//                        Text("〇〇日連続で出来てます！\nこの調子で頑張りましょう！")
//                        .foregroundColor(Color(red:0.441,green:0.719, blue:0.75))
//                        .font(Font.mainFont(size: 40))
//                            .bold()
//                            .padding()
//                            .padding()
//                            .frame(width:700,height: 220)
//                            .overlay(RoundedRectangle(cornerRadius: 30)
//                                .stroke(Color(red:0.923,green:0.742, blue:0.402),lineWidth:8)
//                                .shadow(color: .gray, radius: 3, x: 3, y: 3)
//                            )
//                        
//                    }
//                    VStack{
//                        Text("目標\(Int(waterData.GoleMount))Lまで...")
//                            .font(Font.mainFont(size: 28))
//                            .bold()
//                        ZStack{
//                            Circle()
//                                .fill(Color(red:0.441,green:0.719, blue:0.75))
//                                .frame(width:200,height: 200)
//                            
//                            Circle()
//                                .fill(Color.white)
//                                .frame(width:180,height: 180)
//                            
//                            Waterwave(progress: progress, waveHeght: 0.1, offset: startAnimation)
//                                .fill(Color(red:0.754,green:0.887, blue:0.914))
//                                .clipShape(Circle())
//                                .frame(width:180,height: 180)
//                            
//                            Text("\(Int(waterData.MonthTotal*100/waterData.GoleMount))%")
//                                .font(Font.mainFont(size: 40))
//                                .bold()
//                        }
//                    }
//                }
//                
//            }.offset(y:-50).frame(height: 700)
//                //新規データ登録としてSheetを表示し、登録を行う。
//                Button(action: {viewModel.isNewData.toggle()}, label: {
//                    Image(systemName: "plus")
//                        .font(.largeTitle)
//                        .foregroundColor(.white)
//                        .padding(20)
//                        .background(Color.green)
//                        .clipShape(Circle())
//                }).offset(x: 430, y: -300)
//                .padding()
//        }
//        .sheet(isPresented: $viewModel.isNewData, content: {
//            Sheet(viewModel: viewModel)
//        })
//    }
//}
//
////データをチャート化する
//struct LineChart : UIViewRepresentable {
//    var alldataattributeData:FetchedResults<WaterDataEntities>
//    var alldataattributes:[Double] = []
//        
//        init(alldataattributeData:FetchedResults<WaterDataEntities>) {
//            self.alldataattributeData = alldataattributeData
//            
//            let startDate = self.alldataattributeData[self.alldataattributeData.startIndex].date
//            let today = Date()
//            
//            let calendar = Calendar(identifier: .gregorian)
//            
//            let startDateDC = Calendar.current.dateComponents([.year, .month, .day, .hour], from: startDate!)
//            let todayDC = Calendar.current.dateComponents([.year, .month, .day, .hour], from: today)
//     
//            let startDateYMD = calendar.date(from: DateComponents(year: startDateDC.year, month: startDateDC.month, day: startDateDC.day, hour: startDateDC.hour!))
//            let todayYMD = calendar.date(from: DateComponents(year: todayDC.year, month: todayDC.month, day: todayDC.day,hour: todayDC.hour!))
//     
//            let progressDays = calendar.dateComponents([.day], from: startDateYMD!, to: todayYMD!).day
//            
//            var counter = 0
//            for count in (0..<progressDays!){
//                let shotDate = self.alldataattributeData[counter].date!
//                let shotDateDC = Calendar.current.dateComponents([.year, .month, .day,], from: shotDate)
//                let compareDate = Calendar.current.date(byAdding: .day, value: count, to: self.alldataattributeData[0].date!)!
//     
//                let compareDateDC = Calendar.current.dateComponents([.year, .month, .day,], from: compareDate)
//                
//                if (shotDateDC.year! == compareDateDC.year!) && (shotDateDC.month! == compareDateDC.month!) && (shotDateDC.day! == compareDateDC.day!) {
//                    alldataattributes.append(Double(self.alldataattributeData[counter].alldataattribute))
//                    if counter < self.alldataattributeData.count - 1{
//                        counter += 1
//                    }
//                }else{
//                    alldataattributes.append(0.0)
//                }
//            }
//        }
//    
//    typealias UIViewType = LineChartView
//
//    func makeUIView(context: Context) -> LineChartView {
//            let lineChartView = LineChartView()
//        //lineChartView にデータを追加
//            lineChartView.data = setData()
//            
//            lineChartView.backgroundColor = .lightGray //バックグラウンドカラーの変更
//            lineChartView.data!.setValueFont(.systemFont(ofSize: 20, weight: .light)) //データのフォントサイズとウエイトの変更
//            lineChartView.data!.setValueTextColor(.white)
//            lineChartView.data!.setDrawValues(true) //データの値表示（falseに設定すると非表示）
//            lineChartView.rightAxis.enabled = false //右側のX軸非表示
//            lineChartView.animate(xAxisDuration: 2.5) //表示の際のアニメーション効果（この場合はX軸方法で2.5秒）
//            
//            //Y軸表示の設定
//            let yAxis = lineChartView.leftAxis // lineChartView.leftAxisを変数で定義
//            yAxis.labelFont = .boldSystemFont(ofSize: 12) //Y軸単位のフォントサイズ
//            yAxis.setLabelCount(5, force: true) //Y軸の表示罫線数（falseにすると指定無し）
//            yAxis.labelTextColor = .white //Y軸単位のテキストカラー
//            yAxis.axisLineColor = .white //Y軸単位の軸のカラー
//            yAxis.labelPosition = .outsideChart //Y軸単位のポジション(.insideChartにすると内側で表示)
//            
//            //X軸表示の設定
//            let xAxis = lineChartView.xAxis // lineChartView.xAxisを変数で定義
//            xAxis.labelPosition = .bottom //X軸単位のポジション(下部に表示)
//            xAxis.labelFont = .boldSystemFont(ofSize: 12)
//            xAxis.setLabelCount(5, force: true)
//            xAxis.labelTextColor = .white
//            xAxis.axisLineColor = .white
//        
//        xAxis.granularity = 1.0 //X軸の表示単位を1.0ごとにする
//        
//        //setDataのグラフの始まりの日付の指定も、CoreDataのデータを利用する
//        let formatter = DateValueFormatter(startDate: alldataattributeData[0].date!)
//                xAxis.valueFormatter = formatter
//            
//            return lineChartView
//        }
//    
//    func updateUIView(_ uiView: LineChartView, context: Context) {
// 
//    }
//    
////    let yValue:[ChartDataEntry] = [
////        ChartDataEntry(x: 1, y: 10.0),
////        ChartDataEntry(x: 2, y: 20.0),
////        ChartDataEntry(x: 3, y: 30.0),
////        ChartDataEntry(x: 4, y: 40.0),
////        ChartDataEntry(x: 5, y: 20.0)
////    ]
//    //LineChartViewに表示するデータをLineChartData型で渡すメソッド
//    func setData() -> LineChartData{
//        
//        let dataPoint = getDataPoints(accuracy: alldataattributes)
//        
//            let set = LineChartDataSet(entries: dataPoint, label: "My data")
//            let data = LineChartData(dataSet: set)
//            
//            set.mode = .cubicBezier //線表示を曲線で表示
//            set.drawCirclesEnabled = false //各データを丸記号表示を非表示
//            set.lineWidth = 1.5 //線の太さの指定
//            set.setColor(NSUIColor.blue) //線の色の指定
////            set.fill = Fill(color: .white) //塗りつぶし色の指定
//            set.fillAlpha = 0.5 //塗りつぶし色の不透明度指定
//            set.drawFilledEnabled = true //値の塗りつぶし表示
//        // set.mode = .cubicBezier 線表示を曲線で表示
//                set.mode = .horizontalBezier
//            
//            return data
//        }
//}
//
////温度の値の配列のデータでグラフ表示に対応
//func getDataPoints(accuracy: [Double]) -> [ChartDataEntry] {
//        var dataPoints: [ChartDataEntry] = []
//        
//        for count in (0..<accuracy.count) {
//            dataPoints.append(ChartDataEntry(x: Double(count), y: accuracy[count]))
//        }
//        return dataPoints
//    }
//
////グラフの素データの要素数を日付に変換するために、IAxisValueFormatter クラスを継承するクラス
//class DateValueFormatter: NSObject, AxisValueFormatter {
// 
//    let dateFormatter = DateFormatter()
//    var startDate:Date
// 
//    init(startDate:Date) {
//        self.startDate = startDate
//    }
// 
//    public func stringForValue(_ value: Double, axis: AxisBase?) -> String {
//        let modifiedDate = Calendar.current.date(byAdding: .day, value: Int(value), to: startDate )!
//        dateFormatter.dateFormat = "M/d"
//        return dateFormatter.string(from: modifiedDate)
//    }
//}
//
//class ViewModel : ObservableObject{
//    @Published var alldataattribute = 0.0
//    @Published var date = Date()
//    @Published var isNewData = false
//    @Published var updateItem : WaterDataEntities!
//    
//    //データ登録、編集時のメソッド。新規登録として呼ばれた場合は、If文より下のコードが利用されCoreDataへデータが書き込まれる。
//    func writeData(context : NSManagedObjectContext ){
//        
//        if updateItem != nil{
//            updateItem.date = date
//            updateItem.alldataattribute = alldataattribute
//            try! context.save()
//            
//            updateItem = nil
//            isNewData.toggle()
//            alldataattribute = 0
//            date = Date()
//            return
//        }
//        
//        let newData = WaterDataEntities(context: context)
//        newData.date = date
//        newData.alldataattribute = alldataattribute
//        
//        do{
//            try context.save()
//            isNewData.toggle()
//            alldataattribute = 0
//            date = Date()
//        }
//        catch{
//            print(error.localizedDescription)
//        }
//    }
//    //データ編集用のメソッド。すでに登録されているデータを編集するために利用する。
//    func EditItem(item:WaterDataEntities){
//        updateItem = item
//        
//        date = item.date!
//        alldataattribute = item.alldataattribute
//        isNewData.toggle()
//    }
//}
////
//////データの登録を行うビュー
//struct Sheet: View {
//    @ObservedObject var viewModel : ViewModel
//    @Environment(\.managedObjectContext) var context
//    
//    var body: some View {
//        VStack{
//            HStack{
//                //Sheetを表示する際に、編集用のデータがあるかないかで、Sheetのタイトル、書き込み用のボタンのラベル名を変更する。
//                Text("\(viewModel.updateItem == nil ? "Add New" : "Update") Data")
//                    .font(.title)
//                    .fontWeight(.heavy)
//                    .foregroundColor(.primary)
//            }
//            .padding()
//            //CoreDataへ登録する
//            TextField("", value: $viewModel.alldataattribute, formatter: NumberFormatter())
//                .padding()
//            Divider()
//                .padding(.horizontal)
//            HStack{
//                Text("日付")
//                    .font(.title)
//                    .fontWeight(.bold)
//                    .foregroundColor(.primary)
//            }
//            .padding()
//            //CoreDataへ登録する
//                DatePicker("", selection:$viewModel.date, displayedComponents:.date)//日付も使用する場合は”displayedComponents:.date”をなくす
//                    .labelsHidden()
//        
//            Button(action: {viewModel.writeData(context: context)}, label: {
//                Label(title:{Text(viewModel.updateItem == nil ? "きろく！" : "Update")
//                    .font(.title)
//                    .foregroundColor(.white)
//                    .fontWeight(.bold)
//                },
//                icon: {Image(systemName: "plus")
//                    .font(.title)
//                    .foregroundColor(.white)
//                })
//                .padding(.vertical)
//                .frame(width:UIScreen.main.bounds.width - 30)
//                .background(Color.orange)
//                .cornerRadius(50)
//            })
//            .padding()
//        }
//        .background(Color.primary.opacity(0.06).ignoresSafeArea(.all, edges: .bottom))
//    }
//}
//
//struct LineChart_Previews: PreviewProvider {
//    static var previews: some View {
//        contentview()
//        // ManagedObjectContextを環境変数に設定(preview用)
//            .environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
//            .previewInterfaceOrientation(.landscapeRight)
//    }
//}
