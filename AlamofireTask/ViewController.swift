//
//  ViewController.swift
//  AlamofireTask
//
//  Created by Sathish Chinniah on 25/01/17.
//  Copyright © 2017 Sathish chinniah. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var nameArray = [AnyObject]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Add this
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
        
        
        Alamofire.request("http://thecodeeasy.com/test/swiftjson.json").responseJSON { response in
            
            let result = response.result
            if let dict = result.value as? Dictionary<String,AnyObject>{
                if let mainDict = dict["actors"] {
                    self.nameArray = mainDict as! [AnyObject]
                   self.tableView.reloadData()
                }

            }
          
            
             }
    }
    
    
    
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return nameArray.count
    }
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath as IndexPath) as? CustomTableViewCell
        
        let title = nameArray[indexPath.row]["title"]
        cell?.ContentName.text = title as? String
        return cell!
    }

}

