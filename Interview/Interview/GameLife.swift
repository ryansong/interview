//
//  GameLife.swift
//  Interview
//
//  Created by xiaomingsong on 8/23/16.
//  Copyright © 2016 xiaomingsong. All rights reserved.
//

import UIKit

class GameLife: NSObject {

    class func GameOfLife(_ board: inout [[Int]]) -> [[Int]] {
        
        // death to death = 0
        // live to live = 1
        // live to death = 2
        // death to live = 3
        
        
        let sizeRow = board.count
        let sizeColumn = board.first?.count
        
        for (index, array) in board.enumerated() {
            for (i, value) in array.enumerated() {
                
                var liveCount = 0
                
                let dx = [-1, -1, -1, 0, 1, 1, 1, 0]
                let dy = [-1, 0, 1, 1, 1, 0, -1, -1]
                
                for k in 0...7 {
                    let r = index + dx[k]
                    let c = i + dy[k]
                    if 0 <= r && r <= (sizeRow - 1) && 0 <= c && c <= (sizeColumn! - 1) {
                        if board[r][c] == 1 || board[r][c] == 2 {
                            liveCount += 1
                        }
                    }
                }

                if value == 1 && (liveCount < 2 || liveCount > 3) {
                    board[index][i] = 2
                }
                
                if value == 0 && ( liveCount == 3) {
                    board[index][i] = 3
                }
            }
        }
        
        for (index, array) in board.enumerated() {
            for (i, value) in array.enumerated() {
                board[index][i] = value % 2
            }
        }
        return board
    }
    
    class func sqrt(_ x:Int) -> Int {
        
        if x == 1 {
            return 1
        }
        
        var result = 0
        
        for i in 1...x/2 {
            if i*i <= x && (i+1)*(i+1) > x {
                result = i
                continue
            }
        }
        return result
    }
    
   class func pow(_ x:Int, _ y:Int) -> Int {
        if y == 1 {
            return x
        }
        
        let temp = pow(x, y/2)
        
        if y%2 == 0 {
            return temp * temp
        } else {
            return temp * temp * x
        }
    }
}
