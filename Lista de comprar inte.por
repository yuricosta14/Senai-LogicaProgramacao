programa
{
	inclua biblioteca Tipos
	
	inteiro opcao, quantidadeProduto, linha, coluna, totalColunas
	cadeia produtos, compra, nomeProduto, nomeCompra
	cadeia matrizGeral[999][6], quantidadeAnual, valorMedio
	logico achouProduto = falso
	real converteAnual, mediaMensal, quantidadeEstoque, valorAtual, converteValorMedio, valorMedioConvertido 
	
	
	funcao inicio()
	{		
		escreva("BEM VINDO a nossa lista de compra inteligente\n")

		queFazer()
	}

	funcao queFazer ()
	{
		escreva("Nos informe oque deseja fazer\n Digite [1] para CADASTRAR produtos \nDigite [2] para COMPRAR produtos \nDigite [3] para SAIR do sistema\n")
			leia(opcao)
		
		escolha (opcao)	
		{
			caso 1: 
		 		cadastrar()
		 		pare
		 		  
		 	caso 2: 
		 		comprar()
		 		pare 
		 		  
		 	caso 3: 
		 		sair()
		 		pare
		 		
		 	caso contrario: 
		 		escreva ("Essa opção não e valida")
		}

		escreva("\n")
	}


	funcao cadastrar ()
	{
		escreva("\nInforme a QUANTIDADE de produtos que deseja cadastrar nesse momento: \n")
			leia(quantidadeProduto)

			totalColunas = 4
		
		para(linha = 0; linha < quantidadeProduto; linha++)
		{
			para(coluna = 0; coluna < totalColunas; coluna++)
			{
				escreva("\nInforme o NOME do produto: \n")
					leia(nomeProduto)
					matrizGeral[linha][coluna] = nomeProduto
					coluna++
				escreva("\nInforme a QUANTIDADE anual que consome: \n")
					leia(quantidadeAnual)
					matrizGeral[linha][coluna] = quantidadeAnual
					coluna++
				escreva("\nInforme a VALOR MÉDIO do produto: \n")
					leia(valorMedio)
					matrizGeral[linha][coluna] = valorMedio
					coluna++
			}
		}
		queFazer()
	}


	funcao comprar ()
	{
		escreva("\n\nÓtimo! Vamos então iniciar uma nova compra! \n\n")
				escreva ("Qual o produto que deseja comprar??? \n")
				leia(nomeCompra)
				
				para (linha = 0; linha < quantidadeProduto; linha++)
				{
					//para(coluna = 0; coluna < totalColunas; coluna++)
					//{
						se (matrizGeral[linha][0] == nomeCompra)
						{
							achouProduto = verdadeiro  
							decisao()
						}
						senao 
						{
							faltaCadastro()
						}
					//}
				}
		 		
	}

	funcao decisao ()
	{
		se(achouProduto == verdadeiro)
		{
		
		escreva("\nProduto já cadastrado. \n")
			escreva("Informe a QUANTIDADE desse produto que você possui no ESTOQUE: \n")
				leia(quantidadeEstoque)
			escreva("Informe o VALOR ATUAL do produto: \n")
				leia(valorAtual)

				//achouProduto = falso
		

		para(linha = 0; linha < quantidadeProduto; linha++)
			{		
				converteAnual = Tipos.cadeia_para_real(matrizGeral[linha][1])
				mediaMensal = converteAnual / 12
				converteValorMedio = Tipos.cadeia_para_real(matrizGeral[linha][2])
				valorMedioConvertido = converteValorMedio

				//achouProduto = falso

				se(quantidadeEstoque < mediaMensal e valorAtual < valorMedioConvertido)
				{
					escreva("Produto encotra-se com ESTOQUE baixo.\n")
					escreva("Valor está acessival para a compra.\n")
					escreva("Você deve COMPRAR O PRODUTO AGORA MESMO.\n")
					pare
				}
				senao se(quantidadeEstoque < mediaMensal e valorAtual == valorMedioConvertido)
				{
					escreva("Você está com estoque BAIXO do produto.\n")
					escreva("O produto está com VALOR MÉDIO ESTÁVEL.\n")
					escreva("Você deve COMPRAR O PRODUTO agora mesmo.\n")
					pare
				}
				senao se(quantidadeEstoque < mediaMensal e valorAtual > valorMedioConvertido)
				{
					escreva("Você está com estoque BAIXO do produto.\n")
					escreva("O produto está com VALOR MÉDIO ACIMA do geralmente praticado.\n")
					escreva("Você deve COMPRAR O PRODUTO assim que for POSSÍVEL dentro das condições financeiras que possui.\n")
					pare
				}
				senao se(quantidadeEstoque > mediaMensal e valorAtual < valorMedioConvertido)
				{
					escreva("Você está com estoque ALTO do produto.\n")
					escreva("O produto está com VALOR MÉDIO ABAIXO do geralmente praticado.\n")
					escreva("Dessa forma, recomendamos COMPRAR O PRODUTO para ECONOMIZAR recursos financeiros.\n")
					pare
				}
				senao se(quantidadeEstoque > mediaMensal e valorAtual == valorMedioConvertido)
				{
					escreva("Você está com estoque ALTO do produto.\n")
					escreva("O produto está com VALOR MÉDIO ESTÁVEL do geralmente praticado.\n")
					escreva("Dessa forma, você SÓ DEVE COMPRAR o produto se houver alguma necessidade específica.\n")
					pare
				}
				senao se(quantidadeEstoque > mediaMensal e valorAtual > valorMedioConvertido)
				{
					escreva("Você está com estoque ALTO do produto.\n")
					escreva("O produto está com VALOR MÉDIO ACIMA do geralmente praticado.\n")
					escreva("Dessa forma, recomendamos NÃO COMPRAR O PRODUTO.\n")
					pare
				}
				senao se(quantidadeEstoque == mediaMensal e valorAtual < valorMedioConvertido)
				{
					escreva("Você está com estoque NORMAL do produto.\n")
					escreva("O produto está com VALOR MÉDIO BAIXO em relação ao geralmente praticado.\n")
					escreva("Dessa forma, recomendamos COMPRAR O PRODUTO para ECONOMIZAR recursos financeiros.\n")
					pare
				}
				senao se(quantidadeEstoque == mediaMensal e valorAtual == valorMedioConvertido)
				{
					escreva("Você está com estoque NORMAL do produto.\n")
					escreva("O produto está com VALOR MÉDIO ESTÁVEL em relação ao geralmente praticado.\n")
					escreva("Dessa forma, você SÓ DEVE COMPRAR o produto se houver alguma necessidade específica.\n")
					pare
				}
				senao se(quantidadeEstoque == mediaMensal e valorAtual > valorMedioConvertido)
				{
					escreva("Você está com estoque NORMAL do produto.\n")
					escreva("O produto está com VALOR MÉDIO ACIMA do valor geralmente praticado.\n")
					escreva("Dessa forma, você NÃO DEVE COMPRAR o produto.\n")
					pare
				}
			}
		}
	}
		

		

		funcao faltaCadastro()
		{
		se(achouProduto == falso)
		{
			escreva("\nProduto NÃO cadastrado. Você deve cadastrar o produto para voltar as compras. \n")
		}
		}


		funcao sair()
		{
			escreva("\nSistema encerrado. Obrigado pela preferência ;)\n")





















//─────────────────────────────────
//───────────────▄████████▄────────
//─────────────▄█▀▒▒▒▒▒▒▒▀██▄──────
//───────────▄█▀▒▒▒▒▒▒▒▒▒▒▒██──────
//─────────▄█▀▒▒▒▒▒▒▄▒▒▒▒▒▒▐█▌─────
//────────▄█▒▒▒▒▒▒▒▒▀█▒▒▒▒▒▐█▌─────
//───────▄█▒▒▒▒▒▒▒▒▒▒▀█▒▒▒▄██──────
//──────▄█▒▒▒▒▒▒▒▒▒▒▒▒▀█▒▄█▀█▄─────
//─────▄█▒▒▒▒▒▒▒▒▒▒▒▒▒▒██▀▒▒▒█▄────
//────▄█▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒█▄───
//───▄█▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒█▄──
//──▄█▒▒▒▄██████▄▒▒▒▒▄█████▄▒▒▒▒█──
//──█▒▒▒█▀░░░░░▀█─▒▒▒█▀░░░░▀█▒▒▒█──
//──█▒▒▒█░░▄░░░░▀████▀░░░▄░░█▒▒▒█──
//▄███▄▒█▄░▐▀▄░░░░░░░░░▄▀▌░▄█▒▒███▄
//█▀░░█▄▒█░▐▐▀▀▄▄▄─▄▄▄▀▀▌▌░█▒▒█░░▀█
//█░░░░█▒█░▐▐──▄▄─█─▄▄──▌▌░█▒█░░░░█
//█░▄░░█▒█░▐▐▄─▀▀─█─▀▀─▄▌▌░█▒█░░▄░█
//█░░█░█▒█░░▌▄█▄▄▀─▀▄▄█▄▐░░█▒█░█░░█
//█▄░█████████▀░░▀▄▀░░▀█████████░▄█
//─██▀░░▄▀░░▀░░▀▄░░░▄▀░░▀░░▀▄░░▀██
//██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░██
//█░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░█
//█░▄░░░░░░░░░░░░░░░░░░░░░░░░░░░▄░█
//█░▀█▄░░░░░░░░░░░░░░░░░░░░░░░▄█▀░█
//█░░█▀███████████████████████▀█░░█
//█░░█────█───█───█───█───█────█░░█
//█░░▀█───█───█───█───█───█───█▀░░█
//█░░░▀█▄▄█▄▄▄█▄▄▄█▄▄▄█▄▄▄█▄▄█▀░░░█
//▀█░░░█──█───█───█───█───█──█░░░█▀
//─▀█░░▀█▄█───█───█───█───█▄█▀░░█▀─
//──▀█░░░▀▀█▄▄█───█───█▄▄█▀▀░░░█▀──
//───▀█░░░░░▀▀█████████▀▀░░░░░█▀───
//────▀█░░░░░▄░░░░░░░░░▄░░░░░█▀────
//─────▀██▄░░░▀▀▀▀▀▀▀▀▀░░░▄██▀─────
//────────▀██▄▄░░░░░░░▄▄██▀────────
//───────────▀▀███████▀▀───────────

		}
		
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 6128; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */