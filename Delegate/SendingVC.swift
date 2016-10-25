//
//  SendingVC.swift
//  Delegate
//
//  Created by G on 25/10/2016.
//  Copyright © 2016 erdgabios. All rights reserved.
//

import UIKit

protocol DataSentDelegate {
    
    func userDidEnterData(data: String)
}


class SendingVC: UIViewController {

    var delegate: DataSentDelegate?
    
    @IBOutlet weak var dataEntryTextField: UITextField!
    @IBAction func sendBtnWasPressed(_ sender: AnyObject) {
        
        if delegate != nil {
            if dataEntryTextField.text != nil {
                let data = dataEntryTextField.text
                delegate?.userDidEnterData(data: data!)
                dismiss(animated: true, completion: nil)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}
