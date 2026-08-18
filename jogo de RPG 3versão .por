
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
		cadeia inimigo[10]
		cadeia item[4]

		inteiro vidaE[10]
		inteiro ataqueE[10]
		inteiro xpE[10]
		inteiro moedaE[10]

		// =========================================
		// REINOS
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
		// ADJETIVOS
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
		// PODERES
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
		// CLASSES
		// =========================================

		classe[0] = "Guerreiro"
		classe[1] = "Mago"
		classe[2] = "Tanque"
		classe[3] = "Assassino"
		classe[4] = "Arqueiro"

		// =========================================
		// ITENS
		// =========================================

		item[0] = "Espada"
		item[1] = "Armadura"
		item[2] = "Anel"
		item[3] = "Escudo"

		// =========================================
		// INIMIGOS
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
		// JOGADOR
		// =========================================

		cadeia nome
		cadeia titulo
		cadeia meuPoder
		cadeia minhaClasse
		cadeia meuItem = "Nenhum"

		inteiro vida = 100
		inteiro ataque = 20
		inteiro nivel = 1
		inteiro xp = 0
		inteiro moedas = 50
		inteiro pocoes = 3
		inteiro defesa = 0

		inteiro sa
		inteiro sp
		inteiro sc
		inteiro si
		inteiro sr

		inteiro fase = 0
		inteiro menu
		inteiro acao
		inteiro missao = 0
		inteiro vitorias = 0

		// =========================================
		// CRIACAO
		// =========================================

		escreva("====================================\n")
		escreva("          RPG AVENTURA 3\n")
		escreva("====================================\n")

		escreva("Digite seu nome: ")
		leia(nome)

		sa = Util.sorteia(0, 9)
		sp = Util.sorteia(0, 9)
		sc = Util.sorteia(0, 4)

		titulo = adj[sa]
		meuPoder = poder[sp]
		minhaClasse = classe[sc]

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
		// ITEM INICIAL ALEATORIO
		// =========================================

		si = Util.sorteia(0, 3)

		meuItem = item[si]

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
		// PERSONAGEM
		// =========================================

		escreva("\n====================================\n")
		escreva("       PERSONAGEM CRIADO!\n")
		escreva("====================================\n")
		escreva("Nome: ", nome, "\n")
		escreva("Classe: ", minhaClasse, "\n")
		escreva("Titulo: ", titulo, "\n")
		escreva("Poder: ", meuPoder, "\n")
		escreva("Item: ", meuItem, "\n")
		escreva("Vida: ", vida, "\n")
		escreva("Ataque: ", ataque, "\n")
		escreva("Defesa: ", defesa, "\n")
		escreva("====================================\n")

		// =========================================
		// MISSAO
		// =========================================

		escreva("\nMISSao inicial: derrote 3 inimigos!\n")

		// =========================================
		// JOGO
		// =========================================

		enquanto(vida > 0 e fase < 10)
		{
			escreva("\n====================================\n")
			escreva("               MENU\n")
			escreva("====================================\n")
			escreva("Fase: ", fase + 1, "/10\n")
			escreva("Vida: ", vida, "\n")
			escreva("Ataque: ", ataque, "\n")
			escreva("Defesa: ", defesa, "\n")
			escreva("Moedas: ", moedas, "\n")
			escreva("Pocoes: ", pocoes, "\n")
			escreva("------------------------------------\n")
			escreva("1 - Explorar\n")
			escreva("2 - Status\n")
			escreva("3 - Loja\n")
			escreva("4 - Missao\n")
			escreva("5 - Sair\n")
			escreva("Escolha: ")
			leia(menu)

			escolha(menu)
			{
				// =================================
				// EXPLORAR
				// =================================

				caso 1:

					sr = Util.sorteia(0, 9)

					escreva("\n====================================\n")
					escreva("REINO: ", reino[sr], "\n")
					escreva("INIMIGO: ", inimigo[fase], "\n")
					escreva("====================================\n")

					inteiro vidaMonstro = vidaE[fase]
					inteiro fugiu = 0

					enquanto(vida > 0 e vidaMonstro > 0 e fugiu == 0)
					{
						escreva("\nSua vida: ", vida, "\n")
						escreva("Vida do inimigo: ", vidaMonstro, "\n")
						escreva("\n1 - Atacar\n")
						escreva("2 - Defender\n")
						escreva("3 - Usar pocao\n")
						escreva("4 - Fugir\n")
						escreva("Escolha: ")
						leia(acao)

						escolha(acao)
						{
							// =============================
							// ATACAR
							// =============================

							caso 1:

								inteiro critico = Util.sorteia(1, 5)

								se(critico == 5)
								{
									escreva("\n*** GOLPE CRITICO! ***\n")
									vidaMonstro = vidaMonstro - (ataque * 2)
								}
								senao
								{
									escreva("\nVoce atacou!\n")
									vidaMonstro = vidaMonstro - ataque
								}

								se(vidaMonstro > 0)
								{
									vida = vida - ataqueE[fase]
									escreva("O inimigo atacou!\n")
								}

								pare

							// =============================
							// DEFENDER
							// =============================

							caso 2:

								escreva("\nVoce entrou em defesa!\n")

								inteiro dano = ataqueE[fase] - defesa

								se(dano < 1)
								{
									dano = 1
								}

								vida = vida - dano

								escreva("Voce recebeu apenas ", dano, " de dano!\n")

								pare

							// =============================
							// POCAO
							// =============================

							caso 3:

								se(pocoes > 0)
								{
									vida = vida + 30
									pocoes = pocoes - 1

									escreva("\nVoce recuperou 30 de vida!\n")

									se(vida > 250)
									{
										vida = 250
									}

									vida = vida - ataqueE[fase]
									escreva("O inimigo atacou voce!\n")
								}
								senao
								{
									escreva("\nVoce nao tem pocoes!\n")
								}

								pare

							// =============================
							// FUGIR
							// =============================

							caso 4:

								escreva("\nVoce fugiu da batalha!\n")
								fugiu = 1

								pare

							caso contrario:

								escreva("\nOpcao invalida!\n")
						}
					}

					// =================================
					// VITORIA
					// =================================

					se(vida > 0 e vidaMonstro <= 0)
					{
						escreva("\n====================================\n")
						escreva("       INIMIGO DERROTADO!\n")
						escreva("====================================\n")

						escreva("XP ganho: ", xpE[fase], "\n")
						escreva("Moedas: ", moedaE[fase], "\n")

						xp = xp + xpE[fase]
						moedas = moedas + moedaE[fase]
						vitorias = vitorias + 1

						// =================================
						// SUBIR DE NIVEL
						// =================================

						se(xp >= 100)
						{
							xp = xp - 100
							nivel = nivel + 1
							vida = vida + 20
							ataque = ataque + 5

							escreva("\n*** SUBIU DE NIVEL! ***\n")
							escreva("Nivel: ", nivel, "\n")
							escreva("+20 de vida\n")
							escreva("+5 de ataque\n")
						}

						// =================================
						// MISSAO
						// =================================

						se(vitorias == 3)
						{
							escreva("\n*** MISSAO CONCLUIDA! ***\n")
							escreva("Voce ganhou 50 moedas!\n")
							moedas = moedas + 50
							missao = 1
						}

						// =================================
						// CHANCE DE ITEM
						// =================================

						inteiro ganhouItem = Util.sorteia(1, 5)

						se(ganhouItem == 5)
						{
							si = Util.sorteia(0, 3)
							meuItem = item[si]

							escreva("\n*** VOCE ENCONTROU UM ITEM! ***\n")
							escreva("Item: ", meuItem, "\n")

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
						}

						fase = fase + 1
					}

					pare

				// =================================
				// STATUS
				// =================================

				caso 2:

					escreva("\n====================================\n")
					escreva("              STATUS\n")
					escreva("====================================\n")
					escreva("Nome: ", nome, "\n")
					escreva("Classe: ", minhaClasse, "\n")
					escreva("Titulo: ", titulo, "\n")
					escreva("Poder: ", meuPoder, "\n")
					escreva("Item: ", meuItem, "\n")
					escreva("Nivel: ", nivel, "\n")
					escreva("XP: ", xp, "\n")
					escreva("Vida: ", vida, "\n")
					escreva("Ataque: ", ataque, "\n")
					escreva("Defesa: ", defesa, "\n")
					escreva("Moedas: ", moedas, "\n")
					escreva("Pocoes: ", pocoes, "\n")
					escreva("====================================\n")

					pare

				// =================================
				// LOJA
				// =================================

				caso 3:

					escreva("\n====================================\n")
					escreva("               LOJA\n")
					escreva("====================================\n")
					escreva("Moedas: ", moedas, "\n")
					escreva("1 - Pocao = 20 moedas\n")
					escreva("2 - +10 ataque = 50 moedas\n")
					escreva("3 - +20 vida = 50 moedas\n")
					escreva("4 - +5 defesa = 50 moedas\n")
					escreva("5 - Sair\n")
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

					pare

				// =================================
				// MISSAO
				// =================================

				caso 4:

					escreva("\n====================================\n")
					escreva("             MISSAO\n")
					escreva("====================================\n")

					se(missao == 0)
					{
						escreva("Derrote 3 inimigos.\n")
						escreva("Inimigos derrotados: ", vitorias, "/3\n")
					}
					senao
					{
						escreva("MISSao concluida!\n")
						escreva("Recompensa recebida: 50 moedas.\n")
					}

					pare

				// =================================
				// SAIR
				// =================================

				caso 5:

					escreva("\nVoce saiu do jogo.\n")
					retorne

				caso contrario:

					escreva("\nOpcao invalida!\n")
			}
		}

		// =========================================
		// CHEFE FINAL
		// =========================================

		se(vida > 0 e fase == 10)
		{
			inteiro vidaChefe = 300
			inteiro ataqueChefe = 35

			escreva("\n====================================\n")
			escreva("             CHEFE FINAL\n")
			escreva("====================================\n")
			escreva("SENHOR DO CAOS APARECEU!\n")

			enquanto(vida > 0 e vidaChefe > 0)
			{
				escreva("\nSua vida: ", vida, "\n")
				escreva("Vida do chefe: ", vidaChefe, "\n")
				escreva("\n1 - Atacar\n")
				escreva("2 - Defender\n")
				escreva("3 - Usar pocao\n")
				escreva("Escolha: ")
				leia(acao)

				escolha(acao)
				{
					caso 1:

						inteiro criticoChefe = Util.sorteia(1, 5)

						se(criticoChefe == 5)
						{
							escreva("\n*** GOLPE CRITICO! ***\n")
							vidaChefe = vidaChefe - ataque * 2
						}
						senao
						{
							escreva("\nVoce atacou o chefe!\n")
							vidaChefe = vidaChefe - ataque
						}

						se(vidaChefe > 0)
						{
							vida = vida - ataqueChefe
						}

						pare

					caso 2:

						inteiro danoChefe = ataqueChefe - defesa

						se(danoChefe < 1)
						{
							danoChefe = 1
						}

						vida = vida - danoChefe

						escreva("\nVoce defendeu!\n")
						escreva("Dano recebido: ", danoChefe, "\n")

						pare

					caso 3:

						se(pocoes > 0)
						{
							vida = vida + 30
							pocoes = pocoes - 1
							escreva("\nVoce usou uma pocao!\n")

							se(vida > 250)
							{
								vida = 250
							}

							vida = vida - ataqueChefe
						}
						senao
						{
							escreva("\nVoce nao tem pocoes!\n")
						}

						pare

					caso contrario:

						escreva("\nOpcao invalida!\n")
				}
			}

			// =========================================
			// FINAL
			// =========================================

			se(vida > 0)
			{
				escreva("\n====================================\n")
				escreva("            VOCE VENCEU!\n")
				escreva("====================================\n")
				escreva("Parabens, ", nome, " ", titulo, "!\n")
				escreva("Classe: ", minhaClasse, "\n")
				escreva("Poder: ", meuPoder, "\n")
				escreva("Nivel final: ", nivel, "\n")
				escreva("Moedas: ", moedas, "\n")
			}
			senao
			{
				escreva("\n====================================\n")
				escreva("            GAME OVER\n")
				escreva("====================================\n")
			}
		}
	}
}
