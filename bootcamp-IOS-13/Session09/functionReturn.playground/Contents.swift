func simpleFunction(){
    print("Hello!")
}

simpleFunction()

func functionParametrs(name: String){
    print("Hello \(name)")
}

functionParametrs(name: "Angela")

func funtionReturn(name: String) -> Bool{
    if name == "Angela" || name == "Nikolly"{
        return true
    } else {
       return false
    }
}

var trueFalse = funtionReturn(name: "Angela")

print(trueFalse)
