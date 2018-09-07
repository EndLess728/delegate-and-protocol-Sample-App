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

class secondViewController: UIViewController  {
    
    
    @IBOutlet weak var nameTxt: UITextField!

    
    @IBOutlet weak var ageTxt: UITextField!
    

    @IBOutlet weak var cityTxt: UITextField!
    
    //Assigning Variable to Delegate
    var delegate : dataPass! // we use ! sign bcz if the value of datapass is nill ot empty it will crash the app but if we use ? sign instead of this then if the value will become nil or it has any type of dta the app will not crash
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    
    
    @IBAction func saveButton(sender: UIButton) {
        
        if nameTxt.text == ""
        {
            self.alert("", title:"Enter Name")
        }
        else if ageTxt.text == ""
        {
            alert("" , title: "Enter Age")
        }
        else if cityTxt.text == ""
        {
            alert("" , title: "Enter City")
        }
        
        delegate.dataPassing(nameTxt.text!, age: ageTxt.text!, city: cityTxt.text!)
        
    }
    

    
    
        func alert(message: String, title: String ) {
            let alertController = UIAlertController(title: title, message: message, preferredStyle: .Alert)
            let OKAction = UIAlertAction(title: "OK", style: .Default, handler: nil)
            alertController.addAction(OKAction)
            self.presentViewController(alertController, animated: true, completion: nil)
          
        }
    


}
