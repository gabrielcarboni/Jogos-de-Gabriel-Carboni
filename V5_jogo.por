programa
{
	inclua biblioteca Util

	funcao inicio()
	{
		// =========================================
		// LISTAS
		// =========================================

		cadeia reino[10]
		cadeia adj[10]
		cadeia poder[10]
		cadeia classe[5]
		cadeia item[4]
		cadeia inimigo[10]

		inteiro vidaE[10]
		inteiro ataqueE[10]
		inteiro xpE[10]
		inteiro moedaE[10]

		// =========================================
		// 10 REINOS
		// =========================================

		reino[0] = "Reino da Aurora"
		reino[1] = "Reino das Sombras"
		reino[2] = "Reino de Cristal"
		reino[3] = "Reino do Trovao"
		reino[4] = "Reino do Gelo"
		reino[5] = "Reino das Cinzas"
		reino[6] = "Reino da Floresta"
		reino[7] = "Reino do Deserto"
		reino[8] = "Reino Celestial"
		reino[9] = "Reino do Caos"

		// =========================================
		// 10 ADJETIVOS
		// =========================================

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

		// =========================================
		// 10 PODERES
		// =========================================

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

		// =========================================
		// 5 CLASSES
		// =========================================

		classe[0] = "Guerreiro"
		classe[1] = "Mago"
		classe[2] = "Tanque"
		classe[3] = "Assassino"
		classe[4] = "Arqueiro"

		// =========================================
		// 4 ITENS
		// =========================================

		item[0] = "Espada"
		item[1] = "Armadura"
		item[2] = "Anel"
		item[3] = "Escudo"

		// =========================================
		// 10 INIMIGOS
		// =========================================

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

		// =========================================
		// DADOS DOS INIMIGOS
		// =========================================

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

		ataqueE[0] = 8
		ataqueE[1] = 10
		ataqueE[2] = 12
		ataqueE[3] = 14
		ataqueE[4] = 16
		ataqueE[5] = 18
		ataqueE[6] = 20
		ataqueE[7] = 22
		ataqueE[8] = 25
		ataqueE[9] = 30

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

		// =========================================
		// DADOS DO JOGADOR
		// =========================================

		cadeia nome
		cadeia titulo
		cadeia meuPoder
		cadeia minhaClasse

		cadeia mochila[3]

		inteiro vida = 100
		inteiro ataque = 20
		inteiro defesa = 0
		inteiro nivel = 1
		inteiro xp = 0
		inteiro moedas = 50
		inteiro pocoes = 3

		inteiro sa
		inteiro sp
		inteiro sc
		inteiro si
		inteiro sr

		inteiro qItem = 0
		inteiro itemAtual = -1

		inteiro fase = 0
		inteiro menu
		inteiro acao

		inteiro vidaMonstro
		inteiro dano
		inteiro critico
		inteiro ganhouItem
		inteiro fugiu
		inteiro vitorias = 0
		inteiro missao = 0

		inteiro itemNovo
		inteiro i

		cadeia enter

		// =========================================
		// INICIO
		// =========================================

		limpa()

		escreva("====================================\n")
		escreva("           RPG AVENTURA\n")
		escreva("====================================\n")
		escreva("\n")

		escreva("Digite o nome do personagem: ")
		leia(nome)

		// =========================================
		// SORTEIOS
		// =========================================

		sa = Util.sorteia(0, 9)
		sp = Util.sorteia(0, 9)
		sc = Util.sorteia(0, 4)
		si = Util.sorteia(0, 3)

		titulo = adj[sa]
		meuPoder = poder[sp]
		minhaClasse = classe[sc]

		// =========================================
		// ITEM INICIAL
		// =========================================

		mochila[0] = item[si]
		qItem = 1
		itemAtual = 0

		// =========================================
		// BONUS DA CLASSE
		// =========================================

		se(sc == 0)
		{
			ataque = ataque + 20
		}
		senao se(sc == 1)
		{
			ataque = ataque + 30
		}
		senao se(sc == 2)
		{
			vida = vida + 80
		}
		senao se(sc == 3)
		{
			ataque = ataque + 15
		}
		senao
		{
			ataque = ataque + 10
		}

		// =========================================
		// BONUS DO ADJETIVO
		// =========================================

		se(sa == 0)
		{
			ataque = ataque + 10
		}
		senao se(sa == 1)
		{
			vida = vida + 40
		}
		senao se(sa == 2)
		{
			ataque = ataque + 15
		}
		senao se(sa == 3)
		{
			vida = vida + 20
			ataque = ataque + 10
		}
		senao se(sa == 4)
		{
			pocoes = pocoes + 2
		}
		senao se(sa == 5)
		{
			vida = vida + 50
		}
		senao se(sa == 6)
		{
			ataque = ataque + 5
		}
		senao se(sa == 7)
		{
			vida = vida + 25
		}
		senao se(sa == 8)
		{
			ataque = ataque + 20
		}
		senao
		{
			vida = vida + 30
			ataque = ataque + 15
		}

		// =========================================
		// BONUS DO PODER
		// =========================================

		se(sp == 0)
		{
			ataque = ataque + 30
		}
		senao se(sp == 1)
		{
			ataque = ataque + 40
		}
		senao se(sp == 2)
		{
			ataque = ataque + 25
		}
		senao se(sp == 3)
		{
			ataque = ataque + 20
		}
		senao se(sp == 4)
		{
			vida = vida + 60
		}
		senao se(sp == 5)
		{
			ataque = ataque + 35
		}
		senao se(sp == 6)
		{
			ataque = ataque + 45
		}
		senao se(sp == 7)
		{
			ataque = ataque + 30
		}
		senao se(sp == 8)
		{
			ataque = ataque + 15
		}
		senao
		{
			ataque = ataque + 50
		}

		// =========================================
		// BONUS DO ITEM INICIAL
		// =========================================

		se(si == 0)
		{
			ataque = ataque + 15
		}
		senao se(si == 1)
		{
			vida = vida + 40
		}
		senao se(si == 2)
		{
			ataque = ataque + 10
		}
		senao
		{
			defesa = defesa + 5
		}

		// =========================================
		// MOSTRA PERSONAGEM
		// =========================================

		limpa()

		escreva("====================================\n")
		escreva("       PERSONAGEM CRIADO!\n")
		escreva("====================================\n")
		escreva("Nome: ", nome, "\n")
		escreva("Classe: ", minhaClasse, "\n")
		escreva("Titulo: ", titulo, "\n")
		escreva("Poder: ", meuPoder, "\n")
		escreva("Item: ", mochila[itemAtual], "\n")
		escreva("------------------------------------\n")
		escreva("Vida: ", vida, "\n")
		escreva("Ataque: ", ataque, "\n")
		escreva("Defesa: ", defesa, "\n")
		escreva("====================================\n")

		escreva("\nMissao: derrote 3 inimigos!\n")
		escreva("\nPressione ENTER para continuar.")
		leia(enter)

		// =========================================
		// JOGO PRINCIPAL
		// =========================================

		enquanto(vida > 0 e fase < 10)
		{
			limpa()

			escreva("====================================\n")
			escreva("              MENU\n")
			escreva("====================================\n")
			escreva("Jogador: ", nome, "\n")
			escreva("Fase: ", fase + 1, "/10\n")
			escreva("------------------------------------\n")
			escreva("Vida: ", vida, "\n")
			escreva("Ataque: ", ataque, "\n")
			escreva("Defesa: ", defesa, "\n")
			escreva("Nivel: ", nivel, "\n")
			escreva("XP: ", xp, "\n")
			escreva("Moedas: ", moedas, "\n")
			escreva("Pocoes: ", pocoes, "\n")
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
				// =================================
				// EXPLORAR
				// =================================

				caso 1:

					sr = Util.sorteia(0, 9)
					vidaMonstro = vidaE[fase]
					fugiu = 0

					limpa()

					escreva("====================================\n")
					escreva("             EXPLORACAO\n")
					escreva("====================================\n")
					escreva("Reino: ", reino[sr], "\n")
					escreva("Inimigo: ", inimigo[fase], "\n")
					escreva("Vida do inimigo: ", vidaMonstro, "\n")
					escreva("Ataque do inimigo: ", ataqueE[fase], "\n")
					escreva("====================================\n")

					escreva("\nPressione ENTER para comecar.")
					leia(enter)

					// =================================
					// BATALHA
					// =================================

					enquanto(vida > 0 e vidaMonstro > 0 e fugiu == 0)
					{
						limpa()

						escreva("====================================\n")
						escreva("              BATALHA\n")
						escreva("====================================\n")
						escreva("Reino: ", reino[sr], "\n")
						escreva("Inimigo: ", inimigo[fase], "\n")
						escreva("------------------------------------\n")
						escreva("Sua vida: ", vida, "\n")
						escreva("Vida inimigo: ", vidaMonstro, "\n")
						escreva("------------------------------------\n")
						escreva("1 - Atacar\n")
						escreva("2 - Defender\n")
						escreva("3 - Usar pocao\n")
						escreva("4 - Fugir\n")
						escreva("====================================\n")
						escreva("Escolha: ")
						leia(acao)

						escolha(acao)
						{
							// =============================
							// ATACAR
							// =============================

							caso 1:

								critico = Util.sorteia(1, 5)

								limpa()

								escreva("====================================\n")

								se(critico == 5)
								{
									escreva("          GOLPE CRITICO!\n")
									escreva("====================================\n")
									escreva("Dano: ", ataque * 2, "\n")

									vidaMonstro = vidaMonstro - (ataque * 2)
								}
								senao
								{
									escreva("             ATAQUE!\n")
									escreva("====================================\n")
									escreva("Dano: ", ataque, "\n")

									vidaMonstro = vidaMonstro - ataque
								}

								se(vidaMonstro > 0)
								{
									vida = vida - ataqueE[fase]
									escreva("\nO inimigo atacou voce!\n")
									escreva("Dano recebido: ", ataqueE[fase], "\n")
								}

								escreva("\nSua vida: ", vida, "\n")
								escreva("Vida inimigo: ", vidaMonstro, "\n")

								escreva("\nPressione ENTER.")
								leia(enter)

								pare

							// =============================
							// DEFENDER
							// =============================

							caso 2:

								limpa()

								dano = ataqueE[fase] - defesa

								se(dano < 1)
								{
									dano = 1
								}

								vida = vida - dano

								escreva("====================================\n")
								escreva("             DEFESA\n")
								escreva("====================================\n")
								escreva("Voce se defendeu!\n")
								escreva("Dano recebido: ", dano, "\n")
								escreva("Sua vida: ", vida, "\n")

								escreva("\nPressione ENTER.")
								leia(enter)

								pare

							// =============================
							// POCAO
							// =============================

							caso 3:

								limpa()

								se(pocoes > 0)
								{
									vida = vida + 30
									pocoes = pocoes - 1

									escreva("====================================\n")
									escreva("              POCAO\n")
									escreva("====================================\n")
									escreva("Voce recuperou 30 de vida!\n")

									se(vida > 300)
									{
										vida = 300
									}

									vida = vida - ataqueE[fase]

									escreva("\nO inimigo atacou voce!\n")
									escreva("Sua vida: ", vida, "\n")
								}
								senao
								{
									escreva("Voce nao tem pocoes!\n")
								}

								escreva("\nPressione ENTER.")
								leia(enter)

								pare

							// =============================
							// FUGIR
							// =============================

							caso 4:

								limpa()

								escreva("====================================\n")
								escreva("               FUGA\n")
								escreva("====================================\n")
								escreva("Voce fugiu da batalha!\n")

								fugiu = 1

								escreva("\nPressione ENTER.")
								leia(enter)

								pare

							caso contrario:

								escreva("\nOpcao invalida!\n")
								escreva("Pressione ENTER.")
								leia(enter)
						}
					}

					// =================================
					// VITORIA
					// =================================

					se(vida > 0 e vidaMonstro <= 0)
					{
						limpa()

						escreva("====================================\n")
						escreva("        INIMIGO DERROTADO!\n")
						escreva("====================================\n")
						escreva("Inimigo: ", inimigo[fase], "\n")
						escreva("XP ganho: ", xpE[fase], "\n")
						escreva("Moedas ganhas: ", moedaE[fase], "\n")

						xp = xp + xpE[fase]
						moedas = moedas + moedaE[fase]
						vitorias = vitorias + 1

						// =============================
						// NIVEL
						// =============================

						se(xp >= 100)
						{
							xp = xp - 100
							nivel = nivel + 1
							vida = vida + 20
							ataque = ataque + 5

							escreva("\n*** SUBIU DE NIVEL! ***\n")
							escreva("Nivel: ", nivel, "\n")
							escreva("+20 vida\n")
							escreva("+5 ataque\n")
						}

						// =============================
						// MISSAO
						// =============================

						se(vitorias == 3 e missao == 0)
						{
							moedas = moedas + 50
							missao = 1

							escreva("\n*** MISSAO CONCLUIDA! ***\n")
							escreva("Recompensa: 50 moedas!\n")
						}

						// =============================
						// ITEM ALEATORIO
						// =============================

						ganhouItem = Util.sorteia(1, 5)

						se(ganhouItem == 5)
						{
							se(qItem < 3)
							{
								itemNovo = Util.sorteia(0, 3)

								mochila[qItem] = item[itemNovo]
								qItem = qItem + 1

								escreva("\n*** ITEM ENCONTRADO! ***\n")
								escreva("Voce encontrou: ", item[itemNovo], "\n")
							}
							senao
							{
								escreva("\nSeu inventario esta cheio!\n")
							}
						}

						fase = fase + 1

						escreva("\nPressione ENTER para voltar ao menu.")
						leia(enter)
					}

					pare

				// =================================
				// STATUS
				// =================================

				caso 2:

					limpa()

					escreva("====================================\n")
					escreva("              STATUS\n")
					escreva("====================================\n")
					escreva("Nome: ", nome, "\n")
					escreva("Classe: ", minhaClasse, "\n")
					escreva("Titulo: ", titulo, "\n")
					escreva("Poder: ", meuPoder, "\n")
					escreva("Item equipado: ", mochila[itemAtual], "\n")
					escreva("------------------------------------\n")
					escreva("Nivel: ", nivel, "\n")
					escreva("XP: ", xp, "\n")
					escreva("Vida: ", vida, "\n")
					escreva("Ataque: ", ataque, "\n")
					escreva("Defesa: ", defesa, "\n")
					escreva("Moedas: ", moedas, "\n")
					escreva("Pocoes: ", pocoes, "\n")
					escreva("Vitorias: ", vitorias, "\n")
					escreva("====================================\n")

					escreva("\nPressione ENTER.")
					leia(enter)

					pare

				// =================================
				// LOJA
				// =================================

				caso 3:

					limpa()

					escreva("====================================\n")
					escreva("                LOJA\n")
					escreva("====================================\n")
					escreva("Moedas: ", moedas, "\n")
					escreva("------------------------------------\n")
					escreva("1 - Pocao ........ 20 moedas\n")
					escreva("2 - +10 ataque ... 50 moedas\n")
					escreva("3 - +20 vida ..... 50 moedas\n")
					escreva("4 - +5 defesa .... 50 moedas\n")
					escreva("5 - Sair\n")
					escreva("====================================\n")
					escreva("Escolha: ")
					leia(acao)

					escolha(acao)
					{
						caso 1:

							se(moedas >= 20)
							{
								pocoes = pocoes + 1
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

								escreva("\nAtaque aumentado!\n")
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

								escreva("\nVida aumentada!\n")
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

								escreva("\nDefesa aumentada!\n")
							}
							senao
							{
								escreva("\nMoedas insuficientes!\n")
							}

							pare

						caso 5:

							escreva("\nSaindo da loja...\n")
							pare

						caso contrario:

							escreva("\nOpcao invalida!\n")
					}

					escreva("\nPressione ENTER.")
					leia(enter)

					pare

				// =================================
				// MISSAO
				// =================================

				caso 4:

					limpa()

					escreva("====================================\n")
					escreva("              MISSAO\n")
					escreva("====================================\n")

					se(missao == 0)
					{
						escreva("Objetivo: derrotar 3 inimigos.\n")
						escreva("Progresso: ", vitorias, "/3\n")
					}
					senao
					{
						escreva("Missao concluida!\n")
						escreva("Recompensa: 50 moedas.\n")
					}

					escreva("\nPressione ENTER.")
					leia(enter)

					pare

				// =================================
				// INVENTARIO
				// =================================

				caso 5:

					limpa()

					escreva("====================================\n")
					escreva("             INVENTARIO\n")
					escreva("====================================\n")

					escreva("Espacos: ", qItem, "/3\n")
					escreva("------------------------------------\n")

					para(i = 0; i < qItem; i++)
					{
						escreva(i + 1, " - ", mochila[i])

						se(i == itemAtual)
						{
							escreva(" [EQUIPADO]")
						}

						escreva("\n")
					}

					escreva("------------------------------------\n")
					escreva("Escolha o item para equipar: ")
					leia(si)

					se(si >= 1 e si <= qItem)
					{
						inteiro novoItem = si - 1

						// =============================
						// RETIRA BONUS DO ITEM ANTIGO
						// =============================

						se(mochila[itemAtual] == "Espada")
						{
							ataque = ataque - 15
						}
						senao se(mochila[itemAtual] == "Armadura")
						{
							vida = vida - 40
						}
						senao se(mochila[itemAtual] == "Anel")
						{
							ataque = ataque - 10
						}
						senao se(mochila[itemAtual] == "Escudo")
						{
							defesa = defesa - 5
						}

						// =============================
						// COLOCA BONUS DO NOVO ITEM
						// =============================

						se(mochila[novoItem] == "Espada")
						{
							ataque = ataque + 15
						}
						senao se(mochila[novoItem] == "Armadura")
						{
							vida = vida + 40
						}
						senao se(mochila[novoItem] == "Anel")
						{
							ataque = ataque + 10
						}
						senao se(mochila[novoItem] == "Escudo")
						{
							defesa = defesa + 5
						}

						itemAtual = novoItem

						escreva("\nItem equipado: ", mochila[itemAtual], "\n")
					}
					senao
					{
						escreva("\nOpcao invalida!\n")
					}

					escreva("\nPressione ENTER.")
					leia(enter)

					pare

				// =================================
				// SAIR
				// =================================

				caso 6:

					limpa()

					escreva("====================================\n")
					escreva("          ATE A PROXIMA!\n")
					escreva("====================================\n")

					retorne

				caso contrario:

					limpa()

					escreva("====================================\n")
					escreva("          OPCAO INVALIDA!\n")
					escreva("====================================\n")

					escreva("\nPressione ENTER.")
					leia(enter)
			}
		}

		// =========================================
		// CHEFE FINAL
		// =========================================

		se(vida > 0 e fase == 10)
		{
			inteiro vidaChefe = 300
			inteiro ataqueChefe = 35

			enquanto(vida > 0 e vidaChefe > 0)
			{
				limpa()

				escreva("====================================\n")
				escreva("            CHEFE FINAL\n")
				escreva("====================================\n")
				escreva("         SENHOR DO CAOS\n")
				escreva("------------------------------------\n")
				escreva("Sua vida: ", vida, "\n")
				escreva("Vida do chefe: ", vidaChefe, "\n")
				escreva("------------------------------------\n")
				escreva("1 - Atacar\n")
				escreva("2 - Defender\n")
				escreva("3 - Usar pocao\n")
				escreva("====================================\n")
				escreva("Escolha: ")
				leia(acao)

				escolha(acao)
				{
					caso 1:

						critico = Util.sorteia(1, 5)

						se(critico == 5)
						{
							vidaChefe = vidaChefe - (ataque * 2)

							escreva("\nGOLPE CRITICO!\n")
						}
						senao
						{
							vidaChefe = vidaChefe - ataque

							escreva("\nVoce atacou o chefe!\n")
						}

						se(vidaChefe > 0)
						{
							vida = vida - ataqueChefe
							escreva("O chefe atacou voce!\n")
						}

						escreva("\nPressione ENTER.")
						leia(enter)

						pare

					caso 2:

						dano = ataqueChefe - defesa

						se(dano < 1)
						{
							dano = 1
						}

						vida = vida - dano

						escreva("\nVoce defendeu!\n")
						escreva("Dano recebido: ", dano, "\n")

						escreva("\nPressione ENTER.")
						leia(enter)

						pare

					caso 3:

						se(pocoes > 0)
						{
							vida = vida + 30
							pocoes = pocoes - 1

							se(vida > 300)
							{
								vida = 300
							}

							vida = vida - ataqueChefe

							escreva("\nVoce usou uma pocao!\n")
							escreva("O chefe atacou voce!\n")
						}
						senao
						{
							escreva("\nVoce nao tem pocoes!\n")
						}

						escreva("\nPressione ENTER.")
						leia(enter)

						pare

					caso contrario:

						escreva("\nOpcao invalida!\n")
						escreva("\nPressione ENTER.")
						leia(enter)
				}
			}

			// =================================
			// FINAL
			// =================================

			limpa()

			se(vida > 0)
			{
				escreva("====================================\n")
				escreva("          VOCE VENCEU!\n")
				escreva("====================================\n")
				escreva("\n")
				escreva("Parabens, ", nome, "!\n")
				escreva("Classe: ", minhaClasse, "\n")
				escreva("Titulo: ", titulo, "\n")
				escreva("Poder: ", meuPoder, "\n")
				escreva("Nivel final: ", nivel, "\n")
				escreva("Moedas: ", moedas, "\n")
				escreva("Vitorias: ", vitorias, "\n")
				escreva("\n====================================\n")
			}
			senao
			{
				escreva("====================================\n")
				escreva("            GAME OVER\n")
				escreva("====================================\n")
			}
		}
	}
}
