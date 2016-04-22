//
//  ViewController.swift
//  AlamofireDemo
//
//  Created by gt on 16/4/20.
//  Copyright © 2016年 personal.com. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      //  baseRequestForAlamofire()
        jsonForAlamofire()
        
    }
    
    func baseRequestForAlamofire() {
        
        let urlString = "http://banbao.chazidian.com/uploadfile/2016-01-25/s145368924044608.jpg"
        
        Alamofire.request(.GET, urlString, parameters: nil, encoding: .URL, headers: nil).responseData { (res) in
            if let error = res.result.error {
                print(error)
            }else if let value = res.result.value{
                print("----200--",value)
            }
        }
    }
    
    func jsonForAlamofire() {
        
        Alamofire.request(.GET, "https://httpbin.org/get", parameters: ["fool":"bar"]).responseJSON { (res) in
            if let json = res.result.value {
                print("json----\(json)")
            }else {
                print(res.result.error)
            }
        }
    }
}

