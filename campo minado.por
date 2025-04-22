programa
{
	inclua biblioteca Util
	
	funcao inicio()
	{
		inteiro opcao = 0
		inteiro matriz1[5][5], matriz2[10][10], col = 0, lin = 1, i = 0, jogada = 0, sorte = 0, bomba = 0, status = 0
		cadeia nome1, nome2

		enquanto (opcao != 9)
		{
			escreva("\n")
			escreva("\n:: CAMPO MINADO MELZINHO NA CHUPETA ::\n" )
			escreva("1...Iniciar jogo 5x5\n" )
			escreva("2...iniciar jogo 10x10\n" )
			escreva("3...Exibir Regras\n" )
			escreva("4...Instruções para jogar\n" )
			escreva("9...Sair\n" )
			escreva("Digite Opção:" )
			leia(opcao)

			se (opcao == 1)
			{
				escreva("\nDigite o nome do player1: ")
				leia(nome1)
				escreva("\nDigite o nome do player2: ")
				leia(nome2)

				
			
			 para (lin = 0; lin < 5; lin++) 
                {
                    para (col = 0; col < 5; col++) 
                    {
                    	se(bomba < 5)
                    	{
                        		matriz1[lin][col] = Util.sorteia(0, 1)
                        		se(matriz1[lin][col] == 1)
                        		{
                        			 bomba = bomba + 1
                        		}	
                    	}
                        
                    }
                 }
                 escreva(bomba)
                 
			
			
			escreva("\n")


			//escreva as posições
                	para (lin = 0; lin < 5; lin++) 
                {
                    para (col = 0; col < 5; col++)
                    {
                        escreva("\nmatriz[" + lin + "] x [" + col + "] = " + matriz1[lin][col])
                    }
                }




			//jogadas 
			para(jogada = 0; jogada < 25; jogada++)
			
			{
				//verificar se acabou o jogo ou nao
				se(status < 1)
				{
					//jogadas do player1
					para (i = 0; i < 1; i++) 
               		{
               			escreva("\n")
               			escreva("\njogador 1")
                			escreva("\nDigite o valor para linha: ")
                    		leia(lin)
                    		escreva("Digite o valor para coluna: ")
                    		leia(col)
                    		//
                    		enquanto(matriz1[lin][col] == 10 ou col >= 5 ou lin >= 5)
                    		{
                    			escreva("Campo ja jogado ou coluna/linha é maior q 4 digite outro campo")
                    			escreva("\n")
               				escreva("\njogador 1")
                				escreva("\nDigite o valor para linha: ")
                    			leia(lin)
                    			escreva("Digite o valor para coluna: ")
                    			leia(col)
                    		}        			
               				escreva("Campo[" + lin + "] x [" + col + "] = " + matriz1[lin][col])
               				
							se(matriz1[lin][col] == 1)
                    			{
                    				escreva("\nPERDEU!!!! Jogador2 "+ nome2 + " VENCEU")
                    				status = status + 1
                    			}
               		}
               		matriz1[lin][col] = 10
				 }		

				se(status < 1)
				{
					//jogadas do player2
					para (i = 0; i < 1; i++) 
               		{
               			escreva("\n")
               			escreva("\njogador 2")
                			escreva("\nDigite o valor para linha: ")
                    		leia(lin)
                    		escreva("Digite o valor para coluna: ")
                    		leia(col)
                    		//armazenar variavel ja acessada, guardando ela e verificando se e igual a outra
                    		enquanto(matriz1[lin][col] == 10 ou col >= 5 ou lin >= 5)
                    		{
                    			escreva("Campo ja jogado ou coluna/linha é maior q 4 digite outro campo")
                    			escreva("\n")
               				escreva("\njogador 2")
                				escreva("\nDigite o valor para linha: ")
                    			leia(lin)
                    			escreva("Digite o valor para coluna: ")
                    			leia(col)
                    		}
                    			escreva("Campo[" + lin + "] x [" + col + "] = " + matriz1[lin][col])
               		
							se(matriz1[lin][col] == 1)
                    			{
                    				escreva("\nPERDEU!!!! Jogador1 "+ nome1 + " VENCEU")
                    				status = status + 1
                    			}
               		}
               		matriz1[lin][col] = 10
				}
			}
					
					jogada = jogada + 1
				
			}
			senao se (opcao == 2) 
			{
				escreva("\nDigite o nome do player1: ")
				leia(nome1)
				escreva("\nDigite o nome do player2: ")
				leia(nome2)

				
			
			 para (lin = 0; lin < 10; lin++) 
                {
                    para (col = 0; col < 10; col++) 
                    {
                    	se(bomba < 20)
                    	{
                        		matriz2[lin][col] = Util.sorteia(0, 1)
                        		se(matriz2
                        		[lin][col] == 1)
                        		{
                        			 bomba = bomba + 1
                        		}	
                    	}
                        
                    }
                 }
                 escreva(bomba)
                 
			
			
			escreva("\n")


			//escreva as posições para manter controle de quantidade de bombas
                	para (lin = 0; lin < 10; lin++) 
                {
                    para (col = 0; col < 10; col++)
                    {
                        escreva("\nmatriz[" + lin + "] x [" + col + "] = " + matriz2[lin][col])
                    }
                }




			//jogadas 
			para(jogada = 0; jogada < 100; jogada++)
			
			{
				//verificar se acabou o jogo ou nao
				se(status < 1)
				{
					//jogadas do player1
					para (i = 0; i < 1; i++) 
               		{
               			escreva("\n")
               			escreva("\njogador 1")
                			escreva("\nDigite o valor para linha: ")
                    		leia(lin)
                    		escreva("Digite o valor para coluna: ")
                    		leia(col)
                    		//armazenar variavel ja acessada, guardando ela e verificando se e igual a outra
                    		enquanto(matriz2[lin][col] == 10 ou col >= 9 ou lin >= 9)
                    		{
                    			escreva("Campo ja jogado ou coluna/linha é maior que 9, digite outro campo")
                    			escreva("\n")
               				escreva("\njogador 1")
                				escreva("\nDigite o valor para linha: ")
                    			leia(lin)
                    			escreva("Digite o valor para coluna: ")
                    			leia(col)
                    		}        			
               				escreva("Campo[" + lin + "] x [" + col + "] = " + matriz2[lin][col])
               				
							se(matriz2[lin][col] == 1)
                    			{
                    				escreva("\nPERDEU!!!!Jogador2 "+ nome2 + " VENCEU")
                    				status = status + 1
                    			}
               		}
               		matriz2[lin][col] = 10
				 }		

				se(status < 1)
				{
					//jogadas do player2
					para (i = 0; i < 1; i++) 
               		{
               			escreva("\n")
               			escreva("\njogador 2")
                			escreva("\nDigite o valor para linha: ")
                    		leia(lin)
                    		escreva("Digite o valor para coluna: ")
                    		leia(col)
                    		//armazenar variavel ja acessada, guardando ela e verificando se e igual a outra
                    		enquanto(matriz2[lin][col] == 10 ou col >= 9 ou lin >= 9)
                    		{
                    			escreva("Campo ja jogado ou coluna/linha é maior que 9, digite outro campo")
                    			escreva("\n")
               				escreva("\njogador 2")
                				escreva("\nDigite o valor para linha: ")
                    			leia(lin)
                    			escreva("Digite o valor para coluna: ")
                    			leia(col)
                    		}
                    			escreva("Campo[" + lin + "] x [" + col + "] = " + matriz2[lin][col])
               		
							se(matriz2[lin][col] == 1)
                    			{
                    				escreva("\nPERDEU!!!! Jogador1 "+ nome1 + " VENCEU")
                    				status = status + 1
                    			}
               		}
               		matriz2[lin][col] = 10
				}
			}
					
					jogada = jogada + 1
			}
			senao se (opcao == 3) 
			{
				escreva("cada jogador deverá jogar uma linha e uma coluna\nse caso a posição jogada tiver uma bomba o jogador q caiu nela perderá\ne o outro jogador vencerá a partida")
			}
			senao se (opcao == 4) 
			{
				escreva("Cada começo de partida sera solicitado o nome de ambos os jogadores, após isso o jogador1 comecará a jogada.\nJOGO 5X5:\nNa opção de jogo de 5x5 ao total será 25 campos e 20% deles será sorteado bombas, sou seja, tera 5 bombas por partida\nas colunas e linhas o jogador deve jogar de 0 a 4 caso seja maior que isso pedirá para o jogador jogar novamente.\nJOGO 10X10:\nNa opção de jogo de 10x10 ao total será 100 campos e 20% deles será sorteado bombas, sou seja, tera 20 bombas por partida\nas colunas e linhas o jogador deve jogar de 0 a 9 caso seja maior que isso pedirá para o jogador jogar novamente.")
			}
			 senao se (opcao == 9) 
            	{
                	escreva("JOGO FINALIZADO...\n")
            	}
            	senao
            	{
               	 escreva("Opção inválida, digite uma das opções acima.\n")
            	}	

			
		}



		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 7574; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */