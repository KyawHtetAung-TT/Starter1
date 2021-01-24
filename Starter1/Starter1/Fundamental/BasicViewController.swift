

import Foundation


var colorList = ["red","green","blue"]
var regionList : Set = ["ygn","mdy","npw"]
var townshiplists:[String:[String]] = ["yangon":["tarmwe","thingyun","hlaing"]]


// Global closure 1/2
// Nested function
var doOnNext:((String)->String)? = {_ -> String in ""}

func main(){
    
    var name = "kyaw htet aung"
    name = "kyaw htet"
    
    colorList.append("orange")
 
    let township = townshiplists["yangon"]
    debugPrint(township!)
    
    for color in colorList{
        debugPrint(color)
    }
    var indexForWhile = 0
        while indexForWhile < 3 {
            debugPrint(colorList[indexForWhile])
            indexForWhile += 1
        }
    
    var indexForRepeatWhile = 0
        repeat{
            debugPrint(indexForRepeatWhile)
            indexForRepeatWhile += 1
        } while indexForRepeatWhile < 3
    
    // Golbal closure 2/2
    // closure Expression syntex
    doOnNext = { name -> String in
        debugPrint("Hello\(name)")
        return "Hello \(name)"
    }
    
//    decrease(total: 10) {
//        <#code#>
//    }
//
//    decrease(doDecrease: {
//        <#code#>
//    }, total: 10)
}


// Capturing Value
func increament(amount:Int)->()->Int{
    
    func doProcess()-> Int{
        return amount
    }
    return doProcess
    
}

//Trailig Closure

//func decrease(total:Int,doDecrease:()->Void)->Void{
//    debugPrint("decrease")
//}
//func decrease(doDecrease:()->Void,total:Int)->Void{
//    debugPrint("decrease")
//}


