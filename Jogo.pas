Program Jogo;
label menu;
//label deckErro;
	var
	resposta,respostaPlayer1,respostaPlayer2,repe,l,c,start,lifeEnemy,lifePlayer1,lifePlayer2,luck,IA,erro1,erro2,x,y: integer;
	player1,player2,nomeInimigo: string;
	//inimigo tem q vira um vetor
	
	inimigo: array[1..5] of string;
	myDeck,deckInimigo,deckPlayer1,deckPlayer2,deckHades,deckZeus,deckPoseidon,deckAthena: array[1..4,1..3] of string;
	//start Ã© a inicializaÃ§Ã£o do jogo 
	// card game com 5 decks e 3 inimigos

procedure Deck;	
	procedure zeus;
		begin
		gotoxy(55,3);
		writeln('MBgRgMgRgRgMMRMRgMgMgRgRgMgRgRMRgRgRgMgRgQQR.7.q7.');
		gotoxy(55,4);
		writeln('BBBQBQBBBBBBBBBBBBBBBBBBBBBQBBBBBBBBBBBQBBBBI7LBQL');
		gotoxy(55,5);
		writeln('PBBBQQRQRQgRMRMRgRgQMRMQBBQBQBBBBBBQMRgRMRRQBBBBBB');
		gotoxy(55,6);
		writeln('L7rPBBBQBBQQQMRRQRRMRMQBqUP7Ii.:u5BQQRRMQRRRQQQRRB');
		gotoxy(55,7);
		writeln('B1:.UQBYQBBBQRQMQRQRQQP .i27  .r7rXBQRQMQRQRQRRgB');
		gotoxy(55,8);
		writeln('QBBBd:.2..sbBBBQQRQQBQBrJ s  iv:..u MBQRQRQMQRQMRB');
		gotoxy(55,9);
		writeln('MBRQBBgi: . .5BBBQQBB5.777r..ir7r.::BBRQMQMQMQMQgB');
		gotoxy(55,10);
		writeln('QBRMQQBBQ 7Q. .UBBBB7 ..I1.7rLPSi:JBBRQMQRQRQRQMRB');
		gotoxy(55,11);
		writeln('MBgRMQQBBBbBBd  .rBBrL2X1.  77BBSP1BQQMQMQRQMQMRgB');
		gotoxy(55,12);
		writeln('QBMMQRQQQQBQBBB77. MB :Q  SqY.Y77iPQQRQRQMQQQQQMMB');
		gotoxy(55,13);
		writeln('gBgQRQMQRQQBBB2 i  EKi.B. ir  ..iSBBRQRQRQBBBBBBRB');
		gotoxy(55,14);
		writeln('RBMMQRQRQQBBg        : .7j r .Bi.XBQQMQRQBP77PBBBB');
		gotoxy(55,15);
		writeln('MBMQMQQBBBs. i: vIgB: Yr:Pq.: SdiBBBQQMQQBUR. .:5B');
		gotoxy(55,16);
		writeln('RBRMQQBBr iJBd r5BBBBL :RPBPQ7i7ivRDBQQMQB:r:  r.B');
		gotoxy(55,17);
		writeln('MBMQQB7 rBBBB  QQBB1 BBr vgiLSs::7 :UBQQRBBrr:.KiB');
		gotoxy(55,18);
		writeln('RBRQB: BBQBB ii     :5PBM :r  JQPJsZ.RBBBQBB7 . BB');
		gotoxy(55,19);
		writeln('MBMBB BMDBB: B.      i5BQBv R: igsB55 igRBBB .I QB');
		gotoxy(55,20);
		writeln('RBRBQ ..Bu      5BPX:   .UMBBBd  vBJBr.:::g  Bd BB');
		gotoxy(55,21);
		writeln('MBMBB.       vQ. iKBBBg7...  .r   sB7:QBBB  BBq BB');
		gotoxy(55,22);
		writeln('QBRQBBBQBBBQBBBBB2    .gBQ.:MBBjg: ji  :Sv XBBr BQ');
		gotoxy(55,23);
		writeln('MBMQQQBBBBQBQBBBBb. rBBBB .BBRi2BBv    .:   PU .BB');
		gotoxy(55,24);
		writeln('RQMMQRQRQQBBBBZ7.:QY gBBP BBB 7BBgq.  Ui:     .BBB');
		gotoxy(55,25);
		writeln('gBgQMQRQQBBRvirUMBRB. bBB.BB.5BQr7ZiB :BBBLruBBBRB');
		gotoxy(55,26);
		writeln('RQMMQQBBB2.:UqBBB:BL  dBBIr.EQdrQQQ BB  BQBBBBBQRB');
		gotoxy(55,27);
		writeln('MBMQQBQd :QgvgBB Qi:S  :Br.QgBdBPBr7BBB. BBBQQMRMB');
		gotoxy(55,28);
		writeln('RBRMBQr BB..BBQ  i BB.  :IJiBBB... uBBBBi BBQMQRRB');
		gotoxy(55,29);
		writeln('MBMBB  BE  i...5BRBBB. :v:7Bgi  .   BBQBBYiBRQMQgB');
		gotoxy(55,30);
		writeln('RBQQQ:7r.iBBBBBBBBBBi ...ir..:5Ei   QBBQBBPDBRQMRB');
		gotoxy(55,31);
		writeln('MBgQQBBBQBQBQBBQPMQBsQQBQbDBBBBQEgBBBMgBQQQQRQMQgB');
		gotoxy(55,32);
		writeln('QBQMQQQQQQQRQRBvrQd XQ .BZjQ  BBDrB.PBrQBRQRQMQMRB');
		gotoxy(55,33);
		writeln('MBgQRQRQMQMQMQQBBg LQB .dPQB .BBRKB. :gBQQMQMQMRMB');
		gotoxy(55,34);
		writeln('RBRgRMQRQMQRQMBBs PBBB  BEBB  BQMuBBB: ZBMQgRgQMMB');
		gotoxy(55,35);
		writeln('MBgRgRgRgRMRgRB5 IQP D  QQ.Eu Zg5DE:BD QQRgRgMMRgB');
		gotoxy(55,36);
		writeln('RQBBBBBBBQBBBQBBBBBBBBBBBBBBBBBBBQBBBBBQBBBBBBBBBB');	

	end;
	procedure poseidon;
		begin
		gotoxy(110,3);
		writeln('BBBBBBQBBBBBBBBBQBBBQBBBBBBBBBBBQBBBBBBBBBQBBBBBB');
		gotoxy(110,4);
		writeln('BBBBBgjBBBMBBBBBBBBBBBBBBBBBQMRBBBBQBBBBBBBBBBBBB');
		gotoxy(110,5);
		writeln('BBDBQ2 :BB BBBBBBBBBBBBBBR:i.Bu.II PBBBBBBQBQBBBB');
		gotoxy(110,6);
		writeln('BBU QBg BBq:BBBBBBBBBQBBQ   ::i7PI :BBBBBBBBBBBBB');
		gotoxy(110,7);
		writeln('QBQq BBv.BB  BBBBBBBBBBB.  .i.7::L :BBBBQBBBBBBBB');
		gotoxy(110,8);
		writeln('BBBB igP  i.RBBBBQBBBBQ   ..M22Xv:::BQBBBBBBBBBBB');
		gotoxy(110,9);
		writeln('QBBBBXuu: .BBBBBQBBBQS     rvi:LPqr:BBBBQBBBBBBBQ');
		gotoxy(110,10);
		writeln('BBBBBBBBBi QBBBBBBBP7i  ..7   .:2Q.   .iBQBBBBBBB');
		gotoxy(110,11);
		writeln('QBBBBBBBB2:ri.QBQ..:.  :.. ..  i : BBBQ7 gBBBBBBB');
		gotoxy(110,12);
		writeln('BBBBBQBBL rrE:gQB7   iQr:.iBErr:iUBQQBBL  BBBQBQB');
		gotoxy(110,13);
		writeln('BBBBBBBBB.i  . :i:   BBBBBBq.BQBBBBE 7BB  QBBBBBB');
		gotoxy(110,14);
		writeln('BBBBBBBBBQMS.          ::.::  .....   .BPi gBBBBB');
		gotoxy(110,15);
		writeln('QBBBBBBBBBBBB  r   v:   vBBPvBQquBB  B: rB .BBBBQ');
		gotoxy(110,16);
		writeln('BBBBBBBBBBBBBB BBQBBB    RB :BBQMP  BBBd Q. MBBBB');
		gotoxy(110,17);
		writeln('QBBBBBBBBBBBBBi BBBB.   :bd:YEvK1B. BBBQ BQi BBBB');
		gotoxy(110,18);
		writeln('BBBBBBBBBBBBBQB  BBr:   :gBQBBB7:B  gBBBr BB MBQB');
		gotoxy(110,19);
		writeln('QBBBQBZ5QBBBQBBQ YB rji. .rriY7.:7b :BBBBY.B sQBB');
		gotoxy(110,20);
		writeln('BBBv5ddvQbB: iQgi 27.:u7vrJv:..  rB  BM2B::Y5sBBB');
		gotoxy(110,21);
		writeln('QBQKI2PPBJ   BQBg: B..::. .iUZ2g7iri rBDg  :.Y5BB');
		gotoxy(110,22);
		writeln('BBBQBQBBr    BBBBB iB ii7.    irrYLvB5LBB:QB.  QB');
		gotoxy(110,23);
		writeln('BBBBBBBB .77  vBBBB Bi.7:r    .7::...Y:.BBBBE .BB');
		gotoxy(110,24);
		writeln('BBBQBBBB .rqv.. .IBi : .iir     ::7:: .iBBBBBBBBB');
		gotoxy(110,25);
		writeln('QBBBBBQB. i.2L77    7 i.:::.     r:ii7 .JBBBQBBBB');
		gotoxy(110,26);
		writeln('BBBBBBBBB. ..7uu2   7.r:rii      .r7i:. bBBBBBBBB');
		gotoxy(110,27);
		writeln('QBBBBBBBBBj  i.vI.   7r7i1:       ir:i. BBBBBBBBQ');
		gotoxy(110,28);
		writeln('BBBBBBBBBBBB. : d.    L7.v2       :ir:. BQBBBBBBB');
		gotoxy(110,29);
		writeln('BBBBBBQBBBBBB:  Y     : .7:1   .  .i::  BBBBBBBBB');
		gotoxy(110,30);
		writeln('BBBBBBBQBBBBBQ  .       .:BQ:     .:.i :BBBBBBBQB');
		gotoxy(110,31);
		writeln('QBQBBBBBBBBBB     .i7XQBr BB.     .:.  BBBBBBBQBQ');
		gotoxy(110,32);
		writeln('BQBBBBBBBQBB.   .QBBBBBBB.:R      :.  DBBBBBBBBBB');
		gotoxy(110,33);
		writeln('QBBBBBBBBBBB:   :BBBBBBBBB..     i.  DBBBBBBBBBBB');
		gotoxy(110,34);
		writeln('BBBBBBBQBBBBB.   :QQBRgri:.     .  .BBBQBBBBBBBBB');
		gotoxy(110,35);
		writeln('BBBBBBBBBBQBQB1                  :QBBBBBBBQBBBBBB');
		gotoxy(110,36);
		writeln('BBBBBBBBBBBBBBBBBBLi:.....::rsQBBBBBBQBBBQBBBBu7B');
	end;
	procedure hades;
		begin
		gotoxy(1,3);
		writeln('BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB');
		gotoxy(1,4);
		writeln('BBBBBBBBB9BBBBBhBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB');
		gotoxy(1,5);
		writeln('BBBBBBBBB MBBBi:BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB');
		gotoxy(1,6);
		writeln('BBBBBBBBB 9BBB,2BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB');
		gotoxy(1,7);
		writeln('BBBBBBBBi,GBBB,2MBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB');
		gotoxy(1,8);
		writeln('BBBBBBBis5BBBB2i2MBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB');
		gotoxy(1,9);
		writeln('BBBBBBh ,rGBBBs:sMBBBiBBBBBBBBBBBBBBBBBBBBBBBBBBB');
		gotoxy(1,10);
		writeln('BBBBBBBB2,:25:r9BBM,  :irss5MBBBBBBBBBBBBBBBBBBBB');
		gotoxy(1,11);
		writeln('BBBBBBBBBB2  2BBBBs,,,shs:r2:MBBBBBBBBBBBBBBBBBBB');
		gotoxy(1,12);
		writeln('BBBBBBBBBBB ,BBBBB,sMBii  iGr,BBBBBBBBBBBBBBBBBBB');
		gotoxy(1,13);
		writeln('BBBBBBBBBBB 2BBBBB rM:2BBM  B2,BBBBBBBBBBBBBBBBBB');
		gotoxy(1,14);
		writeln('BBBBBBBBBBB sBBBBB, s sBB:  2B iBBBBBBBBBBBBBBBBB');
		gotoxy(1,15);
		writeln('BBBBBBBBBBB iBBBBB: r29r  rsBB2  2BBBBBBBBBBBBBBB');
		gotoxy(1,16);
		writeln('BBBBBBBBBBB ,MBBBirhr:,  rs 9BBBs 9BBBBBBBBBBBBBB');
		gotoxy(1,17);
		writeln('BBBBBBBBBBrssirh2,Mshissr:s 2 sBBrG99BBBBBBBBBBBB');
		gotoxy(1,18);
		writeln('BBBBBBBBBr:BBSi  ,,::,MSBS:          MBBBBBBBBBBB');
		gotoxy(1,19);
		writeln('BBBBBBBB: sBG2, ,BBBh, sMBBBB9sS9s5s  ,BBBBBBBBBB');
		gotoxy(1,20);
		writeln('BBBBBG,     :  ,:BBBBBBBBBBBBBGsBBBB2  ,BBBBBBBBB');
		gotoxy(1,21);
		writeln('BBBMi   ,,  i  :i,9BB9rBBBB92h,   ,:     9B99BGBB');
		gotoxy(1,22);
		writeln('BBs XBX ,   :  r,5,sB,sMMMBh   ,   :B2 rs GM22MBB');
		gotoxy(1,23);
		writeln('BM BBBB      s,:2,i,  Mhsi:i,, , : :BBGBh sBGM9BB');
		gotoxy(1,24);
		writeln('B:,B9Bh rBB  BB :B: , ,sX522r   ,BB  iMM2 ,BBBBBB');
		gotoxy(1,25);
		writeln('BX     sBBB  BBX,:r2BBB,::   ,: 2BBBG  rBB GBBMGB');
		gotoxy(1,26);
		writeln('BBBGBBBBBBB  BBBs2srSBB:rrBB95s  BBBr ,BB  Bs, sB');
		gotoxy(1,27);
		writeln('BBBBBBBBBBB    Bs,    ss,BBGMS,ssBBh  ,s  B,XB9BB');
		gotoxy(1,28);
		writeln('BBBBBBBBBr9rs: s:  ,:, , ,:    s,BB  ,   BB XBBBB');
		gotoxy(1,29);
		writeln('BBBBBG92, 2GBBG92s,:r, ,s,,    s:BG    :BBBB sBBB');
		gotoxy(1,30);
		writeln('BBBBB, 92 :s5rsMss  :,9BMMi  B9  ,    9BBBBB9 2BB');
		gotoxy(1,31);
		writeln('BBBBBGss  :9Bhs    BGBBisr , 5BBi    BBBBBBBB iMB');
		gotoxy(1,32);
		writeln('BBBBBBr::,i:,   Bi,:ss Gr ,,, ,BBBBMi,is9MGs ,5BB');
		gotoxy(1,33);
		writeln('BBBBBBBBMBBBBBM2B  rs sM:r,,   BBBs:        sBBBB');
		gotoxy(1,34);
		writeln('BBBBBBBBBBBBBBBBX  shs: X:r,   ,  ,, 5X   ,  BBBB');
		gotoxy(1,35);
		writeln('BBBBBBBBBBBBBBBBBB,    ir B :2,Mr9BBBBsrM,9 iBBBB');
		gotoxy(1,36);
		writeln('BBBBBBBBBBBBBBBBBBBBMiXSsBBBBBBBBBBBBBBBBBBBBBBBB');
	
	end;
	procedure athena;
		begin
		gotoxy(165,3);
		writeln('BGGMGGGMGMGGGGGGGMGGGMGMGMGMGMGGGMGMGGGMMBBBMMGGG');
		gotoxy(165,4);
		writeln('BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB,,BBBBB');
		gotoxy(165,5);
		writeln('GBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB,, BBBBB');
		gotoxy(165,6);
		writeln('GBBBBBBBBBBBBBBBBBBBB::, , :r:  ,BBBBBBB,,r iBBBB');
		gotoxy(165,7);
		writeln('GBBBBBBBBBBBBBBBBB,,   , , :i    :,,,BBr B: :BBBB');
		gotoxy(165,8);
		writeln('GBBBBBBBBBBBBBBB:  ,,,,,, ,,,  ,,    9B :B, :BBBB');
		gotoxy(165,9);
		writeln('GBBBBBBBBBBBBBB,  , ,,             ,BBB rB  ,BBBB');
		gotoxy(165,10);
		writeln('GBBBBBBBBBBBBB, ,,:,  ,:    ,:r:  rBBBB:,r,iBBBBB');
		gotoxy(165,11);
		writeln('GBBBBBBBBBBBBB:,,,  ,S2:       rrBBBBBBB, ,BBBBBB');
		gotoxy(165,12);
		writeln('MBBBBBBBBBBBBB      2r   ,:rsriiiSBBBBB,    :BBBB');
		gotoxy(165,13);
		writeln('GBBBBBBBBBBBBB,     :   ,::iii:: iBBBBB  ,r ,,,BB');
		gotoxy(165,14);
		writeln('MBBBBBBBBBBBBBB               ,Br  ,9BB, s:,B:  B');
		gotoxy(165,15);
		writeln('GBBBBBBBBBBBBBBM        ,::i,iirsr  2Br,:irBBB  B');
		gotoxy(165,16);
		writeln('GBBBBBBBBBBBBBBBs      ::,,,:,::s ,,M:  rr ,B9,BB');
		gotoxy(165,17);
		writeln('GBBBBBBBBBBBBBBBBi  sr , ,,:B, ,,BBB2 r,rB  BBBBB');
		gotoxy(165,18);
		writeln('MBBBBBBBBBBBBBBBBi :S  :   :BBB: :BB,,B BB ,BBBBB');
		gotoxy(165,19);
		writeln('GBBBBBBBBBBBBBBBB:rB: , :: rBBs ,iBBMX:,Br,BBBBBB');
		gotoxy(165,20);
		writeln('GBBBBBBBBBBG::BBBBBi  :,,B  :ii:BBBBBB::BBBBBBBBB');
		gotoxy(165,21);
		writeln('GBBBBBBBBB, ::,i:::isr:B is ,irBBBBBBs,,,9BBBBBBB');
		gotoxy(165,22);
		writeln('BBBBMBBBBBsii:ir:ir,sBs22 ,    BBBBBB, , :BBBsMBB');
		gotoxy(165,23);
		writeln('BGrB,,rBB:   ,    , irrrrsi,, ,,s,sBB  :BBiBB :Bs');
		gotoxy(165,24);
		writeln(',::r:,i:       ,,,::      iXsrs,,:ii: i ,::,r,:,i');
		gotoxy(165,25);
		writeln(':r:i:iB  ,s  : r,rhG      ,:,:si ,Bss:s  iBSM,,,B');
		gotoxy(165,26);
		writeln('::,:ir  i9: ,s r ,i:   ,:         ss, : i,,,r,::,');
		gotoxy(165,27);
		writeln('MBBBB  rBB, Ms S,     ,,,i:,,,,,r2:  i::BBhBBBBBB');
		gotoxy(165,28);
		writeln('MBBB: rBBB  Br s:     ,:,,issr:,i    iBBBBBBBBBBB');
		gotoxy(165,29);
		writeln('GBBB :B::B  BB is    , ,s,           9BBBBBBBBBBB');
		gotoxy(165,30);
		writeln('MBB  BB iB  BB  B       :,        ,r,BBBBBBBBBBBB');
		gotoxy(165,31);
		writeln('GBB :Bs 2B  BBr rs   ,   i,     ,rBr BBBBBBBBBBBB');
		gotoxy(165,32);
		writeln('MB: BB: BB  BBB, Bi      ,,  ,,BBBB,,BBBBBBBBBBBB');
		gotoxy(165,33);
		writeln('MB,,BB, sB: BBBB :Bi         , BBBB ,BBBBBBBBBBBB');
		gotoxy(165,34);
		writeln('MBBBBB: :BBsBBBBB:BBB,     5r:,2BBG BBBBBBBBBBBBB');
		gotoxy(165,35);
		writeln('GBBBBBB  BBBBBBBBBBBBBB:   ,,s,,hB, BBBBBBBBBBBBB');
		gotoxy(165,36);
		writeln('BBBBBBBBiBBBBBBBBBBBBBBBBBsii::,:ii:BBBBBBBBBBBBB');
	end;



	begin
	
	repe:=0;
	while(repe<>1000) do
		begin 
			gotoxy(100,1);
			writeln(' Escolha seu deck:');
			gotoxy(20,2);
			writeln('1 - Hades');
			hades;
			gotoxy(75,2);
			writeln('2 - Zeus');
			zeus;
			gotoxy(130,2);
			writeln('3 - Poseidon');
			poseidon;
			gotoxy(185,2);
			writeln('4 - Athena');
			athena;
			gotoxy(1,40);

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
						writeln('Efeito de queimadura ativo.');
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
				if (myDeck[resposta,c+2]='Refletir todos os ataques') then
				begin
					danoPlayer1:=danoInimigo;
					lifeEnemy:=lifeEnemy-danoPlayer1;
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
				if (deckInimigo[IA,c+2]='Refletir todos os ataques') then
				begin
					danoInimigo:=danoPlayer1;
					lifePlayer1:=lifePlayer1-danoInimigo;
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
				delay(2000);			
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
procedure inimigoSprite;
	begin

	
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
		gotoxy(75,1);
		writeln('Os Contos da Morte');
		gotoxy(25,3);
		writeln('1 - Inicia aventura(Historia)') ;
		gotoxy(125,3);
		writeln('2 - Continue');
		gotoxy(25,5);
		writeln('3 - PVP ou PVE' ) ;
		gotoxy(125,5);
		writeln('4 - Ajuda');
		gotoxy(75,7);
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
								clrscr;
								for l := 1 to 5 do 
									begin
										x:=x+50;
										y:=2;
										gotoxy(x,y);
										writeln(l,' - ',inimigo[l]);
									end;
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