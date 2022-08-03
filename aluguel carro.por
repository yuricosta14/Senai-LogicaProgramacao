programa
{
	
	funcao inicio()
	{
		const real precoHatch = 205.00
		const real precoSuv = 560.00
		const real precoSedan = 856.00
		inteiro opcao, diaria
		inteiro diasHb20, diasOnix, diasRenegade, diasCreta, diasCivic, diasCorola
		cadeia nome, modelo
		inteiro Hb20, Onix, Renegade, Creta, Civic, Corola
		inteiro numero
		real valorfinal
		

		escreva("Digite seu nome: ")
		leia(nome)

		escreva("Quantidade de dias: ")
		leia(diaria)
		
		escreva("1) Hatch \n")
		escreva("2) Suv \n")
		escreva("3) Sedan \n\n")

		escreva("Qual opção deseja escolher: ")
		leia(opcao)

		limpa()

		


		escolha(opcao)
		{
			caso 1: 
			escreva("Hb20, Onix: ")
			escreva("\nSelecione o carro que deseja alugar: ")
			leia(modelo)
			valorfinal = diaria * precoHatch
			escreva("\nVocê selecionou o modelo ", modelo, " e o valor final da locação e de R$ ", valorfinal, " por ", diaria, " diarias boa viajem." )
			pare

			caso 2:
			escreva("Renegade, Creta: ")
			escreva("\nSelecione o carro que deseja alugar: ")
			leia(modelo)
			valorfinal = diaria * precoSuv
			escreva("\nVocê selecionou o modelo ", modelo, " e o valor final da locação e de R$ ", valorfinal, " por ", diaria, " diarias boa viajem." )
			pare
			
			caso 3: 
			escreva("Civic, Corola: ")
			escreva("\nSelecione o carro que deseja alugar: ")
			leia(modelo)
			valorfinal = diaria * precoSedan
			escreva("\nVocê selecionou o modelo ", modelo, " e o valor final da locação e de R$ ", valorfinal, " por ", diaria, " diarias boa viajem." )
			pare

			
		
		}
		
		
		
		
			

			
			
			
		
			
				
			

	  	
		
		

		


		

		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 357; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */