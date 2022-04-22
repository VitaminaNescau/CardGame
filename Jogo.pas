Program Jogo;
label menu;
//label deckErro;
	var
	resposta,respostaPlayer1,respostaPlayer2,repe,l,c,start,lifeEnemy,lifePlayer1,lifePlayer2,luck,IA,erro1,erro2: integer;
	player1,player2,nomeInimigo: string;
	//inimigo tem q vira um vetor
	
	inimigo: array[1..5] of string;
	myDeck,deckInimigo,deckPlayer1,deckPlayer2,deckHades,deckZeus,deckPoseidon,deckAthena: array[1..4,1..3] of string;
	//start Ã© a inicializaÃ§Ã£o do jogo 
	// card game com 5 decks e 3 inimigos




procedure Deck;	
begin
	repe:=0;
	while(repe<>1000) do
		begin 
			gotoxy(65,1);
			writeln(player1,', escolha seu deck:');
			gotoxy(25,2);
			writeln('1 - Hades');
			gotoxy(75,2);
			writeln('2 - Zeus');
			gotoxy(125,2);
			writeln('3 - Poseidon');
			gotoxy(175,2);
			writeln('4 - Athena');
			readln(resposta);
			case (resposta) of
				1:begin
					for l := 1 to 4 do
						for c := 1 to 3 do 
							begin
								myDeck[l,c]:= deckHades[l,c];
								start:=1;
								repe:=1000;
							end;
				end;
				2:begin
					for l := 1 to 4 do
						for c := 1 to 3 do 
							begin
								myDeck[l,c]:= deckZeus[l,c];
								start:=1;
								repe:=1000;
							end;
				end;
				3:begin
					for l := 1 to 4 do
						for c:= 1 to 3 do
							begin
								myDeck[l,c]:= deckPoseidon[l,c];
								start:=1;
								repe:=1000;
							end;
				end;
				4:begin
					for l := 1 to 4 do
						for c:= 1 to 3 do
							begin
								myDeck[l,c]:= deckAthena[l,c];
								start:=1;
								repe:=1000;
							end;
				end;
				else
					begin
						clrscr;
						writeln('Comando Invalido');
						delay(1000);
						writeln('Pressione qualquer tecla para volta');
						readkey;
						repe:=1;
						start:=0;
					end;
		
			end;		
		end;
end;
procedure CombatePvE;
begin
	nomeInimigo:=inimigo[resposta];
	for l := 1 to 4 do
		for c:= 1 to 3 do
		  begin
				if (nomeInimigo='Hercules') then	
					deckInimigo[l,c]:=deckZeus[l,c];
				if (nomeInimigo='Persefone') then
					deckInimigo[l,c]:=deckHades[l,c];
				if (nomeInimigo='Perseu') then
					deckInimigo[l,c]:=deckPoseidon[l,c];
			end;
	
	
end;
//falta dados em dano
Procedure DanoPvE;
	var
	
	danoPlayer1,danoInimigo,waves,queimar:integer;
Begin
		
	  	val(myDeck[resposta,c+1],danoPlayer1,erro1);
		val(deckInimigo[IA,c+1],danoInimigo,erro2);
		writeln(myDeck[resposta,c+1],' ',deckInimigo[IA,c+1]);
		if(danoPlayer1>danoInimigo) then
			begin
				lifeEnemy:= lifeEnemy-danoPlayer1;	
				if (myDeck[resposta,c+2]='Queimadura') or (myDeck[resposta,c+2]='Eletrocuta') then
					//dano extra
					begin
						queimar:=3;
						lifeEnemy:= lifeEnemy-queimar;
					end;
				
				if(myDeck[resposta,c+2]='Afogado') then
					lifeEnemy:= lifeEnemy-5;
				
				if(myDeck[resposta,c+2]='Roubo de vida') then
					begin
						lifeEnemy:= lifeEnemy-danoPlayer1;
						lifePlayer1:= lifePlayer1+danoPlayer1;
					end;
				
				if (myDeck[resposta,c+2]='Waves') then
					begin
						waves:=random(5)+1;
						lifeEnemy:= lifeEnemy-(danoPlayer1*waves);
					end;
			end;
		if(danoInimigo>danoPlayer1) then
			begin
				lifePlayer1:=lifePlayer1-danoInimigo;
				
				if (deckInimigo[IA,c+2]='Queimadura') or (deckInimigo[IA,c+2]='Eletrocuta') then
					begin	
						queimar:=3;
						lifePlayer1:=lifePlayer1-queimar;
					end;
				
				if(deckInimigo[IA,c+2]='Afogado') then
					lifePlayer1:= lifePlayer1-5;
				
				if(deckInimigo[IA,c+2]='Roubo de vida') then
					begin
						lifePlayer1:= lifePlayer1-danoInimigo;
						lifeEnemy:= lifeEnemy+danoInimigo;
					end;
				
				if (deckInimigo[IA,c+2]='Waves') then
					begin
						waves:=random(5)+1;
						lifePlayer1:= lifePlayer1-(danoPlayer1*waves);
					end;
			end; 
		if(danoPlayer1=danoInimigo) or (danoInimigo=danoPlayer1) then
			begin
				delay(2000);
				writeln('Empate, sem dano pra cada lado');
				
			end;
			



End;
procedure DanoPvP;
	var
	danoPlayer1,danoPlayer2,waves,queimar:integer;
Begin
		
	val(deckPlayer1[respostaPlayer1,c+1],danoPlayer1,erro1);
	val(deckPlayer2[respostaPlayer2,c+1],danoPlayer2,erro2);
	if(danoPlayer1>danoPlayer2) then
		begin
			lifePlayer2:= lifePlayer2-danoPlayer1;	
			if (deckPlayer1[respostaPlayer1,c+2]='Queimadura') or (deckPlayer1[respostaPlayer1,c+2]='Eletrocuta') then
				//dano extra
				begin
					queimar:=3;
					lifePlayer2:= lifePlayer1-queimar;
					if (deckPlayer1[respostaPlayer1,c+2]='Queimadura')  then
						writeln('Efeito de queimadura ativo.');
					if (deckPlayer1[respostaPlayer1,c+2]='Eletrocuta')  then
						writeln('Efeito de Eletrocuta ativo.');		
				writeln('Aperte qualquer tecla para continua.');
				readkey;
				end;
			
			if(deckPlayer1[respostaPlayer1,c+2]='Afogado') then
				begin
					lifePlayer2:= lifePlayer2-5;
					writeln('Efeito de Afogamento ativo');
					writeln('Aperte qualquer tecla para continua.');
					readkey;
				end;
				

			
			if(deckPlayer1[respostaPlayer1,c+2]='Roubo de vida') then
				begin
					lifePlayer2:= lifePlayer2-danoPlayer1;
					lifePlayer1:= lifePlayer1+danoPlayer1;
					writeln(deckPlayer1[respostaPlayer1,c+2],' feito com sucesso.');
					writeln('Aperte qualquer tecla para continua.');
					readkey;
				end;
			
			if (deckPlayer1[respostaPlayer1,c+2]='Waves') then
				begin
					waves:=random(5)+1;
					lifePlayer2:= lifePlayer2-(danoPlayer1*waves);
					writeln('Efeito de waves ativo');
					writeln('Dano de waves multiplicado em ',waves);
					writeln('Aperte qualquer tecla para continua.');
					readkey;
				end;
			if (deckPlayer1[respostaPlayer1,c+2]='Refletir todos os ataques') then
				begin
					danoPlayer1:=danoPlayer2;
					lifePlayer2:=lifePlayer2-danoPlayer1;
				end;
				
		
		
		end;


	if(danoPlayer2>danoPlayer1) then
		begin
			lifePlayer1:=lifePlayer1-danoPlayer2;
			
			if (deckPlayer2[respostaPlayer2,c+2]='Queimadura') or (deckPlayer2[respostaPlayer2,c+2]='Eletrocuta') then
				begin	
					queimar:=3;
					lifePlayer1:=lifePlayer1-queimar;
					if (deckPlayer1[respostaPlayer1,c+2]='Queimadura')  then
						writeln('Efeito de queimadura ativo.');
					if (deckPlayer1[respostaPlayer1,c+2]='Eletrocuta')  then
						writeln('Efeito de Eletrocuta ativo.');	
				writeln('Aperte qualquer tecla para continua.');
				readkey;
				end;
			
			if(deckPlayer2[respostaPlayer2,c+2]='Afogado') then
				begin
					lifePlayer1:= lifePlayer1-5;
					writeln('Efeito de Afogamento ativo');
					writeln('Aperte qualquer tecla para continua.');
					readkey;
				end;
				
			if(deckPlayer2[respostaPlayer2,c+2]='Roubo de vida') then
				begin
					lifePlayer1:= lifePlayer1-danoPlayer2;
					lifePlayer2:= lifePlayer2+danoPlayer2;
					writeln(deckPlayer2[respostaPlayer2,c+2],' feito com sucesso.');
					writeln('Aperte qualquer tecla para continua.');
					readkey;	
				end;
			
			if (deckPlayer2[respostaPlayer2,c+2]='Waves') then
				begin
					waves:=random(5)+1;
					lifePlayer1:= lifePlayer1-(danoPlayer2*waves);
					writeln('Efeito de waves ativo');
					writeln('Dano de waves multiplicado em ',waves);
					writeln('Aperte qualquer tecla para continua.');
					readkey;
				end;
			if (deckPlayer2[respostaPlayer1,c+2]='Refletir todos os ataques') then
				begin
					danoPlayer2:=danoPlayer1;
					lifePlayer1:=lifePlayer1 - danoPlayer2;
				end;													
		end; 
		if(danoPlayer1=danoPlayer2) or (danoPlayer2=danoPlayer1) then
			begin
				delay(2000);
				writeln('Empate, sem dano pra cada lado');
				writeln('Aperte qualquer tecla para continua.');
				readkey;
			end;

end;
Begin
	// Deck de cartas, os decks sÃ£o inicializados nessa aba
		// coluna 1 nome coluna 2 dano coluna 3 efeitos 
		//deck de hades
		deckHades[1,1]:='Fogo Infernal';
		deckHades[1,2]:='8';
		deckHades[1,3]:='Queimadura';
		deckHades[2,1]:='DestroÃ§o da alma';
		deckHades[2,2]:= '5';
		deckHades[3,1]:='Ondas do Aqueronte';
		deckHades[3,2]:='3';
		deckHades[3,3]:='Waves';
		deckHades[4,1]:='Rouba da alma';
		deckHades[4,2]:='10';
		deckHades[4,3]:='Roubo de vida';
		//deck de zeus
		deckZeus[1,1]:='Relampago';
		deckZeus[1,2]:='11';
		deckZeus[1,3]:='Queimadura';
		deckZeus[2,1]:='Sedução';
		deckZeus[2,2]:='4';
		deckZeus[2,3]:='Ataque inimigo inválido';
		deckzeus[3,1]:='Soco Relâmpado';
		deckZeus[3,2]:='14';
		deckZeus[4,1]:='Icor';
		deckZeus[4,2]:='10';
		deckZeus[4,3]:='Roubo de vida';
		//deck de poseidon
		deckPoseidon[1,1]:='Tsunami';
		deckPoseidon[1,2]:='5';
		deckPoseidon[1,3]:='Afogado';
		deckPoseidon[2,1]:='Maremoto';
		deckPoseidon[2,2]:='8';
		deckPoseidon[3,1]:='Água pura';
		deckPoseidon[3,2]:='10';
		deckPoseidon[3,3]:='Roubo de Vida';
		deckPoseidon[4,1]:='Investida de Hipocampos';
		deckPoseidon[4,2]:='4';
		deckPoseidon[4,3]:='Waves';
		//deck de Athena
		deckAthena[1,1]:='Escudo Aegis';
		deckAthena[1,2]:='5';
		deckAthena[1,3]:='Refletir todos os ataques';
		deckAthena[2,1]:='Falange';
		deckAthena[2,2]:='4';
		deckAthena[2,3]:='Waves';
		deckAthena[3,1]:='Maldição de Athena';
		deckAthena[3,2]:='8';
		deckAthena[4,1]:='Icor';
		deckAthena[4,2]:='10';
		deckAthena[4,3]:='Roubo de vida';
		//deck de 
		
		
		
		
		inimigo[1]:='Hercules';
		inimigo[2]:='Persefone';
		inimigo[3]:='Perseu';
		//vida 
		lifeEnemy:=50;
		lifePlayer1:=50;
		lifePlayer2:=50;
		randomize;
	//organizaÃ§Ã£o
		
	//inicio do jogo
	while (repe<>1000 ) do
	begin
		menu:
		repe:=0;
		clrscr;
		gotoxy(50,1);
		writeln('Os Contos da Morte');
		gotoxy(25,3);
		writeln('1 - Inicia aventura(Historia)') ;
		gotoxy(75,3);
		writeln('2 - Continue');
		gotoxy(25,5);
		writeln('3 - PVP ou PVE' ) ;
		gotoxy(75,5);
		writeln('4 - Ajuda');
		gotoxy(50,7);
		writeln('5 - Sair do jogo');
		readln(resposta ) ;
		clrscr;
		//A parti desse case, ira selecionar o modo de jogo 
		case (resposta) of
			//seleção do deck para a historia
			1:begin
				write('Nome do jogador: ');
				readln(player1);
				while (repe<>1000) do
				begin
					deck;
					clrscr;
					start:=1;
				end;	
				
			end;
			2:{goto historia};
			3:start:=3;
			
			4:begin
				writeln('Ajuda');
				writeln('1 - Como jogar?');
				readkey;
			end;
			//uma das forma de sai do jogo
			5:begin
					repe:=1000;
					start:=0;
					writeln('Pressione qualquer tecla para finalizar');
					readkey;
			end
				//caso o usuario digite um comando invalido ele sera mandado para o menu	
			else
				begin
					repe:=0;
					start:=0;
					writeln('Comando invalido');
					writeln('Pressione qualquer tecla para volta ao menu');
					readkey;
					
				end;
		end;
		
			
		//historia
		if(start=1) then
			begin
			//historia;
			end;
		
		
			
			
			
		//PVP e PVE
		if(start=3) then
			begin
				repe:=0;
				while (repe<>1000) do 
					begin	
						clrscr;
						writeln('Bem vindo a arena de duelo');
						writeln('Selecione a forma de duelo');
						writeln('1 - PVE');
						writeln('2 - PVP');
						writeln('3 - Menu principal');
						readln(resposta);
						clrscr;
						case ( resposta) of
							//PVE
							1:begin
								write('Nome do jogador: ');
								readln(player1);
								clrscr;
								deck;
								writeln('Selecione o inimigo:');
								for l := 1 to 5 do 
									writeln(l,' - ',inimigo[l]);
								readln(resposta);
								clrscr;
								case (resposta) of
									1:begin
										CombatePvE;									
										writeln(nomeInimigo,' está diante ',player1,' para o duelo');
										delay(2000);
										repe:=0;
										
										repeat
											
										
											while (repe<>1000) do 
											begin
												clrscr;
												writeln('Escolha qual carta usara:');
												for l := 1 to 4 do													
													for c:= 1 to 1 do 
														begin
															writeln(l,' - ',myDeck[l,c],' Dano: ',myDeck[l,c+1],' Efeito: ',myDeck[l,c+2]);	
														end;
												readln(resposta);
												if(resposta>=5) then
													begin
														writeln('Comando invalido');
														writeln('Aperte qualquer tecla para retorna.');
														readkey;
														repe:=0;
														
													end
												else
													repe:=1000;
											end;	
												IA:=random(4)+1;
												writeln(player1,' usou ',myDeck[resposta,c]);
												writeln(nomeInimigo,' usou ',deckInimigo[IA,c]);
												delay(2000);
												DanoPVE;
												clrscr;
												writeln('Vida: ', player1,'/',lifePlayer1);
												writeln('Vida: ',nomeInimigo,'/',lifeEnemy);												
												delay(2000);
												repe:=0;
												if(lifePlayer1<=0) then
													begin
														writeln(player1,' está morto');
														repe:=1000;
													end;
												if(lifeEnemy<=0) then
													begin
														writeln(nomeInimigo,' está morto');
														repe:=1000;
													end;						
												readkey;
												clrscr;
										until (lifeEnemy<=0) or (lifePlayer1<=0);
									end;
									2:begin
										CombatePvE;									
										writeln(nomeInimigo,' está diante ',player1,' para o duelo');
										delay(2000);
										repe:=0;
										
										repeat
											
										
											while (repe<>1000) do 
											begin
												clrscr;
												writeln('Escolha qual carta usara:');
												for l := 1 to 4 do													
													for c:= 1 to 1 do 
														begin
															writeln(l,' - ',myDeck[l,c],' Dano: ',myDeck[l,c+1],' Efeito: ',myDeck[l,c+2]);	
														end;
												readln(resposta);
												if(resposta>=5) then
													begin
														writeln('Comando invalido');
														writeln('Aperte qualquer tecla para retorna.');
														readkey;
														repe:=0;
														
													end
												else
													repe:=1000;
											end;	
												IA:=random(4)+1;
												writeln(player1,' usou ',myDeck[resposta,c]);
												writeln(nomeInimigo,' usou ',deckInimigo[IA,c]);
												delay(2000);
												DanoPVE;
												clrscr;
												writeln('Vida: ', player1,'/',lifePlayer1);
												writeln('Vida: ',nomeInimigo,'/',lifeEnemy);												
												delay(2000);
												repe:=0;
												if(lifePlayer1<=0) then
													begin
														writeln(player1,' está morto');
														repe:=1000;
													end;
												if(lifeEnemy<=0) then
													begin
														writeln(nomeInimigo,' está morto');
														repe:=1000;
													end;						
												readkey;
												clrscr;
										until (lifeEnemy<=0) or (lifePlayer1<=0);
									end;
									3:begin
										CombatePvE;									
										writeln(nomeInimigo,' está diante ',player1,' para o duelo');
										delay(2000);
										repe:=0;
										
										repeat
											
										
											while (repe<>1000) do 
											begin
												clrscr;
												writeln('Escolha qual carta usara:');
												for l := 1 to 4 do													
													for c:= 1 to 1 do 
														begin
															writeln(l,' - ',myDeck[l,c],' Dano: ',myDeck[l,c+1],' Efeito: ',myDeck[l,c+2]);	
														end;
												readln(resposta);
												if(resposta>=5) then
													begin
														writeln('Comando invalido');
														writeln('Aperte qualquer tecla para retorna.');
														readkey;
														repe:=0;
														
													end
												else
													repe:=1000;
											end;	
												IA:=random(4)+1;
												writeln(player1,' usou ',myDeck[resposta,c]);
												writeln(nomeInimigo,' usou ',deckInimigo[IA,c]);
												delay(2000);
												DanoPVE;
												clrscr;
												writeln('Vida: ', player1,'/',lifePlayer1);
												writeln('Vida: ',nomeInimigo,'/',lifeEnemy);												
												delay(2000);
												repe:=0;
												if(lifePlayer1<=0) then
													begin
														writeln(player1,' está morto');
														repe:=1000;
													end;
												if(lifeEnemy<=0) then
													begin
														writeln(nomeInimigo,' está morto');
														repe:=1000;
													end;						
												readkey;
												clrscr;
										until (lifeEnemy<=0) or (lifePlayer1<=0);
									end;
									4:begin
										CombatePvE;									
										writeln(nomeInimigo,' está diante ',player1,' para o duelo');
										delay(2000);
										repe:=0;
										
										repeat
											
										
											while (repe<>1000) do 
											begin
												clrscr;
												writeln('Escolha qual carta usara:');
												for l := 1 to 4 do													
													for c:= 1 to 1 do 
														begin
															writeln(l,' - ',myDeck[l,c],' Dano: ',myDeck[l,c+1],' Efeito: ',myDeck[l,c+2]);	
														end;
												readln(resposta);
												if(resposta>=5) then
													begin
														writeln('Comando invalido');
														writeln('Aperte qualquer tecla para retorna.');
														readkey;
														repe:=0;
														
													end
												else
													repe:=1000;
											end;	
												IA:=random(4)+1;
												writeln(player1,' usou ',myDeck[resposta,c]);
												writeln(nomeInimigo,' usou ',deckInimigo[IA,c]);
												delay(2000);
												DanoPVE;
												clrscr;
												writeln('Vida: ', player1,'/',lifePlayer1);
												writeln('Vida: ',nomeInimigo,'/',lifeEnemy);												
												delay(2000);
												repe:=0;
												if(lifePlayer1<=0) then
													begin
														writeln(player1,' está morto');
														repe:=1000;
													end;
												if(lifeEnemy<=0) then
													begin
														writeln(nomeInimigo,' está morto');
														repe:=1000;
													end;						
												readkey;
												clrscr;
										until (lifeEnemy<=0) or (lifePlayer1<=0);
									end;
									5:begin
										CombatePvE;									
										writeln(nomeInimigo,' está diante ',player1,' para o duelo');
										delay(2000);
										repe:=0;
										
										repeat
											
										
											while (repe<>1000) do 
											begin
												clrscr;
												writeln('Escolha qual carta usara:');
												for l := 1 to 4 do													
													for c:= 1 to 1 do 
														begin
															writeln(l,' - ',myDeck[l,c],' Dano: ',myDeck[l,c+1],' Efeito: ',myDeck[l,c+2]);	
														end;
												readln(resposta);
												if(resposta>=5) then
													begin
														writeln('Comando invalido');
														writeln('Aperte qualquer tecla para retorna.');
														readkey;
														repe:=0;
														
													end
												else
													repe:=1000;
											end;	
												IA:=random(4)+1;
												writeln(player1,' usou ',myDeck[resposta,c]);
												writeln(nomeInimigo,' usou ',deckInimigo[IA,c]);
												delay(2000);
												DanoPVE;
												clrscr;
												writeln('Vida: ', player1,'/',lifePlayer1);
												writeln('Vida: ',nomeInimigo,'/',lifeEnemy);												
												delay(2000);
												repe:=0;
												if(lifePlayer1<=0) then
													begin
														writeln(player1,' está morto');
														repe:=1000;
													end;
												if(lifeEnemy<=0) then
													begin
														writeln(nomeInimigo,' está morto');
														repe:=1000;
													end;						
												readkey;
												clrscr;
										until (lifeEnemy<=0) or (lifePlayer1<=0);
									end
									else
										begin
											writeln('Comando invalido');
											writeln('Aperte qualquer tecla para retorna.');
											readkey;
										end; 
																		
								end;
							end;	
							//PVP
							2:begin
								writeln('Nome do jogador 1');
								readln(player1);
								clrscr;
								deck;
								for l := 1 to 4 do
									for c := 1 to 3 do
									begin
										deckPlayer1[l,c]:=myDeck[l,c];
									end;
								clrscr;
								writeln('Nome do jogador 2');
								readln(player2);
								clrscr;
								deck;
								for l := 1 to 4 do
									for c := 1 to 3 do
									begin
										deckPlayer2[l,c]:=myDeck[l,c];	
									end;
								clrscr;
								
								writeln('Teste de sorte para ver que iniciara o duelo');
								writeln('Se cai cara ',player1,' ganha');
								writeln('Se cai coroa ',player2,' ganha');
								writeln('Aperte qualquer tecla para lançar a moeda.');
								readkey;
								luck:=random(2);
								if (luck=0) then
									begin
										
										writeln(player1,' ira começar o duelo');
										delay(2000);
										repeat
										clrscr;
											writeln(player1,' escolha sua carta:');
												for l := 1 to 4 do
													for c:= 1 to 1 do
													begin
														writeln( l,' - ',deckPlayer1[l,c],' Dano: ',deckPlayer1[l,c+1],' Efeito: ',deckPlayer1[l,c+2]);	
													end;
											readln(respostaPlayer1);
											clrscr;
											writeln(player2,' escolha sua carta:');
												for l := 1 to 4 do
													for c:= 1 to 1 do
													begin
														writeln(l,' - ',deckPlayer2[l,c],' Dano: ',deckPlayer2[l,c+1],' Efeito: ',deckPlayer2[l,c+2]);	
													end;												
											readln(respostaPlayer2);
											DanoPVP;
											clrscr;
											delay(2000);
											writeln('Vida: ', player1,'/',lifePlayer1);
											
											writeln('Vida: ',player2,'/',lifePlayer2);
											delay(2000);
											if(lifePlayer1<=0) then											
												writeln(player1,' está morto');
											if(lifePlayer2<=0) then											
												writeln(player2,' está morto');																										
										until (lifePlayer1<=0) or (lifePlayer2<=0);																								
										
									end
								else
									begin
										writeln(player2,' ira começar o duelo');
										delay(2000);
										repeat
											clrscr;
											writeln(player2,' escolha sua carta:');
												for l := 1 to 4 do
													for c:= 1 to 1 do
													begin
														writeln('Cartas do seu deck: ',deckPlayer2[l,c],' Dano: ',deckPlayer2[l,c+1],' Efeito: ',deckPlayer2[l,c+2]);	
													end;
											readln(respostaPlayer2);
											clrscr;
											writeln(player1,' escolha sua carta:');
												for l := 1 to 4 do
													for c:= 1 to 1 do
													begin
														writeln('Cartas do seu deck: ',deckPlayer1[l,c],' Dano: ',deckPlayer1[l,c+1],' Efeito: ',deckPlayer1[l,c+2]);	
													end;												
											readln(respostaPlayer1);
											DanoPVP;
											clrscr;
											delay(2000);
											writeln('Vida: ', player1,'/',lifePlayer1);
											writeln('Vida: ',player2,'/',lifePlayer2);
											delay(2000);
											if(lifePlayer1<=0) then											
												writeln(player1,' está morto');
											if(lifePlayer2<=0) then											
												writeln(player2,' está morto');																										
										until (lifePlayer1<=0) or (lifePlayer2<=0);																								
										
									end;																				

							
							
							end;
							3:goto menu
							else
							begin
								writeln('Opção não encontrado');
								delay(1000);
								writeln('Pressione qualquer tecla para volta');
								readkey;
							end;
						end;																																		
					
					
						writeln('Fim do jogo.');
						writeln('1 - Retorna ao menu.');
						writeln('2 - Sair do jogo.');
						readln(resposta);
						if(resposta = 1) then
						goto menu;
						repe:=1000;
					end;	
			end;
	end;//fim da luta
End.