//
//  ViewController.swift
//  MUTCD Diagram Selection
//
//  Created by H Le-Nguyen on 13/10/16.
//  Copyright © 2016 H Le-Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var Picker: UIPickerView!
    var diagramSelection: DiagramSelection
    var value: Int? = 0
    
    @IBOutlet weak var testing: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
         navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Open", style: .plain, target: self, action: #selector(openTapped))
        
    }
    required init?(coder aDecoder: NSCoder) {
        self.diagramSelection = DiagramSelection()
        super.init(coder: aDecoder)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return diagramSelection.pickerValue[row]
    }
    
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return diagramSelection.pickerRowCount
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        value = row
    
        return value = row
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

            if segue.identifier == "Lane Type" {
                if let vc = segue.destination as? DiagramViewController {
                    vc.delegate = diagramSelection.workDescribtion[value!]
        }
                
        }
    }
    
                
                
                
                
                
                
                
                
                
                
                
                
                
                
    func openTapped(){
        let ac = UIAlertController(title: "Open page...", message: nil, preferredStyle: .actionSheet)
        
        ac.addAction(UIAlertAction(title: "MUTCD Part 3", style: .default, handler: openPage))
        self.present(ac, animated: true, completion: nil)
    }
    
    func openPage(action: UIAlertAction) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "WebView") as? WebViewController {
        self.present(vc, animated: true, completion: nil)
    
    }

             navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Open", style: .plain, target: self, action: #selector(openTapped))

  }
}


