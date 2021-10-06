import UIKit

var elementos: [Int] = []
var topo = -1
let MAX = 10

func push(_ num: Int) {
    if topo < MAX {
        topo += 1
        elementos.insert(num, at: topo)
    } else {
        print("Pilha está cheia")
    }
}

func pop() -> Int {
    if topo != -1 {
        let num = elementos[topo]
        topo -= 1
        return num
    } else {
        print("Pilha está vazia")
    }
    return 0
}


func estaVazia() -> Bool {
    return topo == -1
}

// utilizando a pilha

push(10)
push(20)
push(30)

print(elementos) // 10, 20, 30

pop()
pop()
pop()

estaVazia()
