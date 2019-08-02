//
//  UIImageView+Extensions.swift
//  LambdaChat
//
//  Created by Alex on 8/1/19.
//  Copyright © 2019 Alex. All rights reserved.
//

import UIKit

let imageCache = NSCache<NSString, UIImage>()

extension UIImage {
    
    static func getImageWith(urlString : String) -> UIImage? {
        if let requestedImage = imageCache.object(forKey: urlString as NSString) {
            return requestedImage
        } else {
            return nil
        }
    }
    
    static func storeInCache(imageToStore : UIImage, named : String) {
        imageCache.setObject(imageToStore, forKey: named as! NSString)
    }
    
    
}
