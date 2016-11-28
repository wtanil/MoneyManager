//
//  ViewDetailsViewController.swift
//  MoneyManager
//
//  Created by William Suryadi Tanil on 11/28/16.
//  Copyright © 2016 William Suryadi Tanil. All rights reserved.
//

import UIKit

class ViewDetailsViewController: UIViewController {
    
    @IBOutlet weak var dateAndTimeLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var amountLabel: UILabel!
    @IBOutlet weak var isIncomeLabel: UILabel!
    @IBOutlet weak var isLoanLabel: UILabel!
    @IBOutlet weak var noteTextView: UITextView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
