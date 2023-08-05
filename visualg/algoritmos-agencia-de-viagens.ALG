algoritmo "obv.com"

var
   clientes: vetor[1..100] de caractere
   cpfClientes: vetor[1..100] de caractere
   telefoneClientes: vetor[1..100] de caractere
   destinos: vetor[1..100] de caractere
   localizacaoDestinos: vetor[1..100] de caractere
   precoDestinos: vetor[1..100] de real
   qtdClientes, qtdDestinos, opcao: inteiro

procedimento CadastrarCliente()
inicio
   se qtdClientes < 100 entao
      escreval("Informe o nome do cliente:")
      leia(clientes[qtdClientes+1])

      escreval("Informe o CPF do cliente:")
      leia(cpfClientes[qtdClientes+1])

      escreval("Informe o telefone do cliente:")
      leia(telefoneClientes[qtdClientes+1])

      qtdClientes <- qtdClientes + 1
      escreval("Cliente cadastrado com sucesso!")
   senao
      escreval("Limite de clientes atingido.")
   fimse
fimprocedimento

procedimento CadastrarDestino()
inicio
   se qtdDestinos < 100 entao
      escreval("Informe o nome do destino:")
      leia(destinos[qtdDestinos+1])

      escreval("Informe a localizacao do destino:")
      leia(localizacaoDestinos[qtdDestinos+1])

      escreval("Informe o preco do destino:")
      leia(precoDestinos[qtdDestinos+1])

      qtdDestinos <- qtdDestinos + 1
      escreval("Destino cadastrado com sucesso!")
   senao
      escreval("Limite de destinos atingido.")
   fimse
fimprocedimento

procedimento ConsultarClientes()
inicio
   para i <- 1 ate qtdClientes faca
      escreval("Cliente ", i)
      escreval("Nome: ", clientes[i])
      escreval("CPF: ", cpfClientes[i])
      escreval("Telefone: ", telefoneClientes[i])
      escreval("")
   fimpara
fimprocedimento

procedimento ConsultarDestinos()
inicio
   para i <- 1 ate qtdDestinos faca
      escreval("Destino ", i)
      escreval("Nome: ", destinos[i])
      escreval("Localizacao: ", localizacaoDestinos[i])
      escreval("Preco: ", precoDestinos[i])
      escreval("")
   fimpara
fimprocedimento

inicio
   qtdClientes <- 0
   qtdDestinos <- 0
   opcao <- 0

   repita
      escreval("Menu:")
      escreval("1 - Cadastrar Cliente")
      escreval("2 - Cadastrar Destino")
      escreval("3 - Consultar Clientes")
      escreval("4 - Consultar Destinos")
      escreval("5 - Sair")
      escreval("Escolha uma opcao:")
      leia(opcao)

      escolha opcao
         caso 1
            CadastrarCliente()
         caso 2
            CadastrarDestino()
         caso 3
            ConsultarClientes()
         caso 4
            ConsultarDestinos()
      fimescolha
   ate opcao = 5
fimalgoritmo


