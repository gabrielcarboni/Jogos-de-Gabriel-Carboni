programa
{
	inclua biblioteca Util

	funcao inicio()
	{
		// ================================
		// LISTAS
		// ================================

		cadeia reino[10]
		cadeia historia[10]
		cadeia adj[10]
		cadeia poder[10]
		cadeia classe[5]
		cadeia item[4]
		cadeia inimigo[10]

		inteiro atkAdj[10]
		inteiro vidaAdj[10]
		inteiro pocAdj[10]

		inteiro atkPoder[10]
		inteiro vidaPoder[10]
		inteiro custoPoder[10]
		inteiro danoPoder[10]
		inteiro curaPoder[10]

		inteiro atkClasse[5]
		inteiro vidaClasse[5]

		inteiro atkItem[4]
		inteiro vidaItem[4]
		inteiro defItem[4]

		inteiro vidaE[10]
		inteiro atkE[10]
		inteiro xpE[10]
		inteiro moedaE[10]

		// ================================
		// REINOS
		// ================================

		reino[0] = "Aurora"
		reino[1] = "Sombras"
		reino[2] = "Cristal"
		reino[3] = "Trovao"
		reino[4] = "Gelo"
		reino[5] = "Cinzas"
		reino[6] = "Floresta"
		reino[7] = "Deserto"
		reino[8] = "Celestial"
		reino[9] = "Caos"

		// Historias maiores, mas simples para o projeto
		historia[0] = "Uma luz dourada ilumina as montanhas de Aurora. O reino parece tranquilo, mas uma estranha energia pode ser sentida no ar."

		historia[1] = "As sombras cobrem quase todo o reino. Poucos aventureiros conseguem atravessar este lugar sem sentir que estao sendo observados."

		historia[2] = "Grandes cristais surgem por toda parte. Eles guardam uma energia antiga que pode ser usada tanto para proteger quanto para destruir."

		historia[3] = "Raios atravessam o ceu sem parar. O som dos trovoes ecoa pelas montanhas e uma poderosa criatura protege este territorio."

		historia[4] = "Uma forte nevasca cobre o reino de Gelo. O frio dificulta cada passo, e poucos conseguem permanecer aqui por muito tempo."

		historia[5] = "Cinzas caem do ceu como se fossem chuva. As ruinas espalhadas pelo reino lembram uma antiga guerra que destruiu quase tudo."

		historia[6] = "A floresta parece estar viva. As arvores se movimentam com o vento e sons misteriosos surgem entre as folhas."

		historia[7] = "O deserto parece nao ter fim. Entre as grandes dunas existem ruinas antigas que escondem tesouros e perigos."

		historia[8] = "Uma energia brilhante cobre todo o reino. Criaturas celestiais observam os viajantes enquanto eles atravessam estas terras."

		historia[9] = "O caos tomou conta de tudo. O ceu esta escuro e a terra esta destruida. Uma poderosa presenca pode ser sentida ao longe."

		// ================================
		// ADJETIVOS
		// ================================

		adj[0] = "Lendario"
		adj[1] = "Imortal"
		adj[2] = "Implacavel"
		adj[3] = "Supremo"
		adj[4] = "Misterioso"
		adj[5] = "Invencivel"
		adj[6] = "Sombrio"
		adj[7] = "Divino"
		adj[8] = "Destruidor"
		adj[9] = "Eterno"

		atkAdj[0] = 10
		atkAdj[1] = 0
		atkAdj[2] = 15
		atkAdj[3] = 10
		atkAdj[4] = 0
		atkAdj[5] = 0
		atkAdj[6] = 5
		atkAdj[7] = 0
		atkAdj[8] = 20
		atkAdj[9] = 15

		vidaAdj[0] = 0
		vidaAdj[1] = 40
		vidaAdj[2] = 0
		vidaAdj[3] = 20
		vidaAdj[4] = 0
		vidaAdj[5] = 50
		vidaAdj[6] = 0
		vidaAdj[7] = 25
		vidaAdj[8] = 0
		vidaAdj[9] = 30

		pocAdj[0] = 0
		pocAdj[1] = 0
		pocAdj[2] = 0
		pocAdj[3] = 0
		pocAdj[4] = 2
		pocAdj[5] = 0
		pocAdj[6] = 0
		pocAdj[7] = 0
		pocAdj[8] = 0
		pocAdj[9] = 0

		// ================================
		// PODERES
		// ================================

		poder[0] = "Manipulacao do Tempo"
		poder[1] = "Manipulacao da Realidade"
		poder[2] = "Telecinese"
		poder[3] = "Teletransporte"
		poder[4] = "Regeneracao"
		poder[5] = "Controle da Gravidade"
		poder[6] = "Duplicacao"
		poder[7] = "Controle dos Elementos"
		poder[8] = "Invisibilidade"
		poder[9] = "Velocidade Suprema"

		atkPoder[0] = 30
		atkPoder[1] = 40
		atkPoder[2] = 25
		atkPoder[3] = 20
		atkPoder[4] = 0
		atkPoder[5] = 35
		atkPoder[6] = 45
		atkPoder[7] = 30
		atkPoder[8] = 15
		atkPoder[9] = 50

		vidaPoder[0] = 0
		vidaPoder[1] = 0
		vidaPoder[2] = 0
		vidaPoder[3] = 0
		vidaPoder[4] = 60
		vidaPoder[5] = 0
		vidaPoder[6] = 0
		vidaPoder[7] = 0
		vidaPoder[8] = 0
		vidaPoder[9] = 0

		custoPoder[0] = 25
		custoPoder[1] = 40
		custoPoder[2] = 20
		custoPoder[3] = 20
		custoPoder[4] = 20
		custoPoder[5] = 30
		custoPoder[6] = 35
		custoPoder[7] = 30
		custoPoder[8] = 25
		custoPoder[9] = 30

		danoPoder[0] = 0
		danoPoder[1] = 100
		danoPoder[2] = 80
		danoPoder[3] = 60
		danoPoder[4] = 0
		danoPoder[5] = 90
		danoPoder[6] = 120
		danoPoder[7] = 100
		danoPoder[8] = 0
		danoPoder[9] = 110

		curaPoder[0] = 0
		curaPoder[1] = 0
		curaPoder[2] = 0
		curaPoder[3] = 10
		curaPoder[4] = 60
		curaPoder[5] = 0
		curaPoder[6] = 0
		curaPoder[7] = 0
		curaPoder[8] = 40
		curaPoder[9] = 0

		// ================================
		// CLASSES
		// ================================

		classe[0] = "Guerreiro"
		classe[1] = "Mago"
		classe[2] = "Tanque"
		classe[3] = "Assassino"
		classe[4] = "Arqueiro"

		atkClasse[0] = 20
		atkClasse[1] = 30
		atkClasse[2] = 0
		atkClasse[3] = 15
		atkClasse[4] = 10

		vidaClasse[0] = 0
		vidaClasse[1] = 0
		vidaClasse[2] = 80
		vidaClasse[3] = 0
		vidaClasse[4] = 0

		// ================================
		// ITENS
		// ================================

		item[0] = "Espada"
		item[1] = "Armadura"
		item[2] = "Anel"
		item[3] = "Escudo"

		atkItem[0] = 15
		atkItem[1] = 0
		atkItem[2] = 10
		atkItem[3] = 0

		vidaItem[0] = 0
		vidaItem[1] = 40
		vidaItem[2] = 0
		vidaItem[3] = 0

		defItem[0] = 0
		defItem[1] = 0
		defItem[2] = 0
		defItem[3] = 5

		// ================================
		// INIMIGOS
		// ================================

		inimigo[0] = "Goblin"
		inimigo[1] = "Cavaleiro Sombrio"
		inimigo[2] = "Golem de Cristal"
		inimigo[3] = "Fera do Trovao"
		inimigo[4] = "Guardiao do Gelo"
		inimigo[5] = "Demonio das Cinzas"
		inimigo[6] = "Monstro da Floresta"
		inimigo[7] = "Rei do Deserto"
		inimigo[8] = "Anjo Caido"
		inimigo[9] = "Senhor do Caos"

		vidaE[0] = 40
		vidaE[1] = 55
		vidaE[2] = 70
		vidaE[3] = 85
		vidaE[4] = 100
		vidaE[5] = 115
		vidaE[6] = 130
		vidaE[7] = 145
		vidaE[8] = 165
		vidaE[9] = 190

		atkE[0] = 8
		atkE[1] = 10
		atkE[2] = 12
		atkE[3] = 14
		atkE[4] = 16
		atkE[5] = 18
		atkE[6] = 20
		atkE[7] = 22
		atkE[8] = 25
		atkE[9] = 30

		xpE[0] = 40
		xpE[1] = 50
		xpE[2] = 60
		xpE[3] = 70
		xpE[4] = 80
		xpE[5] = 90
		xpE[6] = 100
		xpE[7] = 110
		xpE[8] = 120
		xpE[9] = 150

		moedaE[0] = 10
		moedaE[1] = 15
		moedaE[2] = 20
		moedaE[3] = 25
		moedaE[4] = 30
		moedaE[5] = 35
		moedaE[6] = 40
		moedaE[7] = 50
		moedaE[8] = 60
		moedaE[9] = 100

		// ================================
		// VARIAVEIS
		// ================================

		cadeia nome
		cadeia enter
		inteiro mochila[3]

		inteiro vida = 100
		inteiro ataque = 20
		inteiro defesa = 0
		inteiro nivel = 1
		inteiro xp = 0
		inteiro moedas = 50
		inteiro pocoes = 3
		inteiro energia = 100

		inteiro sa
		inteiro sp
		inteiro sc
		inteiro si
		inteiro sr

		inteiro itemAtual = 0
		inteiro qItem = 1

		inteiro fase = 0
		inteiro vitorias = 0
		inteiro missao = 0

		inteiro menu
		inteiro acao
		inteiro i

		inteiro vidaMonstro
		inteiro dano
		inteiro critico
		inteiro novoItem
		inteiro fugiu
		inteiro novo

		inteiro invis = 0
		inteiro poderOk

		inteiro vidaChefe
		inteiro atkChefe

		// ================================
		// CRIACAO DO PERSONAGEM
		// ================================

		limpa()

		escreva("====================================\n")
		escreva("           RPG AVENTURA\n")
		escreva("====================================\n")
		escreva("\nBem-vindo, aventureiro!\n")
		escreva("Os 10 reinos estao em perigo.\n")
		escreva("Uma grande ameaca esta se aproximando.\n")
		escreva("\nNome: ")
		leia(nome)

		sa = Util.sorteia(0, 9)
		sp = Util.sorteia(0, 9)
		sc = Util.sorteia(0, 4)
		si = Util.sorteia(0, 3)

		mochila[0] = si

		ataque = ataque + atkAdj[sa] + atkPoder[sp] + atkClasse[sc] + atkItem[si]
		vida = vida + vidaAdj[sa] + vidaPoder[sp] + vidaClasse[sc] + vidaItem[si]
		defesa = defesa + defItem[si]
		pocoes = pocoes + pocAdj[sa]

		limpa()

		escreva("====================================\n")
		escreva("       PERSONAGEM CRIADO\n")
		escreva("====================================\n")
		escreva("Nome: ", nome, "\n")
		escreva("Classe: ", classe[sc], "\n")
		escreva("Titulo: ", adj[sa], "\n")
		escreva("Poder: ", poder[sp], "\n")
		escreva("Item: ", item[si], "\n")
		escreva("Vida: ", vida, "\n")
		escreva("Ataque: ", ataque, "\n")
		escreva("Defesa: ", defesa, "\n")
		escreva("Energia: ", energia, "\n")
		escreva("------------------------------------\n")
		escreva("Sua aventura comeca agora!\n")
		escreva("Os 10 reinos estao em perigo.\n")
		escreva("Sua missao e derrotar o Senhor do Caos.\n")
		escreva("Atravesse os reinos e fique mais forte.\n")

		escreva("\nPressione ENTER.")
		leia(enter)

		// ================================
		// JOGO
		// ================================

		enquanto(vida > 0 e fase < 10)
		{
			limpa()

			escreva("====================================\n")
			escreva("              MENU\n")
			escreva("====================================\n")
			escreva("Fase: ", fase + 1, "/10\n")
			escreva("Vida: ", vida, "\n")
			escreva("Ataque: ", ataque, "\n")
			escreva("Defesa: ", defesa, "\n")
			escreva("Energia: ", energia, "\n")
			escreva("Nivel: ", nivel, "  XP: ", xp, "\n")
			escreva("Moedas: ", moedas, "  Pocoes: ", pocoes, "\n")
			escreva("------------------------------------\n")
			escreva("1 - Explorar\n")
			escreva("2 - Status\n")
			escreva("3 - Loja\n")
			escreva("4 - Missao\n")
			escreva("5 - Inventario\n")
			escreva("6 - Sair\n")
			escreva("====================================\n")
			escreva("Escolha: ")
			leia(menu)

			escolha(menu)
			{
				// ================================
				// EXPLORAR
				// ================================

				caso 1:

					sr = Util.sorteia(0, 9)
					vidaMonstro = vidaE[fase]
					fugiu = 0

					limpa()

					escreva("====================================\n")
					escreva("          REINO DE ", reino[sr], "\n")
					escreva("====================================\n\n")
					escreva(historia[sr], "\n\n")
					escreva("------------------------------------\n")
					escreva("Um inimigo apareceu!\n")
					escreva("Inimigo: ", inimigo[fase], "\n")
					escreva("Vida: ", vidaMonstro, "\n")
					escreva("====================================\n")

					escreva("\nPressione ENTER.")
					leia(enter)

					enquanto(vida > 0 e vidaMonstro > 0 e fugiu == 0)
					{
						limpa()

						escreva("====================================\n")
						escreva("             BATALHA\n")
						escreva("====================================\n")
						escreva("Inimigo: ", inimigo[fase], "\n")
						escreva("Sua vida: ", vida, "\n")
						escreva("Vida inimigo: ", vidaMonstro, "\n")
						escreva("Energia: ", energia, "\n")
						escreva("------------------------------------\n")
						escreva("1 - Atacar\n")
						escreva("2 - Defender\n")
						escreva("3 - Pocao\n")
						escreva("4 - Poder\n")
						escreva("5 - Fugir\n")
						escreva("Escolha: ")
						leia(acao)

						escolha(acao)
						{
							caso 1:

								critico = Util.sorteia(1, 5)

								se(critico == 5)
								{
									vidaMonstro = vidaMonstro - ataque * 2
									escreva("\n*** GOLPE CRITICO! ***\n")
									escreva("Voce causou ", ataque * 2, " de dano!\n")
								}
								senao
								{
									vidaMonstro = vidaMonstro - ataque
									escreva("\nVoce atacou o ", inimigo[fase], "!\n")
									escreva("Dano causado: ", ataque, "\n")
								}

								se(vidaMonstro > 0)
								{
									se(invis == 0)
									{
										vida = vida - atkE[fase]
										escreva("O inimigo atacou voce!\n")
										escreva("Dano recebido: ", atkE[fase], "\n")
									}
									senao
									{
										escreva("Voce ficou invisivel e desviou do ataque!\n")
										invis = 0
									}
								}

								leia(enter)
								pare

							caso 2:

								dano = atkE[fase] - defesa

								se(dano < 1)
								{
									dano = 1
								}

								vida = vida - dano

								escreva("\nVoce levantou sua defesa!\n")
								escreva("Dano recebido: ", dano, "\n")

								leia(enter)
								pare

							caso 3:

								se(pocoes > 0)
								{
									vida = vida + 30
									pocoes--

									se(vida > 300)
									{
										vida = 300
									}

									escreva("\nVoce bebeu uma pocao!\n")
									escreva("Vida recuperada: +30\n")

									se(invis == 0)
									{
										vida = vida - atkE[fase]
										escreva("O inimigo aproveitou a abertura e atacou!\n")
										escreva("Dano recebido: ", atkE[fase], "\n")
									}
								}
								senao
								{
									escreva("\nSem pocoes!\n")
								}

								leia(enter)
								pare

							caso 4:

								poderOk = 0

								se(energia >= custoPoder[sp])
								{
									energia = energia - custoPoder[sp]
									poderOk = 1

									se(sp == 0)
									{
										vidaMonstro = vidaMonstro - ataque * 2
										escreva("\n*** MANIPULACAO DO TEMPO! ***\n")
										escreva("O tempo parece parar por alguns segundos!\n")
									}

									senao se(sp == 4)
									{
										vida = vida + curaPoder[sp]

										se(vida > 300)
										{
											vida = 300
										}

										escreva("\n*** REGENERACAO! ***\n")
										escreva("Sua vida foi restaurada!\n")
									}

									senao se(sp == 8)
									{
										vida = vida + curaPoder[sp]
										invis = 1

										se(vida > 300)
										{
											vida = 300
										}

										escreva("\n*** INVISIBILIDADE! ***\n")
										escreva("Voce desapareceu diante do inimigo!\n")
									}

									senao
									{
										vidaMonstro = vidaMonstro - danoPoder[sp]

										se(curaPoder[sp] > 0)
										{
											vida = vida + curaPoder[sp]

											se(vida > 300)
											{
												vida = 300
											}
										}

										escreva("\n*** ", poder[sp], "! ***\n")
										escreva("Dano causado: ", danoPoder[sp], "\n")
									}
								}
								senao
								{
									escreva("\nEnergia insuficiente!\n")
								}

								se(poderOk == 1 e vidaMonstro > 0 e invis == 0)
								{
									vida = vida - atkE[fase]
									escreva("O inimigo resistiu e atacou!\n")
									escreva("Dano recebido: ", atkE[fase], "\n")
								}

								leia(enter)
								pare

							caso 5:

								fugiu = 1
								escreva("\nVoce fugiu da batalha!\n")
								escreva("Talvez seja melhor se preparar antes de voltar.\n")

								leia(enter)
								pare

							caso contrario:

								escreva("\nOpcao invalida!\n")
								leia(enter)
						}
					}

					// ================================
					// VITORIA
					// ================================

					se(vida > 0 e vidaMonstro <= 0)
					{
						limpa()

						escreva("====================================\n")
						escreva("        INIMIGO DERROTADO!\n")
						escreva("====================================\n")
						escreva("\nVoce derrotou o ", inimigo[fase], "!\n")
						escreva("XP: +", xpE[fase], "\n")
						escreva("Moedas: +", moedaE[fase], "\n")

						xp = xp + xpE[fase]
						moedas = moedas + moedaE[fase]
						vitorias++

						se(energia < 80)
						{
							energia = energia + 20
						}
						senao
						{
							energia = 100
						}

						se(xp >= 100)
						{
							xp = xp - 100
							nivel++
							vida = vida + 20
							ataque = ataque + 5
							escreva("\n*** SUBIU DE NIVEL! ***\n")
							escreva("Vida +20\n")
							escreva("Ataque +5\n")
						}

						se(vitorias == 3 e missao == 0)
						{
							moedas = moedas + 50
							missao = 1
							escreva("\n*** MISSAO CONCLUIDA! ***\n")
							escreva("Recompensa: +50 moedas!\n")
						}

						novoItem = Util.sorteia(1, 5)

						se(novoItem == 5 e qItem < 3)
						{
							si = Util.sorteia(0, 3)
							mochila[qItem] = si
							qItem++

							escreva("\n*** ITEM ENCONTRADO: ", item[si], " ***\n")
						}

						fase++

						escreva("\nPressione ENTER.")
						leia(enter)
					}

					pare

				// ================================
				// STATUS
				// ================================

				caso 2:

					limpa()

					escreva("====================================\n")
					escreva("              STATUS\n")
					escreva("====================================\n")
					escreva("Nome: ", nome, "\n")
					escreva("Classe: ", classe[sc], "\n")
					escreva("Titulo: ", adj[sa], "\n")
					escreva("Poder: ", poder[sp], "\n")
					escreva("Item: ", item[mochila[itemAtual]], "\n")
					escreva("------------------------------------\n")
					escreva("Nivel: ", nivel, "\n")
					escreva("XP: ", xp, "\n")
					escreva("Vida: ", vida, "\n")
					escreva("Ataque: ", ataque, "\n")
					escreva("Defesa: ", defesa, "\n")
					escreva("Energia: ", energia, "\n")
					escreva("Moedas: ", moedas, "\n")
					escreva("Pocoes: ", pocoes, "\n")
					escreva("Vitorias: ", vitorias, "\n")

					escreva("\nPressione ENTER.")
					leia(enter)
					pare

				// ================================
				// LOJA
				// ================================

				caso 3:

					limpa()

					escreva("====================================\n")
					escreva("               LOJA\n")
					escreva("====================================\n")
					escreva("Moedas: ", moedas, "\n")
					escreva("1 - Pocao = 20\n")
					escreva("2 - +10 ataque = 50\n")
					escreva("3 - +20 vida = 50\n")
					escreva("4 - +5 defesa = 50\n")
					escreva("5 - Sair\n")
					escreva("Escolha: ")
					leia(acao)

					escolha(acao)
					{
						caso 1:

							se(moedas >= 20)
							{
								pocoes++
								moedas = moedas - 20
								escreva("\nPocao comprada!\n")
							}
							senao
							{
								escreva("\nMoedas insuficientes!\n")
							}

							pare

						caso 2:

							se(moedas >= 50)
							{
								ataque = ataque + 10
								moedas = moedas - 50
								escreva("\nSeu ataque aumentou!\n")
							}
							senao
							{
								escreva("\nMoedas insuficientes!\n")
							}

							pare

						caso 3:

							se(moedas >= 50)
							{
								vida = vida + 20
								moedas = moedas - 50
								escreva("\nSua vida aumentou!\n")
							}
							senao
							{
								escreva("\nMoedas insuficientes!\n")
							}

							pare

						caso 4:

							se(moedas >= 50)
							{
								defesa = defesa + 5
								moedas = moedas - 50
								escreva("\nSua defesa aumentou!\n")
							}
							senao
							{
								escreva("\nMoedas insuficientes!\n")
							}

							pare

						caso 5:

							pare

						caso contrario:

							escreva("\nOpcao invalida!\n")
					}

					escreva("\nPressione ENTER.")
					leia(enter)
					pare

				// ================================
				// MISSAO
				// ================================

				caso 4:

					limpa()

					escreva("====================================\n")
					escreva("              MISSAO\n")
					escreva("====================================\n")
					escreva("Derrote 3 inimigos para completar a missao.\n")
					escreva("Progresso: ", vitorias, "/3\n")

					se(missao == 1)
					{
						escreva("\nMissao concluida!\n")
						escreva("Recompensa recebida: 50 moedas.\n")
					}
					senao
					{
						escreva("\nContinue sua aventura!\n")
					}

					escreva("\nPressione ENTER.")
					leia(enter)
					pare

				// ================================
				// INVENTARIO
				// ================================

				caso 5:

					limpa()

					escreva("====================================\n")
					escreva("            INVENTARIO\n")
					escreva("====================================\n")

					para(i = 0; i < qItem; i++)
					{
						escreva(i + 1, " - ", item[mochila[i]])

						se(i == itemAtual)
						{
							escreva(" [EQUIPADO]")
						}

						escreva("\n")
					}

					escreva("\n0 - Sair\n")
					escreva("Escolha: ")
					leia(si)

					se(si > 0 e si <= qItem)
					{
						novo = si - 1

						ataque = ataque - atkItem[mochila[itemAtual]]
						vida = vida - vidaItem[mochila[itemAtual]]
						defesa = defesa - defItem[mochila[itemAtual]]

						itemAtual = novo

						ataque = ataque + atkItem[mochila[itemAtual]]
						vida = vida + vidaItem[mochila[itemAtual]]
						defesa = defesa + defItem[mochila[itemAtual]]

						escreva("\nItem equipado!\n")
						escreva("Agora voce esta usando: ", item[mochila[itemAtual]], "\n")
					}

					escreva("\nPressione ENTER.")
					leia(enter)
					pare

				// ================================
				// SAIR
				// ================================

				caso 6:

					limpa()

					escreva("====================================\n")
					escreva("          ATE A PROXIMA!\n")
					escreva("====================================\n")
					escreva("\nObrigado por jogar, ", nome, "!\n")

					retorne

				caso contrario:

					escreva("\nOpcao invalida!\n")
					leia(enter)
			}
		}

		// ================================
		// CHEFE FINAL
		// ================================

		se(vida > 0)
		{
			vidaChefe = 300
			atkChefe = 35

			limpa()

			escreva("====================================\n")
			escreva("           SENHOR DO CAOS\n")
			escreva("====================================\n\n")
			escreva("Os dez reinos ficaram para tras.\n")
			escreva("Voce chegou ao fim da sua jornada.\n\n")
			escreva("O ceu escurece...\n")
			escreva("Uma enorme sombra surge diante de voce.\n\n")
			escreva("\"Voce realmente achou que conseguiria me derrotar?\"\n\n")
			escreva("O Senhor do Caos esta diante de voce.\n")
			escreva("Esta sera sua batalha mais dificil.\n")

			escreva("\nPressione ENTER.")
			leia(enter)

			enquanto(vida > 0 e vidaChefe > 0)
			{
				limpa()

				escreva("====================================\n")
				escreva("           CHEFE FINAL\n")
				escreva("====================================\n")
				escreva("Sua vida: ", vida, "\n")
				escreva("Energia: ", energia, "\n")
				escreva("Vida chefe: ", vidaChefe, "\n")
				escreva("------------------------------------\n")
				escreva("1 - Atacar\n")
				escreva("2 - Defender\n")
				escreva("3 - Pocao\n")
				escreva("4 - Poder\n")
				escreva("Escolha: ")
				leia(acao)

				escolha(acao)
				{
					caso 1:

						critico = Util.sorteia(1, 5)

						se(critico == 5)
						{
							vidaChefe = vidaChefe - ataque * 2
							escreva("\n*** GOLPE CRITICO! ***\n")
							escreva("Voce causou ", ataque * 2, " de dano!\n")
						}
						senao
						{
							vidaChefe = vidaChefe - ataque
							escreva("\nVoce atacou o Senhor do Caos!\n")
							escreva("Dano causado: ", ataque, "\n")
						}

						se(vidaChefe > 0)
						{
							se(invis == 0)
							{
								vida = vida - atkChefe
								escreva("O Senhor do Caos atacou!\n")
								escreva("Dano recebido: ", atkChefe, "\n")
							}
							senao
							{
								escreva("Voce desviou do ataque usando a invisibilidade!\n")
								invis = 0
							}
						}

						leia(enter)
						pare

					caso 2:

						dano = atkChefe - defesa

						se(dano < 1)
						{
							dano = 1
						}

						vida = vida - dano
						escreva("\nVoce defendeu!\n")
						escreva("Dano recebido: ", dano, "\n")

						leia(enter)
						pare

					caso 3:

						se(pocoes > 0)
						{
							vida = vida + 30
							pocoes--

							se(vida > 300)
							{
								vida = 300
							}

							vida = vida - atkChefe

							escreva("\nPocao usada!\n")
							escreva("Voce recuperou 30 de vida.\n")
							escreva("O chefe aproveitou a abertura e atacou!\n")
						}
						senao
						{
							escreva("\nSem pocoes!\n")
						}

						leia(enter)
						pare

					caso 4:

						se(energia >= custoPoder[sp])
						{
							energia = energia - custoPoder[sp]

							se(sp == 0)
							{
								vidaChefe = vidaChefe - ataque * 2
								escreva("\n*** MANIPULACAO DO TEMPO! ***\n")
								escreva("O chefe recebeu ", ataque * 2, " de dano!\n")
							}
							senao se(sp == 4)
							{
								vida = vida + 60
								escreva("\n*** REGENERACAO! ***\n")
								escreva("Voce recuperou 60 de vida!\n")
							}
							senao se(sp == 8)
							{
								vida = vida + 40
								invis = 1
								escreva("\n*** INVISIBILIDADE! ***\n")
								escreva("O chefe nao consegue mais encontrar voce!\n")
							}
							senao
							{
								vidaChefe = vidaChefe - danoPoder[sp]

								se(curaPoder[sp] > 0)
								{
									vida = vida + curaPoder[sp]
								}

								escreva("\n*** ", poder[sp], "! ***\n")
								escreva("Dano causado: ", danoPoder[sp], "\n")
							}

							se(vida > 300)
							{
								vida = 300
							}

							se(vidaChefe > 0 e invis == 0)
							{
								vida = vida - atkChefe
								escreva("O Senhor do Caos contra-atacou!\n")
								escreva("Dano recebido: ", atkChefe, "\n")
							}
						}
						senao
						{
							escreva("\nEnergia insuficiente!\n")
						}

						leia(enter)
						pare

					caso contrario:

						escreva("\nOpcao invalida!\n")
						leia(enter)
				}
			}

			// ================================
			// FINAIS
			// ================================

			limpa()

			se(vida <= 0)
			{
				escreva("====================================\n")
				escreva("             GAME OVER\n")
				escreva("====================================\n")
				escreva("\nA jornada chegou ao fim.\n")
				escreva("Mas talvez outra aventura ainda esteja esperando por voce.\n")
			}
			senao se(nivel >= 8)
			{
				escreva("====================================\n")
				escreva("         FINAL LENDARIO!\n")
				escreva("====================================\n")
				escreva("\n", nome, " salvou os 10 reinos!\n")
				escreva("Seu nome sera lembrado por todas as geracoes.\n")
				escreva("Voce se tornou uma verdadeira lenda.\n")
			}
			senao se(nivel >= 5)
			{
				escreva("====================================\n")
				escreva("          FINAL HEROICO!\n")
				escreva("====================================\n")
				escreva("\n", nome, " derrotou o Senhor do Caos!\n")
				escreva("A paz finalmente voltou aos dez reinos.\n")
			}
			senao
			{
				escreva("====================================\n")
				escreva("           FINAL NORMAL\n")
				escreva("====================================\n")
				escreva("\n", nome, " conseguiu vencer!\n")
				escreva("Sua aventura chegou ao fim.\n")
			}

			escreva("\nNivel final: ", nivel, "\n")
			escreva("Moedas: ", moedas, "\n")
			escreva("Vitorias: ", vitorias, "\n")
			escreva("====================================\n")
		}
	}
}
