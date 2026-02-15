//
//  main.swift
//  binarySearch
//
//  Created by Felipe Antelo on 27/01/26.
//

import Foundation

class PartidaAdvinhar {
    func inicial (respostaCorreta : Int) {
        print ("Resposta correta: \(respostaCorreta)")
        var acertou : Bool = false
        var tentativas : Int = 0
        var limiteInferior = 0  //Saber o limite inferior
        var limiteSuperior = 100    //Saber o limite superior
        while acertou == false {    //enquanto não tiver acertado o numero
            let chute = Int.random(in: limiteInferior...limiteSuperior) //Pega um inteiro aleatório dentro dos limites inferior e superior
            if chute > respostaCorreta {    //Resposta é menor que o numero chutado
                limiteSuperior = chute - 1 //O limite superior se torna o chute anterior
                print ("Chute foi maior que a resposta correta")
            }
            else if chute < respostaCorreta{
                limiteInferior = chute + 1  //O limite inferior se torna o chute anteior
                print ("Chute foi menor que a resposta correta")
            }
            else {
                print("LEEROYYYYYYY JEEEEEENKINS")
                acertou = true
            }
            print("O chute atual corresponde a: \(chute)")
            tentativas += 1
        }
        print("Terminou em \(tentativas) tentativas")
    }
}
while true {
    print ("Digite a ser advinhado:")
    let textoDigitado = readLine()
    if let textoDigitado {
        let numeroDigitado = Int(textoDigitado)
        if let numeroDigitado {
            PartidaAdvinhar().inicial(respostaCorreta: numeroDigitado)
        }
        else {
            print("Somente números são aceitos")
        }

        
    }
}


//Nova tarefa : Computador escolhe o número e você advinha
