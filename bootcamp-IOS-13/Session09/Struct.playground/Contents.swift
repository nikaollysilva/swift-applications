//Crinado uma struct, ela tem uma collection
struct Town {
    let name = "Angelaland"
    var citizens = ["Nikolly", "Matheus", "Angela"]
    var resources = ["Grain": 100, "Ore": 42, "Wool": 75]
    
    //Quando uma func esta dentro de uma estrutura chama-se método, caso ela esteja fora/solta, sera uma funcao
    func fortufy(){
        print("Defesas aumentadas")
    }
}
//Colocando minha struct em minha variavel
var myTown = Town()

//Print os cidadoes
print(myTown.citizens)

//formatando os dados em uma String
print("\(myTown) tem \(myTown.resources["Grain"]!) bags of grain.")

//Add outro cidadao
myTown.citizens.append("Keanu Reeves")

//Print numeros de cidadoes da cidade
print(myTown.citizens.count)

//Usando um metodo da minha estrutura
myTown.fortufy()
