//
//  ChartsTest.swift
//  AppWater
//
//  Created by 松下慎吾 on 2022/11/17.
//

import SwiftUI
import Charts

struct ChartsTest: View {
    var stackedBarData: [ToyShape] = [
            .init(color: "Green", type: "Cube", count: 2),
            .init(color: "Green", type: "Sphere", count: 0),
            .init(color: "Green", type: "Pyramid", count: 1),
            .init(color: "Purple", type: "Cube", count: 1),
            .init(color: "Purple", type: "Sphere", count: 1),
            .init(color: "Purple", type: "Pyramid", count: 1),
            .init(color: "Pink", type: "Cube", count: 1),
            .init(color: "Pink", type: "Sphere", count: 2),
            .init(color: "Pink", type: "Pyramid", count: 0),
            .init(color: "Yellow", type: "Cube", count: 1),
            .init(color: "Yellow", type: "Sphere", count: 1),
            .init(color: "Yellow", type: "Pyramid", count: 2)
        ]
    struct SampleData: Identifiable {
        var id: String { name }
        let name: String
        let amount: Double
        let from: String
    }
    let sampleData: [SampleData] = [
        .init(name: "NameA", amount: 2500, from: "PlaceA"),
        .init(name: "NameB", amount: 3500, from: "PlaceA"),
        .init(name: "NameC", amount: 2000, from: "PlaceA"),
        .init(name: "NameD", amount: 4500, from: "PlaceA"),
        .init(name: "NameE", amount: 5000,from: "PlaceA"),
        .init(name: "NameF", amount: 5500,from: "PlaceA"),
        .init(name: "NameA", amount: 360, from: "PlaceB"),
        .init(name: "NameB", amount: 640, from: "PlaceB"),
        .init(name: "NameC", amount: 680, from: "PlaceB"),
        .init(name: "NameD", amount: 760, from: "PlaceB"),
        .init(name: "NameE", amount: 780, from: "PlaceB"),
        .init(name: "NameF", amount: 800, from: "PlaceB")
    ]
        var body: some View {
            Chart(sampleData) { data in
                       LineMark(
                           x: .value("Name", data.name),
                           y: .value("Amount", data.amount)
                       )
                       .foregroundStyle(by: .value("Form", data.from))
                       .lineStyle(StrokeStyle(lineWidth: 1))
                   }
                   .frame(height: 300)
                   .padding()
        }
}

struct ChartsTest_Previews: PreviewProvider {
    static var previews: some View {
        ChartsTest()
    }
}

struct ToyShape: Identifiable {
    var color: String
    var type: String
    var count: Double
    var id = UUID()
}
