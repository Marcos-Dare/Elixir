defmodule Msc do

  #Operações Numericas:
  def somar_naturais(1), do: 1
  def somar_naturais(n), do: n + somar_naturais(n - 1)

  def fatorial(0), do: 1
  def fatorial(1), do: 1
  def fatorial(n), do: n * fatorial(n - 1)

  def fibonacci(0), do: 0
  def fibonacci(1), do: 1
  def fibonacci(n), do: fibonacci(n - 1) + fibonacci(n - 2)

  def menor_de_dois(_a, 0), do: 0
  def menor_de_dois(0, _b), do: 0
  def menor_de_dois(a, b), do: 1 + menor_de_dois(a - 1, b - 1)

  def produtorio_impares(1), do: 1
  def produtorio_impares(n), do: (n*2 - 1) * produtorio_impares(n - 1)

  def somatorio_quadrados(1), do: 1
  def somatorio_quadrados(n), do: n*n + somatorio_quadrados(n - 1)

  def soma_digitos(0), do: 0
  def soma_digitos(n), do: rem(n, 10) + soma_digitos(div(n, 10))

  def mdc(a, 0), do: a
  def mdc(a, b), do: mdc(b, rem(a, b))

  def contagem_regressiva(1), do: [1]
  def contagem_regressiva(n), do: [n] ++ contagem_regressiva(n - 1)

  def soma_fracoes(1), do: 1
  def soma_fracoes(n), do: 1 / n + soma_fracoes(n - 1)

  #Operações com Listas:
  def tamanho([]), do: 0
  def tamanho([head | tail]), do: 1 + tamanho(tail)

  def somar_elementos([]), do: 0
  def somar_elementos([head|tail]), do: head + somar_elementos(tail)

  def multiplicar_elementos([]), do: 1
  def multiplicar_elementos([head|tail]), do: head * multiplicar_elementos(tail)

  def pertence?(_, []), do: false
  def pertence?(n, [n|_]), do: true
  def pertence?(n, [_head|tail]), do: pertence?(n, tail)

  def inverter([]), do: []
  def inverter([head|tail]), do: inverter(tail) ++ [head]

  def maior([head|tail]), do: maior(tail, head)
  defp maior([], maior_atual), do: maior_atual
  defp maior([head|tail], maior_atual) when head > maior_atual do
    maior(tail, head)
  end
  defp maior([head|tail], maior_atual) when head < maior_atual do
    maior(tail, maior_atual)
  end

  def maiores_que(elemento, []), do: []
  def maiores_que(elemento, [head|tail]) when head < elemento, do: maiores_que(elemento, tail)
  def maiores_que(elemento, [head|tail]) when head >= elemento do
    [head] ++ maiores_que(elemento, tail)
  end

  def maiores_que?(elemento, []), do: true
  def maiores_que?(elemento, [head|tail]) when head >= elemento, do: false
  def maiores_que?(elemento, [head|tail]) when head < elemento, do: maiores_que?(elemento, tail)

  def contar_ocorrencias(elemento, []), do: 0
  def contar_ocorrencias(elemento, [head|tail]) when elemento == head, do: 1 + contar_ocorrencias(elemento, tail)
  def contar_ocorrencias(elemento, [head|tail]) when elemento != head, do: contar_ocorrencias(elemento, tail)

  def remover(elemento, []), do: []
  def remover(elemento, [elemento|tail]), do: tail
  def remover(elemento, [head|tail]), do: [head] ++ remover(elemento, tail)

  #Operações com Conjuntos:
  def eh_conjunto?([]), do: true
  def eh_conjunto?([head|tail]) do
    if pertence?(head, tail) do
      false
    else
      eh_conjunto?(tail)
    end
  end

  def uniao([], conjunto_b), do: conjunto_b
  def uniao([head | tail], conjunto_b) do
    resultado_do_resto = uniao(tail, conjunto_b)
    if pertence?(head, conjunto_b) do
      resultado_do_resto
    else
      [head | resultado_do_resto]
    end
  end

end
