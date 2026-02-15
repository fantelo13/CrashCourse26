//
//  main.swift
//  binarySearch
//
//  Created by Felipe Antelo on 27/01/26.
//

import Foundation

class PartidaAdvinhar {
    func inicial () {
        var acertou : Bool = false
        var tentativas : Int = 0
        let limiteInferior = 0  //Saber o limite inferior
        let limiteSuperior = 100    //Saber o limite superior
        let respostaCorreta = Int.random(in: limiteInferior...limiteSuperior) //Pega um inteiro aleatório dentro dos limites inferior e superior
        while acertou == false {    //enquanto não tiver acertado o numero
            print ("Digite seu chute:")
            let textoDigitado = readLine()
            if let textoDigitado {
                let chute = Int(textoDigitado)
                if let chute{
                    if chute > respostaCorreta {    //Resposta é menor que o numero chutado
                        print ("Chute foi maior que a resposta correta")
                    }
                    else if chute < respostaCorreta{
                        print ("Chute foi menor que a resposta correta")
                    }
                    else {
                        acertou = true
                    }
                    tentativas += 1
                }
                else {
                    print("Somente números são aceitos")
                }
            }
        }
        print("LEEROYYYYYYYYYYYYYYYYYYY JEEEEEEEEEEEEEEEEENKINS !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
        print("A resposta correta era, de fato, \(respostaCorreta). Parabéns!")
        print("Você levou \(tentativas) tentativas para acertar. Já tá melhor que o Loschi...")
    }
}
    while true {
        PartidaAdvinhar().inicial()
}


//Nova tarefa : Computador escolhe o número e você advinha
