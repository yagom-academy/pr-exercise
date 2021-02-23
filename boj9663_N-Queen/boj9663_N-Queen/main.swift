var n = Int(readLine()!)!
var board = Array(repeating: 0, count: 15)
var ans = 0
func isPromising(_ x: Int)->Bool{
    for i in 0..<x{
        if board[x] == board[i] || x-i == board[x]-board[i] || x-i == board[i]-board[x]{
            return false
        }
    }
    return true
}

func nQueen(_ x:Int){
    if x == n {
        ans += 1
        return
    }
    for i in 0..<n{
        board[x] = i
        if isPromising(x){
            nQueen(x+1)
        }
    }
}
nQueen(0)
print(ans)
