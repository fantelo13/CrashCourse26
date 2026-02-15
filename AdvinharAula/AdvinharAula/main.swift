//
//  main.swift
//  AdvinharAula
//
//  Created by Felipe Antelo on 28/01/26.
//

import Foundation

class Garrafa { //Classe para garrafas
    var material : String
    var volume : Double
    var cor : String
    var estado: Bool = false
    
    //caso de garrafa padrão com 1 litro
    init(material : String, volume : Double = 1, cor : String) {
        self.material = material
        self.volume = volume
        self.cor = cor
        self.estado = false
    }
    
    //caso de garrafa em que o volume não foi dado, mas os lados sim
    init(material: String, cor: String, lado1: Double=1, lado2: Double=2, lado3: Double=3) {
        self.material = material
        self.volume = lado1 * lado2 * lado3
        self.cor = cor
    }
}

func pintar (garrafa:Garrafa, novaCor: String) -> Void {
    garrafa.cor = novaCor
}

func mudarEstado (garrafa:Garrafa) -> Void {
    if (garrafa.estado){
        garrafa.estado = false
    }
    else {
        garrafa.estado = true
    }
}

var minhaGarrafa = Garrafa(material: "Metal", volume: 1.5, cor: "RosaChoque")
var outraGarrafa = Garrafa(material: "Vidro", cor: "Azul", lado1: 10, lado2: 20, lado3: 30)
print("A garrafa era da cor : \(minhaGarrafa.cor)")
print("E ela estava : \(minhaGarrafa.estado)")
pintar(garrafa: minhaGarrafa, novaCor: "Vermelho")
mudarEstado(garrafa: minhaGarrafa)
print("A garrafa foi pintada para a cor : \(minhaGarrafa.cor)")
print("E ela agora está : \(minhaGarrafa.estado)")
minhaGarrafa.cor = "Preto"
print("A última cor da garrafa foi : \(minhaGarrafa.cor)")
print(outraGarrafa.volume)
