//
//  table52ViewController.swift
//  MUTCD Diagram Selection
//
//  Created by H Le-Nguyen on 16/10/16.
//  Copyright © 2016 H Le-Nguyen. All rights reserved.
//

import UIKit

class table52ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    
    @IBOutlet weak var picker: UIPickerView!
     var value = 0
    var delegate: DiagramNumber! = nil
    let array = ["Short Term", "Long Term"]
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
    
  
    @IBAction func nextpage(_ sender: AnyObject) {
        if value == 1 {
            if let vc = storyboard?.instantiateViewController(withIdentifier: StoryBoardID.showDiagram.rawValue) as? LaneTypeViewController {
                vc.delegate = DiagramNumber.diagram10
                self.present(vc, animated: true, completion: nil)
            }
        } else {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "AADT") as? AADTViewController {
            self.present(vc, animated: true, completion: nil)
        }
     }
   }
}
