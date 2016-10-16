//
//  LaneTypeViewController.swift
//  MUTCD Diagram Selection
//
//  Created by H Le-Nguyen on 13/10/16.
//  Copyright © 2016 H Le-Nguyen. All rights reserved.
//

import UIKit

class LaneTypeViewController: UIViewController {
    
    var delegate: DiagramNumber! = nil
    var imageNames = [String]()
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var scrollView: UIScrollView!
    var request: DescriptionOfWork?
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        setupImageViews()
        scrollView.isPagingEnabled = true
        scrollView.delegate = self
        scrollView.frame = view.bounds
        
        
        
        
        
        
    }

    
    func setupImageViews() {
        var totalWidth: CGFloat = 0
        let listofImages = [delegate.rawValue, "N1A"]
        imageNames += listofImages
        for imageName in imageNames {
            let image = UIImage(named: imageName)
            let imageView = UIImageView(image: image)
            imageView.frame = CGRect(origin: CGPoint(x: totalWidth, y:0), size: view.bounds.size)
            imageView.contentMode = .scaleAspectFit
            scrollView.addSubview(imageView)
            totalWidth += imageView.bounds.size.width
        }
        scrollView.contentSize = CGSize(width: totalWidth, height: view.bounds.size.height)

    }
    
}

extension LaneTypeViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let pageWidth = Int(scrollView.contentSize.width)/imageNames.count
        pageControl.currentPage = Int(scrollView.contentOffset.x) / pageWidth
    }

}
