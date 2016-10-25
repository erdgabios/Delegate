//
//  ReceivingVC.swift
//  Delegate
//
//  Created by G on 25/10/2016.
//  Copyright © 2016 erdgabios. All rights reserved.
//

import UIKit

class ReceivingVC: UIViewController, DataSentDelegate {

    @IBOutlet weak var receivingLabel: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func userDidEnterData(data: String) {
        
        receivingLabel.text = data
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showSendingVC" {
            let sendingVC: SendingVC = segue.destination as! SendingVC
            sendingVC.delegate = self
        }
    }
}

