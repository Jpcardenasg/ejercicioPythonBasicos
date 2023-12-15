def calcular_vuelto(producto, valor_producto):
    vuelto = 0
    
    if producto == "A":
        while valor_producto < 270:
            moneda = int(input("Ingrese moneda: "))
            if moneda in [10, 50, 100]:
                valor_producto += moneda
                vuelto = valor_producto - 270
            else:
                print("La moneda no es válida (solo monedas de 10, 50 y 100)")
    elif producto == "B":
        while valor_producto < 340:
            moneda = int(input("Ingrese moneda: "))
            if moneda in [10, 50, 100]:
                valor_producto += moneda
                vuelto = valor_producto - 340
            else:
                print("La moneda no es válida (solo monedas de 10, 50 y 100)")
    elif producto == "C":
        while valor_producto < 390:
            moneda = int(input("Ingrese moneda: "))
            if moneda in [10, 50, 100]:
                valor_producto += moneda
                vuelto = valor_producto - 390
            else:
                print("La moneda no es válida (solo monedas de 10, 50 y 100)")
    
    print("Su vuelto:")
    
    if vuelto == 0:
        print("0")
    else:
        while vuelto // 100 > 0:
            print("100")
            vuelto -= 100
        while vuelto // 50 > 0:
            print("50")
            vuelto -= 50
        while vuelto // 10 > 0:
            print("10")
            vuelto -= 10


print("Elija el producto que desea:")
print("A ------- $270")
print("B ------- $340")
print("C ------- $390")

producto_elegido = input("Ingrese el producto (A, B o C): ").upper()
valor_producto = 0

calcular_vuelto(producto_elegido, valor_producto)
