//
//  NumberFirst.swift
//  Interview
//
//  Created by xiaomingsong on 8/23/16.
//  Copyright © 2016 xiaomingsong. All rights reserved.
//

import UIKit

class NumberFirst: NSObject {

    class func numberFirst( array: inout [Int]) -> [Int] {
        
        var count:Int = 0
        
        for (index, value) in array.enumerated() {
            if index + count > array.count - 1  {
                continue
            }
            
            if array[index] == 0 {
                array.remove(at: index)
                array.append(0)
                count = count + 1
            }
        }
        
        return array
    }
}
