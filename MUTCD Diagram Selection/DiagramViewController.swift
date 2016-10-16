//
//  DiagramViewController.swift
//  MUTCD Diagram Selection
//
//  Created by H Le-Nguyen on 13/10/16.
//  Copyright © 2016 H Le-Nguyen. All rights reserved.
//

import UIKit

class DiagramViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    var delegate: DescriptionOfWork! = nil
    var value = 0
    var Table51 =  Page51()
    
    @IBOutlet weak var laneTypePicker: UIPickerView!
    @IBOutlet weak var diagramToBeLoaded: UIImageView!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    init(Table51: Page51) {
        self.Table51 = Table51
        super.init(nibName: nil, bundle: nil)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Open", style: .plain, target: self, action: #selector(openTapped))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return Table51.columnCount
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return Table51.columnItem[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) { return value = row }
    func numberOfComponents(in pickerView: UIPickerView) -> Int { return 1 }
    
    @IBAction func showDiagramOrTable(_ sender: UIButton) {
        let newDelegate = Page51.convertPickerViewRowPathToMethod(pathIndexRow: value, typeOfWorkSelected: delegate)
        let diagramNavigation = Page51.storyboardNavigation(delegate: newDelegate)
        
        
        if let vc = storyboard?.instantiateViewController(withIdentifier: diagramNavigation) as? LaneTypeViewController {
            vc.delegate = newDelegate
            self.present(vc, animated: true, completion: nil)
        }
        if let vc = storyboard?.instantiateViewController(withIdentifier: diagramNavigation) as? table52ViewController {
            vc.delegate = newDelegate
            self.present(vc, animated: true, completion: nil)
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
    
