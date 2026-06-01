defmodule Mcc do

  #Operações Numericas:
  def somar_naturais(n), do: somar_naturais(n, 0)
  defp somar_naturais(0, acumulador), do: acumulador
  defp somar_naturais(n, acumulador), do: somar_naturais(n - 1, acumulador + n)

  def fatorial(n), do: fatorial(n, 1)
  defp fatorial(0, acumulador), do: acumulador
  defp fatorial(1, acumulador), do: acumulador
  defp fatorial(n, acumulador), do: fatorial(n - 1, n * acumulador)

  def fibonacci(n), do: fibonacci(n, 0, 1)
  defp fibonacci(0, acc1, _acc2), do: acc1
  defp fibonacci(n, acc1, acc2), do: fibonacci(n - 1, acc2, acc1 + acc2)

  def menor_de_dois(a, b), do: menor_de_dois(a, b, 0)
  defp menor_de_dois(0, _b, acc), do: acc
  defp menor_de_dois(_a, 0, acc), do: acc
  defp menor_de_dois(a, b, acc), do: menor_de_dois(a - 1, b - 1, acc + 1)

  def produtorio_impares(n), do: produtorio_impares(n, 1)
  defp produtorio_impares(0, _acc), do: 0
  defp produtorio_impares(1, acc), do: acc
  defp produtorio_impares(n, acc), do: produtorio_impares(n - 1, (n*2 - 1) * acc)

  def somatorio_quadrados(n), do: somatorio_quadrados(n, 1)
  defp somatorio_quadrados(0, _acc), do: 0
  defp somatorio_quadrados(1, acc), do: acc
  defp somatorio_quadrados(n, acc), do: somatorio_quadrados(n - 1, acc + n * n)

  def somar_digitos(n), do: somar_digitos(n, 0)
  defp somar_digitos(0, acc), do: acc
  defp somar_digitos(n, acc), do: somar_digitos(div(n, 10), acc + rem(n, 10))

  def mdc(a, 0), do: a
  def mdc(a, b), do: mdc(b, rem(a, b))

  def contagem_regressiva(n), do: contagem_regressiva(n, [])
  defp contagem_regressiva(1, acc), do: acc ++ [1]
  defp contagem_regressiva(n, acc), do: contagem_regressiva(n - 1,  acc ++ [n])

  def soma_fracoes(n), do: soma_fracoes(n, 1)
  defp soma_fracoes(1, acc), do: acc
  defp soma_fracoes(n, acc), do: soma_fracoes(n - 1, 1 / n + acc)

  # Operações com Listas:
  def tamanho(lista), do: tamanho(lista, 0)
  defp tamanho([], acc), do: acc
  defp tamanho([head|tail], acc), do: tamanho(tail, 1 + acc)

  def somar_elementos(lista), do: somar_elementos(lista, 0)
  defp somar_elementos([], acc), do: acc
  defp somar_elementos([head|tail], acc), do: somar_elementos(tail, head + acc)

  def multiplicar_elementos(lista), do: multiplicar_elementos(lista, 1)
  defp multiplicar_elementos([], acc), do: acc
  defp multiplicar_elementos([head|tail], acc), do: multiplicar_elementos(tail, head * acc)

  def pertence?(_, []), do: false
  def pertence?(n, [n|_]), do: true
  def pertence?(n, [_head|tail]), do: pertence?(n, tail)

  def inverter(lista), do: inverter(lista, [])
  defp inverter([], acc), do: acc
  defp inverter([head|tail], acc), do: inverter(tail, [head | acc])

  def maior([head|tail]), do: maior(tail, head)
  defp maior([], maior_atual), do: maior_atual
  defp maior([head|tail], maior_atual) when head > maior_atual, do: maior(tail, head)
  defp maior([head|tail], maior_atual) when head < maior_atual, do: maior(tail, maior_atual)

  def maiores_que(elemento, lista), do: maiores_que(elemento, lista, [])
  defp maiores_que(elemento, [], acc), do: acc
  defp maiores_que(elemento, [head | tail], acc) when head < elemento, do: maiores_que(elemento, tail, acc)
  defp maiores_que(elemento, [head | tail], acc) when head >= elemento do
    maiores_que(elemento, tail, acc ++ [head])
  end

  def maiores_que?(elemento, []), do: true
  def maiores_que?(elemento, [head|tail]) when head >= elemento, do: false
  def maiores_que?(elemento, [head|tail]) when head < elemento, do: maiores_que?(elemento, tail)

  def contar_ocorrencias(elemento, lista), do: contar_ocorrencias(elemento, lista, 0)
  defp contar_ocorrencias(elemento, [], acc), do: acc
  defp contar_ocorrencias(elemento, [head|tail], acc) when head == elemento, do: contar_ocorrencias(elemento, tail, 1 + acc)
  defp contar_ocorrencias(elemento, [head|tail], acc) when head != elemento, do: contar_ocorrencias(elemento, tail, acc)

  def remover(elemento, lista), do: remover(elemento, lista, [])
  defp remover(elemento, [], acc), do: acc
  defp remover(elemento, [elemento|tail], acc), do: acc ++ tail
  defp remover(elemento, [head|tail], acc), do: remover(elemento, tail, acc ++ [head])

  #Operações com Conjuntos:
  def eh_conjunto([]), do: true
  def eh_conjunto([head|tail]), do: eh_conjunto([head|tail], pertence?(head, tail))
  def eh_conjunto([], _bool), do: true
  def eh_conjunto([head|tail], bool) when bool == false, do: eh_conjunto(tail, pertence?(head, tail))
  def eh_conjunto([head|tail], bool) when bool, do: false

end
