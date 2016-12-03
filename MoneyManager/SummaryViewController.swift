//
//  SummaryViewController.swift
//  MoneyManager
//
//  Created by William Suryadi Tanil on 11/22/16.
//  Copyright © 2016 William Suryadi Tanil. All rights reserved.
//

import UIKit

class SummaryViewController: UIViewController {
    
    
    @IBOutlet weak var todayAllocatedBalanceLabel: UILabel!
    @IBOutlet weak var tomorrowAllocatedBalanceLabel: UILabel!
    @IBOutlet weak var thisWeekAllocatedBalanceLabel: UILabel!
    @IBOutlet weak var thisMonthAllocatedBalanceLabel: UILabel!

    @IBOutlet weak var positiveOutstandingBalanceLabel: UILabel!
    @IBOutlet weak var negativeOutstandingBalanceLabel: UILabel!
    
    @IBOutlet weak var todayAverageUseLabel: UILabel!
    @IBOutlet weak var tomorrowAverageUseLabel: UILabel!
    @IBOutlet weak var thisWeekAverageUseLabel: UILabel!
    @IBOutlet weak var thisMonthAverageUseLabel: UILabel!
    
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
