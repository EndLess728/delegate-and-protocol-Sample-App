//
//  secondViewController.swift
//  Delegate Protocol App
//
//  Created by MacMini on 9/7/18.
//  Copyright © 2018 com.omgmk. All rights reserved.
//

import UIKit

protocol dataPass {
    func dataPassing( name:String, age:String, city:String)
}

class secondViewController: UIViewController {
    
    
    @IBOutlet weak var nameTxt: UITextField!

    
    @IBOutlet weak var ageTxt: UITextField!
    

    @IBOutlet weak var cityTxt: UITextField!
    
    
    var delegate : dataPass! // we use ! sing bcz if the value of datapass is nill ot empty it will crash the app but if we use ? instead of this then if the value will become nil or it has any type of dta the app will not crash
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    
    
    @IBAction func saveButton(sender: UIButton) {
        
        if nameTxt.text == ""
        {
            alert("Enter Name", msg: "" , delegate: self)
        }
        else if ageTxt.text == ""
        {
            alert("Enter Age", msg: "" , delegate: self)
        }
        else if cityTxt.text == ""
        {
            alert("Enter City", msg: "" , delegate: self)
        }
        
        delegate.dataPassing(nameTxt.text!, age: ageTxt.text!, city: cityTxt.text!)
        
    }
    
    
    func alert(Title:String, msg:String, delegate: AnyObject){
        
        
                let alertmsg = UIAlertView() // UIAlertView() is Deprecated/outdated now in ios 9.0 now we use UIAlertController with PrefferredStyle
                alertmsg.title = Title
                alertmsg.message = msg
                alertmsg.addButtonWithTitle("OK")
                alertmsg.delegate = delegate
                alertmsg.show()
        
        
        
    }
    
    
    
    


}
