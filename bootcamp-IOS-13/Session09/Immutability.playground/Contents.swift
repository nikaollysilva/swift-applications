struct Town{
    let name : String
    var citizens : [String]
    var resources : [String: Int]
    
    init(name: String, citizens: [String], resouces: [String: Int]){
        self.name = name
        self.citizens = citizens
        self.resources = resouces
    }
    
    func fortify(){
        print("Defesas aumentadas")
    }
    
    mutating func harvestRice(){
        resources ["Rice"] = 100
    }
}

var myTown = Town(name: "Angelaland", citizens: ["Angela", "Jack Bauer"], resouces: ["Gold" : 40])
myTown.citizens.append("Keanu Reeves")

print("People of \(myTown.name): \(myTown.citizens)")

myTown.harvestRice()
print(myTown.resources)
