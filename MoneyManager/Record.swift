//
//  Record.swift
//  MoneyManager
//
//  Created by William Suryadi Tanil on 12/3/16.
//  Copyright © 2016 William Suryadi Tanil. All rights reserved.
//

import UIKit
import SwiftyJSON

struct RecordStruct {
    
    var id: Int
    var title, currency, note: String?
    var amount: Double?
    var isIncome, isLoan: Bool?
    var date, updateDate: Date?
    
    init(id: Int!) {
        self.id = id
        self.title = nil
        self.currency = nil
        self.note = nil
        self.amount = nil
        self.isIncome = nil
        self.isLoan = nil
        self.date = nil
        self.updateDate = nil
    }
}

class Record {
    
    var recordStruct = [RecordStruct]()
    
    var recordDictionary = [String:[RecordStruct]]()
    
    var recordSection = [String]()
    
    func populate2(from jsonData: [NSDictionary]!) {
        let dateTimeFormatter = DateFormatter()
        dateTimeFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-MM-yyyy"
        
        for item in jsonData {
            
            let stringDateTime = item["date"] as! String
            if let recordDateTime = dateTimeFormatter.date(from: stringDateTime) {
                let stringDate = dateFormatter.string(from: recordDateTime)
                
                if (recordSection.index(of: stringDate) == nil) {
                    
                    recordSection.append(stringDate)
                    recordDictionary[stringDate] = [RecordStruct]()
                    
                }
                
                var record = RecordStruct(id: item["id"] as? Int)
                record.title = item["title"] as? String
                record.currency = item["currency"] as? String
                record.note = item["note"] as? String
                record.amount = item["amount"] as? Double
                record.isIncome = item["is_income"] as? Bool
                record.isLoan = item["is_loan"] as? Bool
                record.date = recordDateTime
                let stringUpdateDate = item["update_date"] as! String
                record.updateDate = dateTimeFormatter.date(from: stringUpdateDate)
                
                recordDictionary[stringDate]?.append(record)
            }
        }
        
        //        print("section: \(recordSection)")
        recordSection = sort(recordSection)
        print("sorted section: \(recordSection)")
        //        print("dictionary: \(recordDictionary)")
    }
    
    func sort(_ stringArray: [String]) -> [String] {
        
        var tempArray = [Date]()
        var resultArray = [String]()
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-MM-yyyy"
        
        for stringDate in stringArray {
            let tempDate = dateFormatter.date(from: stringDate)
            tempArray.append(tempDate!)
            
        }
        
        let sortedArray = tempArray.sorted(by: { $0 < $1 })
        
        for tempDate in sortedArray {
            let stringDate = dateFormatter.string(from: tempDate)
            resultArray.append(stringDate)
        }
        
        return resultArray
        
    }
    
    func description() {
        print("sorted section: \(recordSection)")
        print("dictionary: \(recordDictionary)")
    }
    
    
}
