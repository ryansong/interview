//
//  ProductArray.swift
//  Interview
//
//  Created by xiaomingsong on 8/23/16.
//  Copyright © 2016 xiaomingsong. All rights reserved.
//

import UIKit

class ProductArray: NSObject {

   class func productArray(array: [Int]) -> [Int] {
        
    var product = 1;
    var outArray = Array<Int>.init(repeating: 1, count: array.count)
    
    for i in array {
        product *= i
    }
    
    for (index, value) in array.enumerated() {
        outArray[index] = product/value
    }
    
    return outArray
    
    }
}
