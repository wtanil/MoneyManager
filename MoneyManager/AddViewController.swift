//
//  AddViewController.swift
//  MoneyManager
//
//  Created by William Suryadi Tanil on 11/22/16.
//  Copyright © 2016 William Suryadi Tanil. All rights reserved.
//

import UIKit


class AddViewController: UIViewController {
    
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var currencyTextField: UITextField!
    @IBOutlet weak var amountTextField: UITextField!
    @IBAction func isIncome(_ sender: Any) {
    }
    @IBAction func isLoan(_ sender: Any) {
    }
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBOutlet weak var noteTextView: UITextView!
    @IBAction func fileUploadAction(_ sender: Any) {
    }
    @IBOutlet weak var fileUploadButton: UIButton!
    @IBAction func submitAction(_ sender: Any) {
    }
    @IBOutlet weak var submitButton: UIButton!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
//        let testRecord = RecordWrapper(id: 1, title: "test", currency: "", note: "", amount: 123.123, isIncome: true, isLoan: true, date: Date(timeIntervalSinceNow: 60))
//        
//        print("first test \(testRecord.title)")
//        
//        testRecord.title = "not test"
//        
//        print("second test \(testRecord.title)")
//        
//        print("test \0 a \\ b \t c \n d \r e 'f'")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
