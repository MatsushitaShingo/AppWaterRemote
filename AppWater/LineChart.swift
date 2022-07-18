//
//  ChartsTest.swift
//  AppWater
//
//  Created by 松下慎吾 on 2022/05/09.
//

import SwiftUI
import Charts
//import CoreData

struct LineChart : UIViewRepresentable {
    
    typealias UIViewType = LineChartView
 
    func makeUIView(context: Context) -> LineChartView {
        let lineChartView = LineChartView()
 
        lineChartView.data = setData()
        
        return lineChartView
    }
    
    func updateUIView(_ uiView: LineChartView, context: Context) {
    }
    
    let yValue:[ChartDataEntry] = [
        ChartDataEntry(x: 1, y: 10.0),
        ChartDataEntry(x: 2, y: 20.0),
        ChartDataEntry(x: 3, y: 100.0),
        ChartDataEntry(x: 4, y: 10.0),
        ChartDataEntry(x: 5, y: 20.0)
    ]
    
    func setData() -> LineChartData{
        let set = LineChartDataSet(entries: yValue, label: "My data")
        let data = LineChartData(dataSet: set)
        
        return data
    }
}

struct LineChart_Previews: PreviewProvider {
    static var previews: some View {
        LineChart()
            .previewInterfaceOrientation(.portraitUpsideDown)
    }
}
