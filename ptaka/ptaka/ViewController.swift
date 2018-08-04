//
//  ViewController.swift
//  ptaka
//
//  Created by MacStudent on 2018-08-04.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func btnLogin(_ sender: Any) {
    var id = "Aman"
     var password = "deep"
        if txtENTER.text == id && txtEnterPassword.text == password {
           lblShow.text = "WELCOME"
        }else{
            lblShow.text = "sorry wrong password or username"
        }
    }
    @IBOutlet weak var lblShow: UILabel!
    @IBOutlet weak var txtEnterPassword: UITextField!
    @IBOutlet weak var lblPassword: UILabel!
    @IBOutlet weak var txtENTER: UITextField!
    @IBOutlet weak var lblId: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

