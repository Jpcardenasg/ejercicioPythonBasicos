def alza_dolar(valor_dolar, dias, alzas):
    for i in range(1, dias + 1):
        if dias == 1:
            alzas[1] = 0
        else:
            if i != dias:
                alzas[i] = valor_dolar[i + 1] - valor_dolar[i]

def orden_alzas(alzas, dias):
    for i in range(1, dias):
        for j in range(1, dias - i + 1):
            if alzas[j] < alzas[j + 1]:
                aux = alzas[j]
                alzas[j] = alzas[j + 1]
                alzas[j + 1] = aux

    if alzas[1] == 0 and dias != 1:
        print("No hubo alzas")
    else:
        print("La mayor alza fue de", alzas[1], "dolares")



dias = int(input("Ingrese el número de días que desea registrar: "))

valor_dolar = [0] * (dias + 1)
alzas = [0] * (dias + 1)

for i in range(1, dias + 1):
    dolardia = float(input("Ingrese el valor del dolar para el día {}: ".format(i)))
    valor_dolar[i] = dolardia

print("Día - Valor del Dólar:")
for i in range(1, dias + 1):
    print(i, "-", valor_dolar[i])

alza_dolar(valor_dolar, dias, alzas)
orden_alzas(alzas, dias)
