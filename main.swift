//
//  main.swift
//  calculadoraProyecto
//
//  Created by CEDAM 14 on 10/10/23.
//

import Foundation

var ciclo : String = ""
var numero1 : Double = 0
var numero2 : Double = 0


func suma(n1: Double, n2 : Double){
    let resultado = n1 + n2
   print("El resultado de la suma es: \(resultado)")
}
func resta(n1: Double, n2: Double){
    let resultado = n1 - n2
    print("El resultado de la resta es : \(resultado)")
}
func multiplicacion(n1 : Double, n2: Double){
    let resultado = n1 * n2
    print("El resultado de la multipliacion es: \(resultado)")
}
func divison(n1: Double, n2: Double){
    var resultado : Double = 0
    if n2 == 0{
        print("La division no se puede realizar")
    }else {
        resultado = n1 / n2
        print("El resultado de la division es: \(resultado)")
    }
}


while ciclo != "Salir" {
    print("Ingrese un numero1: ")
    numero1 = Double(readLine() ?? "0") ?? 0
    print("Ingrese un numero2: ")
    numero2 = Double(readLine() ?? "0") ?? 0
    print("Ingrese la opcion deseada")
    print("Suma")
    print("Resta")
    print("Multiplicacion")
    print("Division")
    ciclo = readLine() ?? "Salir"
    switch ciclo {
    case "Suma":
        suma(n1: numero1, n2: numero2)
    case "Resta":
        resta(n1: numero1, n2: numero2)
    case "Multiplicacion":
        multiplicacion(n1: numero1, n2: numero2)
    case "Division":
        divison(n1: numero1, n2: numero2)
    case "Salir":
        break
    default :
        print("Algo salio mal")
    }
}


