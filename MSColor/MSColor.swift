//
//  MSColor.swift
//  MSColor
//
//  Created by marco sportillo on 22/09/2016.
//  Copyright © 2016 msportillo.me. All rights reserved.
//

import UIKit

class MSColor: UIColor {

        convenience init(red: Int, green: Int, blue: Int) {
            assert(red >= 0 && red <= 255, "Invalid red component")
            assert(green >= 0 && green <= 255, "Invalid green component")
            assert(blue >= 0 && blue <= 255, "Invalid blue component")
            
            self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
        }

        // Example: MSColor.init("0xff00ff")
        convenience init(hexInt:Int) {
            self.init(red:(hexInt >> 16) & 0xff, green:(hexInt >> 8) & 0xff, blue:hexInt & 0xff)
        }
    
        // Example: MSColor.init("ff00ff")
        convenience init(hexIntRaw: String) {
            let intRaw = Int(hexIntRaw,radix: 16)
            self.init(red:(intRaw! >> 16) & 0xff, green:(intRaw! >> 8) & 0xff, blue:intRaw! & 0xff)
        }
    
        //Example: MSColor.init("#ff00ff")
        convenience init(hexIntRawWithDash: String) {
            var str = hexIntRawWithDash
            str.remove(at: str.startIndex)
            
            let hexValue = Int(str,radix: 16)
            
            self.init(red:(hexValue! >> 16) & 0xff, green:(hexValue! >> 8) & 0xff, blue:hexValue! & 0xff)
        }
    
}

extension UIColor {
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
    
    convenience init(netHex:Int) {
        self.init(red:(netHex >> 16) & 0xff, green:(netHex >> 8) & 0xff, blue:netHex & 0xff)
    }
}
