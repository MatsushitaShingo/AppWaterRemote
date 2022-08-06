////
////  DataList.swift
////  AppWater
////
////  Created by 松下慎吾 on 2022/07/31.
////
//
//import SwiftUI
//import CoreData
//
//struct DataList: View {
//    @FetchRequest(
//       sortDescriptors: [])
//    var fetchedwaterdataentities: FetchedResults<WaterDataEntities>
//    
//    var body: some View {
//        List{
//            ForEach(fetchedwaterdataentities){
//                fetchedwaterdataentitie in
//                Text("\(fetchedwaterdataentitie.alldataattribute)")
//            }
//        }
//    }
//}
//
//struct DataList_Previews: PreviewProvider {
//    static var previews: some View {
//        DataList()
//        // ManagedObjectContextを環境変数に設定(preview用)
//            .environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
//    }
//}
