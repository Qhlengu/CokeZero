//
//  Table53ViewController.swift
//  MUTCD Diagram Selection
//
//  Created by H Le-Nguyen on 17/10/16.
//  Copyright © 2016 H Le-Nguyen. All rights reserved.
//

import UIKit

class Table53ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var picker: UIPickerView!
    let pickerItems = ["Short - Term", "Long Term"]
    
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

    @IBAction func pageNavigation(_ sender: UIButton) {
        
        
        
    }
}
