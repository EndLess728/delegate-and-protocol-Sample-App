//
//  ViewController.swift
//  Delegate Protocol App
//
//  Created by MacMini on 9/7/18.
//  Copyright © 2018 com.omgmk. All rights reserved.
//

import UIKit

class ViewController: UIViewController , dataPass {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func goToFormButton(sender: AnyObject) {
        
        let secondVC = self.storyboard?.instantiateViewControllerWithIdentifier("second") as! secondViewController
        secondVC.delegate = self
        self.navigationController?.pushViewController(secondVC, animated: true)
        
    }
    
    func dataPassing(name: String, age: String, city: String) {
        nameLabel.text = name
        ageLabel.text = age
        cityLabel.text = city
    }
    



}

