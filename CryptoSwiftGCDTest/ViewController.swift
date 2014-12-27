//
//  ViewController.swift
//  CryptoSwiftGCDTest
//
//  Created by Markus Bischof on 27.12.14.
//  Copyright (c) 2014 Hirnschmalz. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var label: NSTextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let pathToImage = NSBundle.mainBundle().pathForResource("image", ofType: "jpg")!
        let imageAsData = NSData(contentsOfFile: pathToImage)!
        let crc = imageAsData.crc32()
        
        self.label.objectValue = crc
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

