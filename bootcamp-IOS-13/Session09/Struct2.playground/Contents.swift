
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
}

var outraCidade = Town(name: "Ilha sem nome", citizens: ["Tom Hanks"], resouces: ["Cocos": 100])
outraCidade.citizens.append("Wilson")
print(outraCidade.citizens)

var cidadeFantasma = Town(name: "Cidade Fastasmagorica", citizens: [], resouces: ["Bola de feno" : 1])
