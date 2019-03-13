//
//  ViewController.swift
//  plistExample
//
//  Created by Baturay Kayatürk on 2019-03-12.
//  Copyright © 2019 Lambton College. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.readInformationPlist()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func readInformationPlist() {
        if let bundlePath = Bundle.main.path(forResource: "CountryList", ofType: "plist") {
            let dictionary = NSMutableDictionary(contentsOfFile: bundlePath)
            
            print(dictionary!.description)
            
            let countryList = dictionary!["countries"] as! NSArray
                print(countryList[0])
                for c in countryList {
                    print(c)
                }
            
            let employeeList = dictionary!["employees"] as! NSArray
            for e in employeeList {
                let emp = e as! NSDictionary
                print("eid : \(emp["eid"]!)")
                print("name : \(emp["name"]!)")
                print("salary : \(emp["salary"]!)")
            }
            
        }
    }


}

