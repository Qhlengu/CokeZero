//
//  PavementEncroachmentViewController.swift
//  MUTCD Diagram Selection
//
//  Created by H Le-Nguyen on 16/10/16.
//  Copyright © 2016 H Le-Nguyen. All rights reserved.
//

import UIKit

class PavementEncroachmentViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var picker: UIPickerView!
    var delegate: table52AADT! = nil
    var value = 0
    var array = ["Encroachment - Minor", "Encroachment - None"]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
 
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 2
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return array[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        return value = row
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int { return 1 }
    

        @IBAction func nextPage(_ sender: UIButton) {
            
            
            
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Show Diagram") as? LaneTypeViewController {
            var newdelegate: DiagramNumber! = nil
            if value == 0 {
                newdelegate = delegate.Minor
            }
            if value == 1 {
                newdelegate = delegate.None
            }
            vc.delegate = newdelegate
            self.present(vc, animated: true, completion: nil)
        }
    }
}
