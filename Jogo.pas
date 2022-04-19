Program Jogo;

var
repe,resposta,l,c,start,lifeEnemy,lifePlayer,luck,IA,queimar,danoPlayer,danoInimigo,erro1,erro2: integer;
player,nomeInimigo: string;
//inimigo tem q vira um vetor
inimigo: array[1..1 , 1..3] of string;
myDeck,deckInimigo,deckHades,deckZeus,deckPoseidon,deckAthena: array[1..4,1..3] of string;
//start é a inicialização do jogo 
// card game com 5 decks e 3 inimigos
Begin
// Deck de cartas, os decks são inicializados aq
// coluna 1 nome coluna 2 dano coluna 3 efeitos 
	//deck de hades
	deckHades[1,1]:='Fogo Infernal';
	deckHades[1,2]:= '10';
	deckHades[1,3]:='Queimadura';
	deckHades[2,1]:='Destroço da alma';
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
	deckZeus[1,3]:='Eletrocuta';
	deckZeus[2,1]:='Sedu��o';
	deckZeus[2,2]:='4';
	deckZeus[2,3]:='Ataque inimigo inv�lido';
	deckzeus[3,1]:='Soco Rel�mpado';
	deckZeus[3,2]:='14';
	deckZeus[4,1]:='Icor';
	deckZeus[4,2]:='10';
	deckZeus[4,3]:='Roubo de vida';
	//deck de poseidon
	deckPoseidon[1,1]:='Tsunami';
	deckPoseidon[1,2]:='10';
	deckPoseidon[1,3]:='Afogado';
	deckPoseidon[2,1]:='Maremoto';
	deckPoseidon[2,2]:='8';
	deckPoseidon[3,1]:='Amphitrite';
	deckPoseidon[3,2]:='5';
	deckPoseidon[4,1]:='Investida de Hipocampos';
	deckPoseidon[4,2]:='4';
	deckPoseidon[4,3]:='Waves';
	//deck de Athena
	deckAthena[1,1]:=''; 
	
	
	
	
	inimigo[1,1]:='Hercules';
	inimigo[1,2]:='Persefone';
	//vida 
	lifeEnemy:=50;
	lifePlayer:=50;
	randomize;
//organização
	 
  // inicio do jogo escolhendo deck
  while (repe<>1000 ) do
  begin   
		clrscr;
		gotoxy(50,1);
		writeln('Os Contos da Morte');
		gotoxy(25,3);
		writeln('1 - Inicia aventura') ;
		gotoxy(75,3);
		writeln('2 - Sair do jogo' ) ;
		readln(resposta ) ;
		clrscr;
		//A parti desse case, ira selecionar o deck para ir pra batalha
		case (resposta) of
			1:begin
				write('Nome do jogador: ');
				readln(player);
				while (repe<>1000) do
					begin
					clrscr;
					gotoxy(65,1);
					writeln(player,', escolha seu deck:');
					gotoxy(25,2);
					writeln('1 - Hades');
					gotoxy(75,2);
					writeln('2 - Zeus');
					gotoxy(125,2);
					writeln('3 - Poseidon');
					readln(resposta);
						case (resposta) of
								1:	begin
										for l := 1 to 2 do
											for c := 1 to 3 do 
												begin
													myDeck[l,c]:= deckHades[l,c];
													start:=1;
													repe:=1000;
												end;
									end;
								2:	begin
										for l := 1 to 2 do
											for c := 1 to 3 do 
												begin
													myDeck[l,c]:= deckZeus[l,c];
													start:=1;
													repe:=1000;
												end;
									end;
								3:	begin
										for l := 1 to 2 do
											for c:= 1 to 3 do
												begin
													myDeck[l,c]:= deckPoseidon[l,c];
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
					clrscr;
					end;	
			end;
				//uma das forma de sai do jogo
			2:begin
					repe:=1000;
					start:=0;
					writeln('Pressione qualquer tecla para finalizar');
					readkey;
			end;
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
		// seleção da batalha    
		if (start=1) then
			begin
				repe:=0;
				while (repe<>1000) do 
					begin	
						clrscr;
						writeln('Bem vindo a arena de duelo');
						writeln('Selecione seu inimigo');
						writeln('1 - ',inimigo[1,1]);
						writeln('2 - ',inimigo[1,2]);
						readln(resposta);
						clrscr;
							case ( resposta) of
								1:	begin
										repe:=1000;
										nomeInimigo:=inimigo[1,1];
										writeln('Filho de Zeus e Heroi de Roma, HERCULES');
										for l := 1 to 2 do
											for c:= 1 to 3 do
												deckInimigo[l,c]:=deckZeus[l,c];
										delay(1000);
										writeln('A batalha ira come�ar');
										delay(2000);
										writeln('O guerreiro a procura de provação para adentra o olimpo ',player,' desafia o filho do deus dos deuses Hercule');
										delay(2000);
										writeln('Aperte qualquer tecla para ver seu deck');
										readkey;
										clrscr;
										//visualizar as cartas
										for l := 1 to 2 do
											for c:= 1 to 1 do
											begin
												writeln('Cartas do seu deck: ',myDeck[l,c],' Dano: ',myDeck[l,c+1],' ',myDeck[l,c+2]);	
											end;
									end;
								2:	begin
										repe:=1000;
										nomeInimigo:=inimigo[1,2];
										writeln('Filha de Zeus e esposa de Hades, PERSÉFONE');
										for l := 1 to 2 do
											for c:= 1 to 3 do
												deckInimigo[l,c]:=deckHades[l,c];
										delay(1000);
										writeln('A batalha ira começa');
										delay(2000);
										writeln('O guerreiro a procura de provação para adentra o olimpo ',player,' desafia o filho do deus dos deuses Hercule');
										delay(2000);
										writeln('Aperte qualquer tecla para ver seu deck');
										readkey;
										clrscr;
										//visualizar as cartas
										for l := 1 to 2 do
											for c:= 1 to 1 do
											begin
												writeln('Cartas do seu deck: ',myDeck[l,c],' Dano: ',myDeck[l,c+1],' Efeito: ',myDeck[l,c+2]);	
											end;
									
									end;
								else
									begin
										writeln('Inimigo não encontrado');
										delay(1000);
										writeln('Pressione qualquer tecla para volta');
										readkey;
									end;
							end;
					end;						
			//combate, o turno sera feito numa repetição, e a repetição ira acabar quando uma vida chegar a zero.
			//writeln('Teste de sorte para ver quem iniciara a batalha');
			
			//luck:=random(1)+1;
			//case(luck) of
				//1:begin
					//writeln(player,' ira começar a batalha');
					repe:=0;
					while ( repe<>1000) do
					begin
						writeln('Escolha qual carta usara:');
						for l := 1 to 2 do
						begin
							for c:= 1 to 1 do 
							begin
								writeln(l,' - ',myDeck[l,c],' Dano: ',myDeck[l,c+1],' Efeito ',myDeck[l,c+2]);	
							end;
						end;
						//resposta= a linha
						readln(resposta);
						IA:=random(2)+1;
						writeln(player,' usou ',myDeck[resposta,c]);
						writeln(nomeInimigo,' usou ',deckInimigo[IA,c]);
						delay(2000);
						//convertendo string para integer, dano se string foi para integer
						val(myDeck[resposta,c+1],danoPlayer,erro1);
						val(deckInimigo[IA,c+1],danoInimigo,erro2);
						writeln(myDeck[resposta,c+1],' ',deckInimigo[IA,c+1]);
						if(danoPlayer>danoInimigo) then
							begin
								//criar algoritmo do dano, oq eu fiz tem q converter string para integer
								lifeEnemy:= lifeEnemy-danoPlayer;	
								if (myDeck[resposta,c+2]='Queimadura') or (myDeck[resposta,c+2]='Eletrocuta') then
									//dano extra
									begin
										queimar:=3;
										lifeEnemy:= lifeEnemy-queimar;
									end
								else;
								if(myDeck[resposta,c+2]='Afogado') then
									lifeEnemy:= lifeEnemy-5
								else	
									writeln('Carta sem efeito adicional');
							end;
						if(danoInimigo>danoPlayer) then
							begin
								lifePlayer:=lifePlayer-danoInimigo;
								
								if (deckInimigo[resposta,c+2]='Queimadura') or (deckInimigo[resposta,c+2]='Eletrocuta') then
									begin	
										queimar:=3;
										lifePlayer:=lifePlayer-queimar;
									end
								else;
								if(deckInimigo[resposta,c+2]='Afogado') then
									lifePlayer:= lifePlayer-5
								else
									writeln('Carta inimiga sem efeito adicional');
						end;
						
						writeln('Vida ', player,' ',lifePlayer);
						writeln('Vida ',nomeInimigo,' ',lifeEnemy);
						writeln(c);	
						if(lifePlayer<=0) then
							begin
								writeln(player,' est� morto');
								repe:=1000;
							end;
						if(lifeEnemy<=0) then
							begin
								writeln(nomeInimigo,' est� morto');
								repe:=1000;
							end;			
					end;				
				//end;
			//end;
		end;
	end;//fim da luta
End.