//
//  ViewController.swift
//  IBBasics
//
//  Created by Paul Thomas on 7/22/23.
//

import UIKit

class ViewController: UIViewController {

    
    
    
    @IBOutlet var myButton: UIButton!
    
    @IBOutlet var mySlider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myButton.tintColor = .red
    }
    
    
    @IBAction func buttonPressed(_ sender: Any) {
        print("The button has been pressed")
    }
    

}

