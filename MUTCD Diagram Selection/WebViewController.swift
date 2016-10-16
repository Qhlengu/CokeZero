//
//  WebViewController.swift
//  MUTCD Diagram Selection
//
//  Created by H Le-Nguyen on 14/10/16.
//  Copyright © 2016 H Le-Nguyen. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController, WKNavigationDelegate {

    
    @IBOutlet weak var webView: UIWebView!

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let url = URL(string: "http://www.tmr.qld.gov.au/-/media/busind/techstdpubs/Traffic-management/Manual-of-Uniform-Traffic-Control-Devices/MUTCDPart3WorksonRoads.pdf?la=en")
        if let url = url {
            let urlRequest = URLRequest(url: url)
            webView.loadRequest(urlRequest)
     
        } else {
            print("URL Isnt Working")
        }
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

}
