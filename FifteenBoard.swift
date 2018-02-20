//
//  FifteenBoard.swift
//  FifteenPuzzle
//
//  Created by Lindberg on 2/20/18.
//  Copyright © 2018 Lindberg. All rights reserved.
//

import Foundation

class FifteenBoard {
    var state: [[Int]] = [
        [1, 2, 3, 4],
        [5, 6, 7, 8],
        [9, 10, 11, 12],
        [13, 14, 15, 0]
    ]
    
    func scramble(numTimes n: Int) {
    }
    
    func getTile(atRow r: Int, atColumn c: Int) -> Int {
        return self.state[r][c]
    }
    
    func getRowAndColumn(forTile tile: Int) -> (row: Int, column: Int) {
        return (0, 0)
    }
    
    func isSolved() -> Bool {
        return false
    }
    
    func canSlideTileUp(atRow r: Int, Column c: Int) -> Bool {
        return false
    }
    
    func canSlideTileDown(atRow r: Int, Column c: Int) -> Bool {
        return false
    }
    
    func canSlideTileLeft(atRow r: Int, Column c: Int) -> Bool {
        return false
    }
    
    func canSlideTileRight(atRow r: Int, Column c: Int) -> Bool {
        return false
    }
    
    func canSlideTile(atRow r: Int, Column c: Int) -> Bool {
        return false
    }
    
    func slideTile(atRow r: Int, Column c: Int) {
    }
}
