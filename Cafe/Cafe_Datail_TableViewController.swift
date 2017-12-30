//
//  Cafe_Datail_TableViewController.swift
//  CoffeeShop
//
//  Created by Alex Hsieh on 2017/12/14.
//  Copyright © 2017年 Alex Hsieh. All rights reserved.
//

import UIKit


class Cafe_Datail_TableViewController: UITableViewController {

    var CafeDetail: cafe?
    var OrangeColor = UIColor.init(red: 255/255, green: 193/255, blue: 8/255, alpha: 1)
    var BlueColor = UIColor.init(red: 32/255, green: 150/255, blue: 243/255, alpha: 1)
    
    @IBOutlet var backgroundView: [UIView]!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var address: UIButton!
    @IBOutlet weak var openTimeLabel: UILabel!
    @IBOutlet weak var mrtLabel: UILabel!
    
    @IBOutlet weak var wifinumLabel: UILabel!
    @IBOutlet weak var seatnumLabel: UILabel!
    @IBOutlet weak var quietnumLabel: UILabel!
    @IBOutlet weak var tastynumLabel: UILabel!
    @IBOutlet weak var cheapnumLabel: UILabel!
    @IBOutlet weak var musicnumLabel: UILabel!
    
    @IBOutlet weak var wifiImage: UIImageView!
    @IBOutlet weak var seatImage: UIImageView!
    @IBOutlet weak var quietImage: UIImageView!
    @IBOutlet weak var tastyImage: UIImageView!
    @IBOutlet weak var cheapImage: UIImageView!
    @IBOutlet weak var misicImage: UIImageView!
    

    
    func info(){
        if let CafeDetail = CafeDetail{
            nameLabel.text = CafeDetail.cafeName
            address.setTitle(CafeDetail.cafeAddress, for: .normal)
            if CafeDetail.cafeOpenTime == ""{
                openTimeLabel.text = "暫無資料"
            }else{
                openTimeLabel.text = CafeDetail.cafeOpenTime
            }
            if CafeDetail.cafeMRT == ""{
                mrtLabel.text = "暫無資料"
            }else{
                mrtLabel.text = CafeDetail.cafeMRT
            }
            
            
            wifinumLabel.text = String(CafeDetail.cafeWifi)
            if CafeDetail.cafeWifi < 3.5 {
                wifiImage.image = #imageLiteral(resourceName: "orange-star")
                wifinumLabel.textColor = OrangeColor
            }else{
                wifiImage.image = #imageLiteral(resourceName: "blue-star")
                wifinumLabel.textColor = BlueColor
            }
            
            
            seatnumLabel.text = String(CafeDetail.cafeSeat)
            if CafeDetail.cafeSeat < 3.5 {
                seatImage.image = #imageLiteral(resourceName: "orange-star")
                seatnumLabel.textColor = OrangeColor
            }else{
                seatImage.image = #imageLiteral(resourceName: "blue-star")
                seatnumLabel.textColor = BlueColor
            }
            
            
            quietnumLabel.text = String(CafeDetail.cafeQuiet)
            if CafeDetail.cafeQuiet < 3.5 {
                quietImage.image = #imageLiteral(resourceName: "orange-star")
                quietnumLabel.textColor = OrangeColor
            }else{
                quietImage.image = #imageLiteral(resourceName: "blue-star")
                quietnumLabel.textColor = BlueColor
            }
            
            
            tastynumLabel.text = String(CafeDetail.cafeTasty)
            if CafeDetail.cafeTasty < 3.5 {
                tastyImage.image = #imageLiteral(resourceName: "orange-star")
                tastynumLabel.textColor = OrangeColor
            }else{
                tastyImage.image = #imageLiteral(resourceName: "blue-star")
                tastynumLabel.textColor = BlueColor
            }
            
            
            cheapnumLabel.text = String(CafeDetail.cafeCheap)
            if CafeDetail.cafeCheap < 3.5 {
                cheapImage.image = #imageLiteral(resourceName: "orange-star")
                cheapnumLabel.textColor = OrangeColor
            }else{
                cheapImage.image = #imageLiteral(resourceName: "blue-star")
                cheapnumLabel.textColor = BlueColor
            }
            
            musicnumLabel.text = String(CafeDetail.cafeMusic)
            if CafeDetail.cafeMusic < 3.5 {
                misicImage.image = #imageLiteral(resourceName: "orange-star")
                musicnumLabel.textColor = OrangeColor
            }else{
                misicImage.image = #imageLiteral(resourceName: "blue-star")
                musicnumLabel.textColor = BlueColor
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = false
        navigationItem.title = CafeDetail?.cafeName
        for i in backgroundView {
            i.layer.cornerRadius = 10
        }
        
        info()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let Map_ViewController = segue.destination as? Map_ViewController
            Map_ViewController?.MapLocation = CafeDetail

        
    }
    // MARK: - Table view data source

    /*
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }
     */
    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

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
