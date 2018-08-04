//
//  RegisterVC.swift
//  ptaka
//
//  Created by MacStudent on 2018-08-04.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class RegisterVC: UIViewController {

    
    @IBAction func btnRegister(_ sender: Any) {
    }
    @IBAction func segFemaleMale(_ sender: Any) {
        
     let segment = sender as! UISegmentedControl
        print("selected segment is: \(segment.selectedSegmentIndex)")
        
    }
    @IBOutlet weak var txtPass: UITextField!
    @IBOutlet weak var lblGender: UILabel!
    @IBOutlet weak var txtID: UITextField!
    @IBOutlet weak var lblID: UILabel!
    @IBOutlet weak var lblPass: UILabel!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPhone: UITextField!
    @IBOutlet weak var txtAddress: UITextField!
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var lblEmail: UILabel!
    @IBOutlet weak var lblPhoneNo: UILabel!
    @IBOutlet weak var lblAddress: UILabel!
    @IBOutlet weak var lblName: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
