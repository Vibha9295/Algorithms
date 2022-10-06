import UIKit

// Given m*n 2D binary grid which represents a map of '1's(land) and 0's(water), return the number of Islands.

// An island is surrounded by water and formed by connecting adjacent lands horizontally or vertically. You may assume all four edges of the grid are all surrounded by water.


func countIsland(_ grid: [[String]]) -> Int{
    var numIsland = 0
    var matrix = grid
    
    
    for i in 0..<matrix.count{
        let row = matrix[i]
        for j in 0..<row.count{
            let value = matrix[i][j]
            if value == "1"{
                
                numIsland += 1
                //Depth First Search(DFS)
            }
        }
        
    }
    
    return numIsland
    
}

let grid = [
    ["1","1","1","1","0"],
    ["1","1","0","1","0"],
    ["1","1","0","0","0"],
    ["0","0","0","0","0"]
]

let result = countIsland(grid)
print(result)

