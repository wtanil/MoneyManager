//
//  ViewTableViewController.swift
//  MoneyManager
//
//  Created by William Suryadi Tanil on 11/22/16.
//  Copyright © 2016 William Suryadi Tanil. All rights reserved.
//

import UIKit
import Alamofire

class ViewTableViewController: UITableViewController {
    
    let record = Record()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        print("inside");
        
        Alamofire.request("http://ec2-54-218-58-141.us-west-2.compute.amazonaws.com/moneymanager/api/v1/user/1/records").responseJSON { response in
            print(response.request ?? "request")  // original URL request
            print(response.response ?? "response") // HTTP URL response
            print(response.data  ?? "data")     // server data
            print(response.result)   // result of response serialization
            
            if let responseValue = response.result.value  {
                
                print("response value: \(responseValue)")
                
                if let jsonData = responseValue as? [NSDictionary] {
                    _ = self.record.populate2(from: jsonData)
                    
                    
                    self.tableView.reloadData()
                }
                
            } else {
                print("JSON ERROR");
            }
        }
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return record.recordSection.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (record.recordDictionary[record.recordSection[section]]?.count)!
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: ViewTableViewCell = tableView.dequeueReusableCell(withIdentifier: "ViewTableCell1", for: indexPath) as! ViewTableViewCell
        
        let sectionRecord = record.recordSection[indexPath.section]
        
        let rowRecord = record.recordDictionary[sectionRecord]![indexPath.row]
        
        let testasd = DateFormatter()
        testasd.dateFormat = "HH:mm"
        
        cell.timeLabel.text = testasd.string(from: rowRecord.date!)
        cell.titleLabel.text = rowRecord.title
        cell.amountLabel.text = "\(rowRecord.currency!) \(rowRecord.amount!)"
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return record.recordSection[section]
    }
    
    
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
