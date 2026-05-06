algoritmo "CalculadoraMediaNotas"
//ra:5182563
var
   notas: vetor[1..10] de real
   quantidade: inteiro
   resultado: real
   contador: inteiro
funcao calcular_media(qtd: inteiro): real
var
   soma: real
   i: inteiro
inicio
   soma <- 0
   para i de 1 ate qtd faca
      soma <- soma + notas[i]
   fimpara
   retorne soma / qtd
fimfuncao
inicio
   escreva("=== CALCULADORA DE MEDIA DE NOTAS ===")
   escreval("")
   escreva("Digite a quantidade de notas a processar (maximo 10): ")
   leia(quantidade)

   se (quantidade < 1) ou (quantidade > 10) entao
      escreval("Erro: quantidade deve estar entre 1 e 10.")
      fimalgoritmo
   fimse

   escreval("")
   escreva("Agora voce vai inserir cada nota. Digite valores entre 0 e 10.")
   escreval("")

   para contador de 1 ate quantidade faca
      escreva("Digite a nota ", contador, ": ")
      leia(notas[contador])

      se (notas[contador] < 0) ou (notas[contador] > 10) entao
         escreval("Aviso: a nota deve estar entre 0 e 10.")
      fimse
   fimpara

   resultado <- calcular_media(quantidade)

   escreval("")
   escreval("=== RESULTADO ===")
   escreval("Quantidade de notas: ", quantidade)
   escreval("Media das notas: ", resultado:2:2)

   se resultado >= 7 entao
      escreval("Status: APROVADO")
   senao
      escreval("Status: REPROVADO")
   fimse

fimalgoritmo