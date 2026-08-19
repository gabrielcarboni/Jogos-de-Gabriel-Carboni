programa
{
	inclua biblioteca Util

	funcao inicio()
	{
		// =====================================
		// LISTAS
		// =====================================

		cadeia reinos[10]
		cadeia adj[10]
		cadeia poderes[10]
		cadeia classes[5]
		cadeia itens[4]
		cadeia inimigos[10]

		// BONUS
		inteiro atkAdj[10]
		inteiro vidaAdj[10]
		inteiro pocAdj[10]

		inteiro atkPoder[10]
		inteiro vidaPoder[10]

		inteiro atkClasse[5]
		inteiro vidaClasse[5]

		inteiro atkItem[4]
		inteiro vidaItem[4]
		inteiro defItem[4]

		// INIMIGOS
		inteiro vidaE[10]
		inteiro atkE[10]
		inteiro xpE[10]
		inteiro moedaE[10]

		// =====================================
		// NOMES
		// =====================================

		reinos[0] = "Aurora"
		reinos[1] = "Sombras"
		reinos[2] = "Cristal"
		reinos[3] = "Trovao"
		reinos[4] = "Gelo"
		reinos[5] = "Cinzas"
		reinos[6] = "Floresta"
		reinos[7] = "Deserto"
		reinos[8] = "Celestial"
		reinos[9] = "Caos"

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

		poderes[0] = "Tempo"
		poderes[1] = "Realidade"
		poderes[2] = "Telecinese"
		poderes[3] = "Teletransporte"
		poderes[4] = "Regeneracao"
		poderes[5] = "Gravidade"
		poderes[6] = "Duplicacao"
		poderes[7] = "Elementos"
		poderes[8] = "Invisibilidade"
		poderes[9] = "Velocidade Suprema"

		classes[0] = "Guerreiro"
		classes[1] = "Mago"
		classes[2] = "Tanque"
		classes[3] = "Assassino"
		classes[4] = "Arqueiro"

		itens[0] = "Espada"
		itens[1] = "Armadura"
		itens[2] = "Anel"
		itens[3] = "Escudo"

		inimigos[0] = "Goblin"
		inimigos[1] = "Cavaleiro Sombrio"
		inimigos[2] = "Golem de Cristal"
		inimigos[3] = "Fera do Trovao"
		inimigos[4] = "Guardiao do Gelo"
		inimigos[5] = "Demonio das Cinzas"
		inimigos[6] = "Monstro da Floresta"
		inimigos[7] = "Rei do Deserto"
		inimigos[8] = "Anjo Caido"
		inimigos[9] = "Senhor do Caos"

		// =====================================
		// BONUS DOS ADJETIVOS
		// =====================================

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

		// =====================================
		// BONUS DOS PODERES
		// =====================================

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

		// =====================================
		// BONUS DAS CLASSES
		// =====================================

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

		// =====================================
		// BONUS DOS ITENS
		// =====================================

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

		// =====================================
		// INIMIGOS
		// =====================================

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

		// =====================================
		// VARIAVEIS
		// =====================================

		cadeia nome
		cadeia enter
		cadeia mochila[3]

		inteiro vida = 100
		inteiro ataque = 20
		inteiro defesa = 0
		inteiro nivel = 1
		inteiro xp = 0
		inteiro moedas = 50
		inteiro pocoes = 3

		inteiro fase = 0
		inteiro vitorias = 0
		inteiro missao = 0

		inteiro sa
		inteiro sp
		inteiro sc
		inteiro si
		inteiro sr

		inteiro itemAtual = 0
		inteiro qItem = 1

		inteiro menu
		inteiro acao
		inteiro i

		inteiro vidaMonstro
		inteiro dano
		inteiro critico
		inteiro novoItem
		inteiro fugiu

		// =====================================
		// CRIACAO DO PERSONAGEM
		// =====================================

		limpa()

		escreva("====================================\n")
		escreva("          RPG AVENTURA\n")
		escreva("====================================\n")

		escreva("Nome: ")
		leia(nome)

		sa = Util.sorteia(0, 9)
		sp = Util.sorteia(0, 9)
		sc = Util.sorteia(0, 4)
		si = Util.sorteia(0, 3)

		mochila[0] = itens[si]

		// APLICA BONUS
		ataque = ataque + atkAdj[sa] + atkPoder[sp] + atkClasse[sc] + atkItem[si]
		vida = vida + vidaAdj[sa] + vidaPoder[sp] + vidaClasse[sc] + vidaItem[si]
		defesa = defesa + defItem[si]
		pocoes = pocoes + pocAdj[sa]

		limpa()

		escreva("====================================\n")
		escreva("       PERSONAGEM CRIADO\n")
		escreva("====================================\n")
		escreva("Nome: ", nome, "\n")
		escreva("Classe: ", classes[sc], "\n")
		escreva("Titulo: ", adj[sa], "\n")
		escreva("Poder: ", poderes[sp], "\n")
		escreva("Item: ", mochila[0], "\n")
		escreva("------------------------------------\n")
		escreva("Vida: ", vida, "\n")
		escreva("Ataque: ", ataque, "\n")
		escreva("Defesa: ", defesa, "\n")
		escreva("====================================\n")

		escreva("\nMissao: derrote 3 inimigos.\n")
		escreva("Pressione ENTER.")
		leia(enter)

		// =====================================
		// JOGO
		// =====================================

		enquanto(vida > 0 e fase < 10)
		{
			limpa()

			escreva("====================================\n")
			escreva("              MENU\n")
			escreva("====================================\n")
			escreva("Fase: ", fase + 1, "/10\n")
			escreva("Vida: ", vida, "  Ataque: ", ataque, "\n")
			escreva("Defesa: ", defesa, "  Nivel: ", nivel, "\n")
			escreva("XP: ", xp, "  Moedas: ", moedas, "\n")
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

					enquanto(vida > 0 e vidaMonstro > 0 e fugiu == 0)
					{
						limpa()

						escreva("====================================\n")
						escreva("Reino: ", reinos[sr], "\n")
						escreva("Inimigo: ", inimigos[fase], "\n")
						escreva("====================================\n")
						escreva("Sua vida: ", vida, "\n")
						escreva("Vida inimigo: ", vidaMonstro, "\n")
						escreva("------------------------------------\n")
						escreva("1 - Atacar\n")
						escreva("2 - Defender\n")
						escreva("3 - Pocao\n")
						escreva("4 - Fugir\n")
						escreva("Escolha: ")
						leia(acao)

						escolha(acao)
						{
							caso 1:

								critico = Util.sorteia(1, 5)

								se(critico == 5)
								{
									vidaMonstro = vidaMonstro - ataque * 2
									escreva("\nGOLPE CRITICO!\n")
								}
								senao
								{
									vidaMonstro = vidaMonstro - ataque
									escreva("\nVoce atacou!\n")
								}

								se(vidaMonstro > 0)
								{
									dano = atkE[fase]
									vida = vida - dano
									escreva("Dano recebido: ", dano, "\n")
								}

								escreva("\nPressione ENTER.")
								leia(enter)

								pare

							caso 2:

								dano = atkE[fase] - defesa

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

									vida = vida - atkE[fase]

									escreva("\nPocao usada!\n")
								}
								senao
								{
									escreva("\nSem pocoes!\n")
								}

								escreva("\nPressione ENTER.")
								leia(enter)

								pare

							caso 4:

								fugiu = 1
								escreva("\nVoce fugiu!\n")

								escreva("\nPressione ENTER.")
								leia(enter)

								pare

							caso contrario:

								escreva("\nOpcao invalida!\n")
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
						escreva("XP: +", xpE[fase], "\n")
						escreva("Moedas: +", moedaE[fase], "\n")

						xp = xp + xpE[fase]
						moedas = moedas + moedaE[fase]
						vitorias++

						se(xp >= 100)
						{
							xp = xp - 100
							nivel++
							vida = vida + 20
							ataque = ataque + 5

							escreva("\nSUBIU DE NIVEL!\n")
						}

						se(vitorias == 3 e missao == 0)
						{
							moedas = moedas + 50
							missao = 1

							escreva("\nMISSAO CONCLUIDA! +50 moedas\n")
						}

						novoItem = Util.sorteia(1, 5)

						se(novoItem == 5 e qItem < 3)
						{
							si = Util.sorteia(0, 3)
							mochila[qItem] = itens[si]
							qItem++

							escreva("\nITEM ENCONTRADO: ", itens[si], "\n")
						}

						fase++

						escreva("\nPressione ENTER.")
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
					escreva("Classe: ", classes[sc], "\n")
					escreva("Titulo: ", adj[sa], "\n")
					escreva("Poder: ", poderes[sp], "\n")
					escreva("Item: ", mochila[itemAtual], "\n")
					escreva("------------------------------------\n")
					escreva("Nivel: ", nivel, "\n")
					escreva("XP: ", xp, "\n")
					escreva("Vida: ", vida, "\n")
					escreva("Ataque: ", ataque, "\n")
					escreva("Defesa: ", defesa, "\n")
					escreva("Moedas: ", moedas, "\n")
					escreva("Pocoes: ", pocoes, "\n")
					escreva("Vitorias: ", vitorias, "\n")

					escreva("\nPressione ENTER.")
					leia(enter)

					pare

				// =================================
				// LOJA
				// =================================

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
							}

							pare

						caso 2:

							se(moedas >= 50)
							{
								ataque = ataque + 10
								moedas = moedas - 50
							}

							pare

						caso 3:

							se(moedas >= 50)
							{
								vida = vida + 20
								moedas = moedas - 50
							}

							pare

						caso 4:

							se(moedas >= 50)
							{
								defesa = defesa + 5
								moedas = moedas - 50
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

				// =================================
				// MISSAO
				// =================================

				caso 4:

					limpa()

					escreva("====================================\n")
					escreva("              MISSAO\n")
					escreva("====================================\n")
					escreva("Derrote 3 inimigos.\n")
					escreva("Progresso: ", vitorias, "/3\n")

					se(missao == 1)
					{
						escreva("Missao concluida!\n")
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
					escreva("            INVENTARIO\n")
					escreva("====================================\n")

					para(i = 0; i < qItem; i++)
					{
						escreva(i + 1, " - ", mochila[i])

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
						inteiro novo = si - 1

						// RETIRA ITEM ANTIGO
						se(mochila[itemAtual] == itens[0])
						{
							ataque = ataque - atkItem[0]
							vida = vida - vidaItem[0]
							defesa = defesa - defItem[0]
						}
						senao se(mochila[itemAtual] == itens[1])
						{
							ataque = ataque - atkItem[1]
							vida = vida - vidaItem[1]
							defesa = defesa - defItem[1]
						}
						senao se(mochila[itemAtual] == itens[2])
						{
							ataque = ataque - atkItem[2]
							vida = vida - vidaItem[2]
							defesa = defesa - defItem[2]
						}
						senao
						{
							ataque = ataque - atkItem[3]
							vida = vida - vidaItem[3]
							defesa = defesa - defItem[3]
						}

						// COLOCA ITEM NOVO
						se(mochila[novo] == itens[0])
						{
							ataque = ataque + atkItem[0]
							vida = vida + vidaItem[0]
							defesa = defesa + defItem[0]
						}
						senao se(mochila[novo] == itens[1])
						{
							ataque = ataque + atkItem[1]
							vida = vida + vidaItem[1]
							defesa = defesa + defItem[1]
						}
						senao se(mochila[novo] == itens[2])
						{
							ataque = ataque + atkItem[2]
							vida = vida + vidaItem[2]
							defesa = defesa + defItem[2]
						}
						senao
						{
							ataque = ataque + atkItem[3]
							vida = vida + vidaItem[3]
							defesa = defesa + defItem[3]
						}

						itemAtual = novo

						escreva("\nItem equipado!\n")
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

					escreva("\nOpcao invalida!\n")
					leia(enter)
			}
		}

		// =====================================
		// CHEFE FINAL
		// =====================================

		se(vida > 0)
		{
			inteiro vidaChefe = 300
			inteiro atkChefe = 35

			enquanto(vida > 0 e vidaChefe > 0)
			{
				limpa()

				escreva("====================================\n")
				escreva("           SENHOR DO CAOS\n")
				escreva("====================================\n")
				escreva("Sua vida: ", vida, "\n")
				escreva("Vida chefe: ", vidaChefe, "\n")
				escreva("------------------------------------\n")
				escreva("1 - Atacar\n")
				escreva("2 - Defender\n")
				escreva("3 - Pocao\n")
				escreva("Escolha: ")
				leia(acao)

				escolha(acao)
				{
					caso 1:

						critico = Util.sorteia(1, 5)

						se(critico == 5)
						{
							vidaChefe = vidaChefe - ataque * 2
							escreva("\nGOLPE CRITICO!\n")
						}
						senao
						{
							vidaChefe = vidaChefe - ataque
							escreva("\nVoce atacou!\n")
						}

						se(vidaChefe > 0)
						{
							vida = vida - atkChefe
						}

						pare

					caso 2:

						dano = atkChefe - defesa

						se(dano < 1)
						{
							dano = 1
						}

						vida = vida - dano
						escreva("\nVoce defendeu!\n")

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
						}

						pare

					caso contrario:

						escreva("\nOpcao invalida!\n")
				}

				escreva("\nPressione ENTER.")
				leia(enter)
			}

			limpa()

			se(vida > 0)
			{
				escreva("====================================\n")
				escreva("           VOCE VENCEU!\n")
				escreva("====================================\n")
				escreva("Parabens, ", nome, "!\n")
				escreva("Nivel: ", nivel, "\n")
				escreva("Moedas: ", moedas, "\n")
			}
			senao
			{
				escreva("====================================\n")
				escreva("             GAME OVER\n")
				escreva("====================================\n")
			}
		}
	}
}
