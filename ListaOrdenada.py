import random

def generar_lista():
    lista = []
    for i in range(10):
        lista.append(random.randint(1, 100))
        if i == 0:
            print("Lista en orden original: [",lista[i], end=", ")
        elif i == 9:
            print(lista[i], end="]\n\n")
        else:
            print(lista[i], end=", ")
    return lista

def orden_ascendente(lista):
    ascendente = sorted(lista)
    print("Lista en orden ascendente: [", end="")
    for i in range(10):
        if i == 9:
            print(ascendente[i], end="]\n\n")
        else:
            print(ascendente[i], end=", ")
    return ascendente

def orden_descendente(lista):
    descendente = sorted(lista, reverse=True)
    print("Lista en orden descendente: [", end="")
    for i in range(10):
        if i == 9:
            print(descendente[i], end="]\n\n")
        else:
            print(descendente[i], end=", ")
    return descendente


original = generar_lista()
lista_ascendente = orden_ascendente(original.copy())
lista_descendente = orden_descendente(original.copy())
