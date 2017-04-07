//
//  DetailViewController.swift
//  Universal LInk Sample
//
//  Created by anhltv on 3/26/17.
//  Copyright © 2017 Le Thi Van Anh. All rights reserved.
//

import UIKit
class DetailViewController: UIViewController {
    
    @IBOutlet weak var iconImageView: UIImageView!
    var formTitle:String?
    var formImg:String?
    override func viewDidLoad() {        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if ((self.formImg) != nil){
            iconImageView.image = UIImage.init(named: self.formImg!)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
        
    
    
}
