//
//  AADTViewController.swift
//  MUTCD Diagram Selection
//
//  Created by H Le-Nguyen on 16/10/16.
//  Copyright © 2016 H Le-Nguyen. All rights reserved.
//

import UIKit

class AADTViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate{

    
    @IBOutlet weak var picker: UIPickerView!
    let array = ["AADT: 0 - 400", "AADT: Over 400"]
    var value = 0
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
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Pavement Encroachment") as? PavementEncroachmentViewController {
            var a: table52AADT
            if value == 0 {
            a = table52AADT.LesserThan400
            } else if value == 1 {
            a = table52AADT.Over400
            vc.delegate = a
            self.present(vc, animated: true, completion: nil)
            }
        }
    }
}

