//
//  ViewController2.swift
//  NotificationCenterDemo
//
//  Created by admin on 1/22/19.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit

extension Notification.Name {
    static let toggleMenuDidTap                 = Notification.Name("Key")
}


class ViewController2: UIViewController {
    
    var dataString: String?
    
    @IBOutlet weak var textField2: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if dataString != nil {
            textField2.text = dataString
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func onClickBack(_ sender: UIButton) {
        NotificationCenter.default.post(name: .toggleMenuDidTap, object: textField2.text)
        dismiss(animated: true, completion: nil)
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
        print("Ok")
    }
    

}
