//
//  SenderViewController.swift
//  cb1
//
//  Created by Bing Cheng on 8/7/17.
//  Copyright © 2017 Bing Cheng. All rights reserved.
//

import UIKit

protocol NameDel {
    func send(data:String)
}

class SenderViewController: UIViewController {
    
    var del : NameDel?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func notify(_ sender: UIButton) {
        let msg = meg.text ?? ""
        del?.send(data: msg)
        let name = Notification.Name(rawValue: Constant.key)
        NotificationCenter.default.post(name:name, object:msg)
        dismiss(animated: true, completion: nil)
    }
//    @IBAction func send(_ sender: UIButton) {
//        let msg = meg.text ?? ""
//        del?.send(data: msg)
//        dismiss(animated: true, completion: nil)
//        
//    }
    @IBOutlet weak var meg: UITextField!

}
