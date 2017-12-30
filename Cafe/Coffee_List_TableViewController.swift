//
//  Coffee_List_TableViewController.swift
//  CoffeeShop
//
//  Created by Alex Hsieh on 2017/12/12.
//  Copyright © 2017年 Alex Hsieh. All rights reserved.
//

import UIKit

class Coffee_List_TableViewController: UITableViewController, UISearchResultsUpdating, UISearchBarDelegate {
    
    var CafeArrey = [cafe]()
    var SearchArrey:[cafe] = [cafe]()
    var searchController: UISearchController!
    var searchResult:Bool = false
    //var CofeName: [String] = []
    //var CofeAddress: [String] = []
    let urlstr = "https://cafenomad.tw/api/v1.2/cafes/taipei"
    
    
    func download_URLSession(webAddress:String){
        guard let url = URL(string: webAddress) else{
            return
        }
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data else{
                print("Error")
                return
            }
            do{
                if let result = try JSONSerialization.jsonObject(with: data, options: []) as? [[String:Any]]{
                    DispatchQueue.main.async {
                        for store in result{
                            if let cafe = cafe(json:store){
                                self.CafeArrey.append(cafe)
                            }
                        }
                        print(self.CafeArrey)
                        self.tableView.reloadData()
                    }
                }
            }catch{
            }
        }
        task.resume()
    }

    func initSearchController(){
        searchController = UISearchController(searchResultsController: nil)
        searchController.searchResultsUpdater = self
        searchController.dimsBackgroundDuringPresentation = false
        //searchController.hidesNavigationBarDuringPresentation = false
        let searchBar = searchController.searchBar
        searchBar.delegate = self
        searchBar.placeholder = "請輸入名稱"
        searchBar.setValue("取消", forKey: "_cancelButtonText")
        searchBar.sizeToFit()
        
        navigationItem.searchController = searchController
    }
    
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        
    }
    func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
        
    }
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        
    }
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        guard let searchString = searchController.searchBar.text else {
            return
        }
       
            
        tableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initSearchController()
        download_URLSession(webAddress: urlstr)
        navigationController?.navigationBar.prefersLargeTitles = true
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        
    }

    override func viewDidAppear(_ animated: Bool) {
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        //if navigationItem.searchController?.isActive == true{
        //    return CafeArrey.count
        //}else{
            return CafeArrey.count
        //}
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let cafe = CafeArrey[indexPath.row]
        //if navigationItem.searchController?.isActive == true{

        //    return cell
        // }else{
            cell.textLabel?.text = cafe.cafeName
            cell.detailTextLabel?.text = cafe.cafeAddress
            return cell
        //}
        //return cell
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let Cafe_Detail_TableViewController = segue.destination as? Cafe_Datail_TableViewController
        if let indexPath = tableView.indexPathForSelectedRow{
            Cafe_Detail_TableViewController?.CafeDetail = CafeArrey[indexPath.row]
        }
    }
    
}
