//
//  ViewController.swift
//  MyCocoapodsLibrary
//
//  Created by mritunjay.apple@gmail.com on 03/26/2024.
//  Copyright (c) 2024 mritunjay.apple@gmail.com. All rights reserved.
//

import UIKit
import MyCocoapodsLibrary

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let logger = Logger()
        logger.printLog()
        let frameworkBundle = Bundle(for: Logger.self)
        let path = frameworkBundle.path(forResource: "Resources", ofType: "bundle")
        let resourcesBundle = Bundle(url: URL(fileURLWithPath: path!))
        let image = UIImage(named: "flower.png", in: resourcesBundle, compatibleWith: nil)
        print(image)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

