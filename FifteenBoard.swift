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
    
    func getRowAndColumn(forTile tile: Int) -> (row: Int, column: Int)? {
        for (r, row) in self.state.enumerated() {
            if let c = row.index(of: tile) {
                return (r, c)
            }
        }
        
        return nil
    }
    
    func isSolved() -> Bool {
        return false
    }
    
    func canSlideTileUp(atRow r: Int, Column c: Int) -> Bool {
        if r == 0 {
            return false
        }
        
        return self.getTile(atRow: r-1, atColumn: c) == 0
    }
    
    func canSlideTileDown(atRow r: Int, Column c: Int) -> Bool {
        if r == 3 {
            return false
        }
        
        return self.getTile(atRow: r+1, atColumn: c) == 0
    }
    
    func canSlideTileLeft(atRow r: Int, Column c: Int) -> Bool {
        if c == 0 {
            return false
        }
        
        return self.getTile(atRow: r, atColumn: c-1) == 0
    }
    
    func canSlideTileRight(atRow r: Int, Column c: Int) -> Bool {
        if c == 3 {
            return false
        }
        
        return self.getTile(atRow: r, atColumn: c+1) == 0
    }
    
    func canSlideTile(atRow r: Int, Column c: Int) -> Bool {
        return self.canSlideTileUp(atRow: r, Column: c) ||
               self.canSlideTileDown(atRow: r, Column: c) ||
               self.canSlideTileLeft(atRow: r, Column: c) ||
               self.canSlideTileRight(atRow: r, Column: c)
    }
    
    func slideTile(atRow r: Int, Column c: Int) {
        if self.canSlideTileUp(atRow: r, Column: c) {
            let current = self.getTile(atRow: r, atColumn: c)
            self.state[r][c] = 0
            self.state[r-1][c] = current
        }
        else if self.canSlideTileDown(atRow: r, Column: c) {
            let current = self.getTile(atRow: r, atColumn: c)
            self.state[r][c] = 0
            self.state[r+1][c] = current
        }
        else if self.canSlideTileLeft(atRow: r, Column: c) {
            let current = self.getTile(atRow: r, atColumn: c)
            self.state[r][c] = 0
            self.state[r][c-1] = current
        }
        else if self.canSlideTileRight(atRow: r, Column: c) {
            let current = self.getTile(atRow: r, atColumn: c)
            self.state[r][c] = 0
            self.state[r][c+1] = current
        }
    }
}
