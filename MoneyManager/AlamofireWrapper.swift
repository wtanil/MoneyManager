//
//  AlamofireWrapper.swift
//  MoneyManager
//
//  Created by William Suryadi Tanil on 12/9/16.
//  Copyright © 2016 William Suryadi Tanil. All rights reserved.
//

import UIKit
import Alamofire

class AlamofireWrapper {
    
    func test() {
        
        let testUrl = "http://ec2-54-218-58-141.us-west-2.compute.amazonaws.com/moneymanager/api/test"
        
        Alamofire.request(testUrl).responseJSON(completionHandler: { response in
            print("Request: \(response.request)")
            print("Response: \(response.response)")
            print("Date: \(response.data)")
            print("Result: \(response.result)")
            
            if let JSON = response.result.value {
                print("JSON: \(JSON)")
            }
            
        })
        
    }
    
}
