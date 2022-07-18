//
//  WaterData+CoreDataProperties.swift
//  
//
//  Created by 松下慎吾 on 2022/05/23.
//
//

import Foundation
import CoreData

//エンティティの属性情報を定義するファイル
extension WaterDataEntities {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<WaterDataEntities> {
        return NSFetchRequest<WaterDataEntities>(entityName: "WaterDataEntities")
    }
    @NSManaged public var alldataattribute:Int32?

}
