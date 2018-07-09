//
//  Document+CoreDataClass.swift
//  Documents Core Data
//
//  Created by Dale Musser on 7/9/18.
//  Copyright © 2018 Dale Musser. All rights reserved.
//
//

import UIKit
import CoreData

@objc(Document)
public class Document: NSManagedObject {
    var modifiedDate: Date? {
        get {
            return rawModifiedDate as Date?
        }
        set {
            rawModifiedDate = newValue as NSDate?
        }
    }
    
    convenience init?(name: String?, size: UInt32) {
        let appDelegate = UIApplication.shared.delegate as? AppDelegate  //UIKit is needed to access UIApplication
        guard let managedContext = appDelegate?.persistentContainer.viewContext,
              let name = name else {
            return nil
        }
        self.init(entity: Document.entity(), insertInto: managedContext)
        self.name = name
        self.modifiedDate = Date(timeIntervalSinceNow: 0)
    }
}
