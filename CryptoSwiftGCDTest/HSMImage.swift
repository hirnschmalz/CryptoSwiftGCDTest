//
//  HSMImage.swift
//  CryptoSwiftGCDTest
//
//  Created by Markus Bischof on 27.12.14.
//  Copyright (c) 2014 Hirnschmalz. All rights reserved.
//

import Cocoa
import CryptoSwift

class HSMImage: NSObject {
    
    var pathToImage: NSString!
    
    private(set) var uuid: NSString?
    
    init(path: NSString) {
        super.init()
        
        self.pathToImage = path
        self.createUuid()
    }

    func createUuid() {
        let imageAsData = NSData(contentsOfFile: self.pathToImage)!
        let crc = imageAsData.crc32()
    }
}
