//
//  WaterData+CoreDataProperties.swift
//  
//
//  Created by 松下慎吾 on 2022/05/23.
//
//

import Foundation
import CoreData


extension WaterData {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<WaterData> {
        return NSFetchRequest<WaterData>(entityName: "WaterData")
    }


}
