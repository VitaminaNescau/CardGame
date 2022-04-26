Program Jogo;
label menu;
{Jogo feito para projeto final da materia de logica de programaÁ„o
 codigo fonte feito por VITOR DE JESUS
 sprites feito por DOUGLAS
 teste/correÁ„o GISELA/ICARU
 }
var
	teste,teste1,qtd,resposta,respostaPlayer1,respostaPlayer2,repe,l,c,start,lifeEnemy,lifePlayer1,lifePlayer2,luck,IA,erro1,erro2,x,y: integer;
	player1,player2,nomeInimigo: string;
	//inimigo tem q vira um vetor
	
	inimigo: array[1..5] of string;
	myDeck,deckInimigo,deckPlayer1,deckPlayer2,deckHades,deckZeus,deckPoseidon,deckAthena: array[1..4,1..4] of string;
	//start √É¬© a inicializa√É¬ß√É¬£o do jogo 
	// card game com 5 decks e 3 inimigos

procedure Deck;	
	procedure zeus;
		begin
		gotoxy(95,3);
		writeln('MBgRgMgRgRgMMRMRgMgMgRgRgMgRgRMRgRgRgMgRgQQR.7.q7.');
		gotoxy(95,4);
		writeln('BBBQBQBBBBBBBBBBBBBBBBBBBBBQBBBBBBBBBBBQBBBBI7LBQL');
		gotoxy(95,5);
		writeln('PBBBQQRQRQgRMRMRgRgQMRMQBBQBQBBBBBBQMRgRMRRQBBBBBB');
		gotoxy(95,6);
		writeln('L7rPBBBQBBQQQMRRQRRMRMQBqUP7Ii.:u5BQQRRMQRRRQQQRRB');
		gotoxy(95,7);
		writeln('B1:.UQBYQBBBQRQMQRQRQQP .i27  .r7rXBQRQMQRQRQRRgB');
		gotoxy(95,8);
		writeln('QBBBd:.2..sbBBBQQRQQBQBrJ s  iv:..u MBQRQRQMQRQMRB');
		gotoxy(95,9);
		writeln('MBRQBBgi: . .5BBBQQBB5.777r..ir7r.::BBRQMQMQMQMQgB');
		gotoxy(95,10);
		writeln('QBRMQQBBQ 7Q. .UBBBB7 ..I1.7rLPSi:JBBRQMQRQRQRQMRB');
		gotoxy(95,11);
		writeln('MBgRMQQBBBbBBd  .rBBrL2X1.  77BBSP1BQQMQMQRQMQMRgB');
		gotoxy(95,12);
		writeln('QBMMQRQQQQBQBBB77. MB :Q  SqY.Y77iPQQRQRQMQQQQQMMB');
		gotoxy(95,13);
		writeln('gBgQRQMQRQQBBB2 i  EKi.B. ir  ..iSBBRQRQRQBBBBBBRB');
		gotoxy(95,14);
		writeln('RBMMQRQRQQBBg        : .7j r .Bi.XBQQMQRQBP77PBBBB');
		gotoxy(95,15);
		writeln('MBMQMQQBBBs. i: vIgB: Yr:Pq.: SdiBBBQQMQQBUR. .:5B');
		gotoxy(95,16);
		writeln('RBRMQQBBr iJBd r5BBBBL :RPBPQ7i7ivRDBQQMQB:r:  r.B');
		gotoxy(95,17);
		writeln('MBMQQB7 rBBBB  QQBB1 BBr vgiLSs::7 :UBQQRBBrr:.KiB');
		gotoxy(95,18);
		writeln('RBRQB: BBQBB ii     :5PBM :r  JQPJsZ.RBBBQBB7 . BB');
		gotoxy(95,19);
		writeln('MBMBB BMDBB: B.      i5BQBv R: igsB95 igRBBB .I QB');
		gotoxy(95,20);
		writeln('RBRBQ ..Bu      5BPX:   .UMBBBd  vBJBr.:::g  Bd BB');
		gotoxy(95,21);
		writeln('MBMBB.       vQ. iKBBBg7...  .r   sB7:QBBB  BBq BB');
		gotoxy(95,22);
		writeln('QBRQBBBQBBBQBBBBB2    .gBQ.:MBBjg: ji  :Sv XBBr BQ');
		gotoxy(95,23);
		writeln('MBMQQQBBBBQBQBBBBb. rBBBB .BBRi2BBv    .:   PU .BB');
		gotoxy(95,24);
		writeln('RQMMQRQRQQBBBBZ7.:QY gBBP BBB 7BBgq.  Ui:     .BBB');
		gotoxy(95,25);
		writeln('gBgQMQRQQBBRvirUMBRB. bBB.BB.5BQr7ZiB :BBBLruBBBRB');
		gotoxy(95,26);
		writeln('RQMMQQBBB2.:UqBBB:BL  dBBIr.EQdrQQQ BB  BQBBBBBQRB');
		gotoxy(95,27);
		writeln('MBMQQBQd :QgvgBB Qi:S  :Br.QgBdBPBr7BBB. BBBQQMRMB');
		gotoxy(95,28);
		writeln('RBRMBQr BB..BBQ  i BB.  :IJiBBB... uBBBBi BBQMQRRB');
		gotoxy(95,29);
		writeln('MBMBB  BE  i...5BRBBB. :v:7Bgi  .   BBQBBYiBRQMQgB');
		gotoxy(95,30);
		writeln('RBQQQ:7r.iBBBBBBBBBBi ...ir..:5Ei   QBBQBBPDBRQMRB');
		gotoxy(95,31);
		writeln('MBgQQBBBQBQBQBBQPMQBsQQBQbDBBBBQEgBBBMgBQQQQRQMQgB');
		gotoxy(95,32);
		writeln('QBQMQQQQQQQRQRBvrQd XQ .BZjQ  BBDrB.PBrQBRQRQMQMRB');
		gotoxy(95,33);
		writeln('MBgQRQRQMQMQMQQBBg LQB .dPQB .BBRKB. :gBQQMQMQMRMB');
		gotoxy(95,34);
		writeln('RBRgRMQRQMQRQMBBs PBBB  BEBB  BQMuBBB: ZBMQgRgQMMB');
		gotoxy(95,35);
		writeln('MBgRgRgRgRMRgRB5 IQP D  QQ.Eu Zg5DE:BD QQRgRgMMRgB');
		gotoxy(95,36);
		writeln('RQBBBBBBBQBBBQBBBBBBBBBBBBBBBBBBBQBBBBBQBBBBBBBBBB');	

	end;
	procedure poseidon;
		begin
		gotoxy(25,44);
		writeln('BBBBBBQBBBBBBBBBQBBBQBBBBBBBBBBBQBBBBBBBBBQBBBBBB');
		gotoxy(25,45);
		writeln('BBBBBgjBBBMBBBBBBBBBBBBBBBBBQMRBBBBQBBBBBBBBBBBBB');
		gotoxy(25,46);
		writeln('BBDBQ2 :BB BBBBBBBBBBBBBBR:i.Bu.II PBBBBBBQBQBBBB');
		gotoxy(25,47);
		writeln('BBU QBg BBq:BBBBBBBBBQBBQ   ::i7PI :BBBBBBBBBBBBB');
		gotoxy(25,48);
		writeln('QBQq BBv.BB  BBBBBBBBBBB.  .i.7::L :BBBBQBBBBBBBB');
		gotoxy(25,49);
		writeln('BBBB igP  i.RBBBBQBBBBQ   ..M22Xv:::BQBBBBBBBBBBB');
		gotoxy(25,50);
		writeln('QBBBBXuu: .BBBBBQBBBQS     rvi:LPqr:BBBBQBBBBBBBQ');
		gotoxy(25,51);
		writeln('BBBBBBBBBi QBBBBBBBP7i  ..7   .:2Q.   .iBQBBBBBBB');
		gotoxy(25,52);
		writeln('QBBBBBBBB2:ri.QBQ..:.  :.. ..  i : BBBQ7 gBBBBBBB');
		gotoxy(25,53);
		writeln('BBBBBQBBL rrE:gQB7   iQr:.iBErr:iUBQQBBL  BBBQBQB');
		gotoxy(25,54);
		writeln('BBBBBBBBB.i  . :i:   BBBBBBq.BQBBBBE 7BB  QBBBBBB');
		gotoxy(25,55);
		writeln('BBBBBBBBBQMS.          ::.::  .....   .BPi gBBBBB');
		gotoxy(25,56);
		writeln('QBBBBBBBBBBBB  r   v:   vBBPvBQquBB  B: rB .BBBBQ');
		gotoxy(25,57);
		writeln('BBBBBBBBBBBBBB BBQBBB    RB :BBQMP  BBBd Q. MBBBB');
		gotoxy(25,58);
		writeln('QBBBBBBBBBBBBBi BBBB.   :bd:YEvK1B. BBBQ BQi BBBB');
		gotoxy(25,59);
		writeln('BBBBBBBBBBBBBQB  BBr:   :gBQBBB7:B  gBBBr BB MBQB');
		gotoxy(25,60);
		writeln('QBBBQBZ5QBBBQBBQ YB rji. .rriY7.:7b :BBBBY.B sQBB');
		gotoxy(25,61);
		writeln('BBBv5ddvQbB: iQgi 27.:u7vrJv:..  rB  BM2B::Y5sBBB');
		gotoxy(25,62);
		writeln('QBQKI2PPBJ   BQBg: B..::. .iUZ2g7iri rBDg  :.Y5BB');
		gotoxy(25,63);
		writeln('BBBQBQBBr    BBBBB iB ii7.    irrYLvB5LBB:QB.  QB');
		gotoxy(25,64);
		writeln('BBBBBBBB .77  vBBBB Bi.7:r    .7::...Y:.BBBBE .BB');
		gotoxy(25,65);
		writeln('BBBQBBBB .rqv.. .IBi : .iir     ::7:: .iBBBBBBBBB');
		gotoxy(25,66);
		writeln('QBBBBBQB. i.2L77    7 i.:::.     r:ii7 .JBBBQBBBB');
		gotoxy(25,67);
		writeln('BBBBBBBBB. ..7uu2   7.r:rii      .r7i:. bBBBBBBBB');
		gotoxy(25,68);
		writeln('QBBBBBBBBBj  i.vI.   7r7i1:       ir:i. BBBBBBBBQ');
		gotoxy(25,69);
		writeln('BBBBBBBBBBBB. : d.    L7.v2       :ir:. BQBBBBBBB');
		gotoxy(25,70);
		writeln('BBBBBBQBBBBBB:  Y     : .7:1   .  .i::  BBBBBBBBB');
		gotoxy(25,71);
		writeln('BBBBBBBQBBBBBQ  .       .:BQ:     .:.i :BBBBBBBQB');
		gotoxy(25,72);
		writeln('QBQBBBBBBBBBB     .i7XQBr BB.     .:.  BBBBBBBQBQ');
		gotoxy(25,73);
		writeln('BQBBBBBBBQBB.   .QBBBBBBB.:R      :.  DBBBBBBBBBB');
		gotoxy(25,74);
		writeln('QBBBBBBBBBBB:   :BBBBBBBBB..     i.  DBBBBBBBBBBB');
		gotoxy(25,75);
		writeln('BBBBBBBQBBBBB.   :QQBRgri:.     .  .BBBQBBBBBBBBB');
		gotoxy(25,76);
		writeln('BBBBBBBBBBQBQB1                  :QBBBBBBBQBBBBBB');
		gotoxy(25,77);
		writeln('BBBBBBBBBBBBBBBBBBLi:.....::rsQBBBBBBQBBBQBBBBu7B');
	end;
	procedure hades;
		begin
		gotoxy(25,3);
		writeln('BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB');
		gotoxy(25,4);
		writeln('BBBBBBBBB9BBBBBhBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB');
		gotoxy(25,5);
		writeln('BBBBBBBBB MBBBi:BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB');
		gotoxy(25,6);
		writeln('BBBBBBBBB 9BBB,2BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB');
		gotoxy(25,7);
		writeln('BBBBBBBBi,GBBB,2MBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB');
		gotoxy(25,8);
		writeln('BBBBBBBis5BBBB2i2MBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB');
		gotoxy(25,9);
		writeln('BBBBBBh ,rGBBBs:sMBBBiBBBBBBBBBBBBBBBBBBBBBBBBBBB');
		gotoxy(25,10);
		writeln('BBBBBBBB2,:25:r9BBM,  :irss5MBBBBBBBBBBBBBBBBBBBB');
		gotoxy(25,11);
		writeln('BBBBBBBBBB2  2BBBBs,,,shs:r2:MBBBBBBBBBBBBBBBBBBB');
		gotoxy(25,12);
		writeln('BBBBBBBBBBB ,BBBBB,sMBii  iGr,BBBBBBBBBBBBBBBBBBB');
		gotoxy(25,13);
		writeln('BBBBBBBBBBB 2BBBBB rM:2BBM  B2,BBBBBBBBBBBBBBBBBB');
		gotoxy(25,14);
		writeln('BBBBBBBBBBB sBBBBB, s sBB:  2B iBBBBBBBBBBBBBBBBB');
		gotoxy(25,15);
		writeln('BBBBBBBBBBB iBBBBB: r29r  rsBB2  2BBBBBBBBBBBBBBB');
		gotoxy(25,16);
		writeln('BBBBBBBBBBB ,MBBBirhr:,  rs 9BBBs 9BBBBBBBBBBBBBB');
		gotoxy(25,17);
		writeln('BBBBBBBBBBrssirh2,Mshissr:s 2 sBBrG99BBBBBBBBBBBB');
		gotoxy(25,18);
		writeln('BBBBBBBBBr:BBSi  ,,::,MSBS:          MBBBBBBBBBBB');
		gotoxy(25,19);
		writeln('BBBBBBBB: sBG2, ,BBBh, sMBBBB9sS9s5s  ,BBBBBBBBBB');
		gotoxy(25,20);
		writeln('BBBBBG,     :  ,:BBBBBBBBBBBBBGsBBBB2  ,BBBBBBBBB');
		gotoxy(25,21);
		writeln('BBBMi   ,,  i  :i,9BB9rBBBB92h,   ,:     9B99BGBB');
		gotoxy(25,22);
		writeln('BBs XBX ,   :  r,5,sB,sMMMBh   ,   :B2 rs GM22MBB');
		gotoxy(25,23);
		writeln('BM BBBB      s,:2,i,  Mhsi:i,, , : :BBGBh sBGM9BB');
		gotoxy(25,24);
		writeln('B:,B9Bh rBB  BB :B: , ,sX522r   ,BB  iMM2 ,BBBBBB');
		gotoxy(25,25);
		writeln('BX     sBBB  BBX,:r2BBB,::   ,: 2BBBG  rBB GBBMGB');
		gotoxy(25,26);
		writeln('BBBGBBBBBBB  BBBs2srSBB:rrBB95s  BBBr ,BB  Bs, sB');
		gotoxy(25,27);
		writeln('BBBBBBBBBBB    Bs,    ss,BBGMS,ssBBh  ,s  B,XB9BB');
		gotoxy(25,28);
		writeln('BBBBBBBBBr9rs: s:  ,:, , ,:    s,BB  ,   BB XBBBB');
		gotoxy(25,29);
		writeln('BBBBBG92, 2GBBG92s,:r, ,s,,    s:BG    :BBBB sBBB');
		gotoxy(25,30);
		writeln('BBBBB, 92 :s5rsMss  :,9BMMi  B9  ,    9BBBBB9 2BB');
		gotoxy(25,31);
		writeln('BBBBBGss  :9Bhs    BGBBisr , 5BBi    BBBBBBBB iMB');
		gotoxy(25,32);
		writeln('BBBBBBr::,i:,   Bi,:ss Gr ,,, ,BBBBMi,is9MGs ,5BB');
		gotoxy(25,33);
		writeln('BBBBBBBBMBBBBBM2B  rs sM:r,,   BBBs:        sBBBB');
		gotoxy(25,34);
		writeln('BBBBBBBBBBBBBBBBX  shs: X:r,   ,  ,, 5X   ,  BBBB');
		gotoxy(25,35);
		writeln('BBBBBBBBBBBBBBBBBB,    ir B :2,Mr9BBBBsrM,9 iBBBB');
		gotoxy(25,36);
		writeln('BBBBBBBBBBBBBBBBBBBBMiXSsBBBBBBBBBBBBBBBBBBBBBBBB');
	
	end;
	procedure athena;
		begin
		gotoxy(95,44);
		writeln('BGGMGGGMGMGGGGGGGMGGGMGMGMGMGMGGGMGMGGGMMBBBMMGGG');
		gotoxy(95,45);
		writeln('BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB,,BBBBB');
		gotoxy(95,46);
		writeln('GBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB,, BBBBB');
		gotoxy(95,47);
		writeln('GBBBBBBBBBBBBBBBBBBBB::, , :r:  ,BBBBBBB,,r iBBBB');
		gotoxy(95,48);
		writeln('GBBBBBBBBBBBBBBBBB,,   , , :i    :,,,BBr B: :BBBB');
		gotoxy(95,49);
		writeln('GBBBBBBBBBBBBBBB:  ,,,,,, ,,,  ,,    9B :B, :BBBB');
		gotoxy(95,50);
		writeln('GBBBBBBBBBBBBBB,  , ,,             ,BBB rB  ,BBBB');
		gotoxy(95,51);
		writeln('GBBBBBBBBBBBBB, ,,:,  ,:    ,:r:  rBBBB:,r,iBBBBB');
		gotoxy(95,52);
		writeln('GBBBBBBBBBBBBB:,,,  ,S2:       rrBBBBBBB, ,BBBBBB');
		gotoxy(95,53);
		writeln('MBBBBBBBBBBBBB      2r   ,:rsriiiSBBBBB,    :BBBB');
		gotoxy(95,54);
		writeln('GBBBBBBBBBBBBB,     :   ,::iii:: iBBBBB  ,r ,,,BB');
		gotoxy(95,55);
		writeln('MBBBBBBBBBBBBBB               ,Br  ,9BB, s:,B:  B');
		gotoxy(95,56);
		writeln('GBBBBBBBBBBBBBBM        ,::i,iirsr  2Br,:irBBB  B');
		gotoxy(95,57);
		writeln('GBBBBBBBBBBBBBBBs      ::,,,:,::s ,,M:  rr ,B9,BB');
		gotoxy(95,58);
		writeln('GBBBBBBBBBBBBBBBBi  sr , ,,:B, ,,BBB2 r,rB  BBBBB');
		gotoxy(95,59);
		writeln('MBBBBBBBBBBBBBBBBi :S  :   :BBB: :BB,,B BB ,BBBBB');
		gotoxy(95,60);
		writeln('GBBBBBBBBBBBBBBBB:rB: , :: rBBs ,iBBMX:,Br,BBBBBB');
		gotoxy(95,61);
		writeln('GBBBBBBBBBBG::BBBBBi  :,,B  :ii:BBBBBB::BBBBBBBBB');
		gotoxy(95,62);
		writeln('GBBBBBBBBB, ::,i:::isr:B is ,irBBBBBBs,,,9BBBBBBB');
		gotoxy(95,63);
		writeln('BBBBMBBBBBsii:ir:ir,sBs22 ,    BBBBBB, , :BBBsMBB');
		gotoxy(95,64);
		writeln('BGrB,,rBB:   ,    , irrrrsi,, ,,s,sBB  :BBiBB :Bs');
		gotoxy(95,65);
		writeln(',::r:,i:       ,,,::      iXsrs,,:ii: i ,::,r,:,i');
		gotoxy(95,66);
		writeln(':r:i:iB  ,s  : r,rhG      ,:,:si ,Bss:s  iBSM,,,B');
		gotoxy(95,67);
		writeln('::,:ir  i9: ,s r ,i:   ,:         ss, : i,,,r,::,');
		gotoxy(95,68);
		writeln('MBBBB  rBB, Ms S,     ,,,i:,,,,,r2:  i::BBhBBBBBB');
		gotoxy(95,69);
		writeln('MBBB: rBBB  Br s:     ,:,,issr:,i    iBBBBBBBBBBB');
		gotoxy(95,70);
		writeln('GBBB :B::B  BB is    , ,s,           9BBBBBBBBBBB');
		gotoxy(95,71);
		writeln('MBB  BB iB  BB  B       :,        ,r,BBBBBBBBBBBB');
		gotoxy(95,72);
		writeln('GBB :Bs 2B  BBr rs   ,   i,     ,rBr BBBBBBBBBBBB');
		gotoxy(95,73);
		writeln('MB: BB: BB  BBB, Bi      ,,  ,,BBBB,,BBBBBBBBBBBB');
		gotoxy(95,74);
		writeln('MB,,BB, sB: BBBB :Bi         , BBBB ,BBBBBBBBBBBB');
		gotoxy(95,75);
		writeln('MBBBBB: :BBsBBBBB:BBB,     5r:,2BBG BBBBBBBBBBBBB');
		gotoxy(95,76);
		writeln('GBBBBBB  BBBBBBBBBBBBBB:   ,,s,,hB, BBBBBBBBBBBBB');
		gotoxy(95,77);
		writeln('BBBBBBBBiBBBBBBBBBBBBBBBBBsii::,:ii:BBBBBBBBBBBBB');
	end;



	begin
	
	repe:=0;
	while(repe<>1000) do
		begin 
		clrscr;
			gotoxy(75,1);
			writeln(' Escolha seu deck:');
			gotoxy(45,2);
			writeln('1 - Hades');
			hades;
			gotoxy(115,2);
			writeln('2 - Zeus');
			zeus;
			gotoxy(45,42);
			writeln('3 - Poseidon');
			poseidon;
			gotoxy(115,42);
			writeln('4 - Athena');
			athena;
			gotoxy(1,40);

			readln(resposta);
			case (resposta) of
				1:begin
					for l := 1 to 4 do
						for c := 1 to 4 do 
							begin
								myDeck[l,c]:= deckHades[l,c];
								start:=1;
								repe:=1000;
							end;
				end;
				2:begin
					for l := 1 to 4 do
						for c := 1 to 4 do 
							begin
								myDeck[l,c]:= deckZeus[l,c];
								start:=1;
								repe:=1000;
							end;
				end;
				3:begin
					for l := 1 to 4 do
						for c:= 1 to 4 do
							begin
								myDeck[l,c]:= deckPoseidon[l,c];
								start:=1;
								repe:=1000;
							end;
				end;
				4:begin
					for l := 1 to 4 do
						for c:= 1 to 4 do
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
	var
	danoInimigo: integer;
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
	for l:=1 to 4 do
		begin
		val(deckInimigo[l,2],danoInimigo,erro2);
		danoInimigo:=danoInimigo+1;
		str(danoInimigo,deckInimigo[l,2]);
		//deckInimigo[l,2]:=
		end;
end;
//falta dados em dano
Procedure DanoPvE;
	var
	
	danoPlayer1,danoInimigo,waves,queimar,qtdMy,qtdIni:integer;
	Begin
		
		
		//converter quantidade de cartas para inteiro e depois para string
		val(myDeck[resposta,c+3],qtdMy,erro1);
		qtdMy:=qtdMy-1;	
		str(qtdMy,myDeck[resposta,c+3]);		
		{val(deckInimigo[IA,c+3],qtdIni,erro2);
		qtdIni:=qtdIni-1;
		str(qtdIni,deckInimigo[IA,c+3]);}
		//converter dano para inteiro
		val(myDeck[resposta,c+1],danoPlayer1,erro1);
		val(deckInimigo[IA,c+1],danoInimigo,erro2);
		
		if(danoPlayer1>danoInimigo) then
			begin
				lifeEnemy:=lifeEnemy-danoPlayer1;	
				if (myDeck[resposta,c+2]='Queimadura') or (myDeck[resposta,c+2]='Eletrocuta') then
					//dano extra
					begin
						queimar:=3;
						lifeEnemy:= lifeEnemy-queimar;
						writeln('Efeito de queimadura ativo.');
					 	delay(1500);
					end;
				
				if(myDeck[resposta,c+2]='Afogado') then
					begin
					lifeEnemy:= lifeEnemy-5;
					writeln('Efeito de Afogamento ativo');
					delay(1500);
					end;
				if(myDeck[resposta,c+2]='Roubo de vida') then
					begin
						
						lifePlayer1:= lifePlayer1+danoPlayer1;
						writeln('Roubo de vida feito com sucesso.');
						delay(1500)
					end;
				
				if (myDeck[resposta,c+2]='Waves') then
					begin
						waves:=random(5)+1;
						lifeEnemy:= lifeEnemy-(danoPlayer1*waves);
						writeln('Efeito de waves ativo');
						writeln('Dano de waves multiplicado em ',waves);
						delay(2000);
					end;
				if (myDeck[resposta,c+2]='Refletir todos os ataques') then
				begin
					danoPlayer1:=danoPlayer1+danoInimigo;
					lifeEnemy:=lifeEnemy-danoPlayer1;
					writeln('Dano refletido');
					delay(1500);
				end;
			
			end;
		if(danoInimigo>danoPlayer1) then
			begin
				lifePlayer1:=lifePlayer1-danoInimigo;
				
				if (deckInimigo[IA,c+2]='Queimadura') or (deckInimigo[IA,c+2]='Eletrocuta') then
					begin	
						queimar:=3;
						lifePlayer1:=lifePlayer1-queimar;
						writeln('Efeito de queimadura ativo.');
						delay(1500);
					end;
				
				if(deckInimigo[IA,c+2]='Afogado') then
					begin
						lifePlayer1:= lifePlayer1-5;
						writeln('Efeito de Afogamento ativo');
						delay(1500);
					end;
				if(deckInimigo[IA,c+2]='Roubo de vida') then
					begin
						
						lifeEnemy:= lifeEnemy+danoInimigo;
						writeln('Roubo de vida feito com sucesso.');
						delay(1500)
					end;
				
				if (deckInimigo[IA,c+2]='Waves') then
					begin
						waves:=random(5)+1;
						lifePlayer1:= lifePlayer1-(danoPlayer1*waves);
						writeln('Efeito de waves ativo');
						writeln('Dano de waves multiplicado em ',waves);
						delay(2000);
					end;
				if (deckInimigo[IA,c+2]='Refletir todos os ataques') then
					begin
						danoInimigo:=danoPlayer1;
						lifePlayer1:=lifePlayer1-danoInimigo;
						writeln('Dano refletido');
					  delay(1500);
					end;
			
			
			end; 

		
		if(danoPlayer1=danoInimigo) or (danoInimigo=danoPlayer1) then
			begin
				writeln('Empate, sem dano pra cada lado');
				delay(1500);
			end;
			
End;
procedure DanoPvP;
	var
	danoPlayer1,danoPlayer2,waves,queimar,qtdP1,qtdP2:integer;
	Begin

	val(deckPlayer1[respostaPlayer1,c+3],qtdP1,erro1);
	qtdP1:=qtdP1-1;	
	str(qtdP1,deckPlayer1[respostaPlayer1,c+3]);		
	val(deckPlayer2[respostaPlayer2,c+3],qtdP2,erro2);
	qtdP2:=qtdP2-1;
	str(qtdP2,deckPlayer2[respostaPlayer2,c+3]);	
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
					delay(1500);
				end;
				

			
			if(deckPlayer1[respostaPlayer1,c+2]='Roubo de vida') then
				begin
					
					lifePlayer1:= lifePlayer1+danoPlayer1;
					writeln(deckPlayer1[respostaPlayer1,c+2],' feito com sucesso.');
					delay(1500);
				end;
			
			if (deckPlayer1[respostaPlayer1,c+2]='Waves') then
				begin
					waves:=random(5)+1;
					lifePlayer2:= lifePlayer2-(danoPlayer1*waves);
					writeln('Efeito de waves ativo');
					writeln('Dano de waves multiplicado em ',waves);
					delay(2000);
				end;
			if (deckPlayer1[respostaPlayer1,c+2]='Refletir todos os ataques') then
				begin
					danoPlayer1:=danoPlayer1+danoPlayer2;
					lifePlayer2:=lifePlayer2-danoPlayer1;
					writeln('Dano refletido');
					delay(1500);
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
				delay(2000);
				end;
			
			if(deckPlayer2[respostaPlayer2,c+2]='Afogado') then
				begin
					lifePlayer1:= lifePlayer1-5;
					writeln('Efeito de Afogamento ativo');
					delay(1500);
				end;
				
			if(deckPlayer2[respostaPlayer2,c+2]='Roubo de vida') then
				begin
				
					lifePlayer2:= lifePlayer2+danoPlayer2;
					writeln(deckPlayer2[respostaPlayer2,c+2],' feito com sucesso.');
					delay(1500);	
				end;
			
			if (deckPlayer2[respostaPlayer2,c+2]='Waves') then
				begin
					waves:=random(5)+1;
					lifePlayer1:= lifePlayer1-(danoPlayer2*waves);
					writeln('Efeito de waves ativo');
					writeln('Dano de waves multiplicado em ',waves);
					delay(2000);
				end;
			if (deckPlayer2[respostaPlayer1,c+2]='Refletir todos os ataques') then
				begin
					danoPlayer2:=danoPlayer1;
					lifePlayer1:=lifePlayer1 - danoPlayer2;
					writeln('Dano refletido');
					delay(1500);
				end;													
	end; 
		if(danoPlayer1=danoPlayer2) or (danoPlayer2=danoPlayer1) then
			begin
				
				writeln('Empate, sem dano pra cada lado');
				delay(1500);
			end;

end;
procedure inimigoSprite;
var con,per : integer;
	begin
	con:=15;
	per:=65;
	gotoxy(con, 4 );
	writeln('BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB');
	gotoxy(con, 5);
	writeln('BBBBBBBBBBBBBBBBBBBBBGr,,:rsBBBBBBBBBi,  rBBBBBBB');
	gotoxy(con, 6);
	writeln('BBBBBM2ri:2BBBBBBBBs   ,,,   rBBBBBB,  s  rBBBBBB');
	gotoxy(con, 7);
	writeln('BBBB:      BBBBBBBB  ii:,,:: ,BBBBBBs2BB,  iBBBBB');
	gotoxy(con, 8 );
	writeln('BBBM  hBh9BBBBBBBBBs s:::ri, rBBBBBBBBBB   :,BBBB');
	gotoxy(con, 9 );
	writeln('BBBi  BBBBBBBBBBBBBB ,i:s:,  ,BBBBBBBBBG ,,,,rBBB');
	gotoxy(con, 10 );
	writeln('BBs,  GBBBBBBBBBBBBB9::, ,,  BBBBBBr   ,,,,,  BBB');
	gotoxy(con, 11);
	writeln('BB: , iBBS2hBBsi:rSGG  ,, sB22r::i,   , ,,  ,GBBB');
	gotoxy(con, 12 );
	writeln('BB  ,,,s,,           ,,,,,,s,      ,   ,   sBBBBB');
	gotoxy(con, 13 );
	writeln('BM  ,,  X ,,  ,,,,,i,,,,,,, ,,,   ,i:,,  :MBBBBBB');
	gotoxy(con, 14 );
	writeln('BM     ,r,,,,  , rss ,,s,,,,,,:i:i,  :r2BBBBBBBBB');
	gotoxy(con, 15 );
	writeln('BBBB2,        :  rrs  rs ,,,,,, iBBBBBBBBBBBBBBBB');
	gotoxy(con, 16 );
	writeln('BBBBBBBG2ss29BBr , h,,,s,,,,,, ,BBBBBBBBBBBBBBBBB');
	gotoxy(con, 17 );
	writeln('BBBBBBBBBBBBBBBB   is ,,,,,,,,:,BBBBBBBBBBBBBBBBB');
	gotoxy(con, 18 );
	writeln('BBBBBBBBBBBBBBBBBr  s: ,,,,,,,: 9BBBBBBBBBBBBBBBB');
	gotoxy(con, 19);
	writeln('BBBBBBBMBBBBBBBBBBG  s,,,,,,,,  MBBBBBBBBBBMMBBBB');
	gotoxy(con, 20 );
	writeln('BBBMGBG2GMBMBBMGXBBS  :,,,,:,,  hBBM9BBBGGB9GBGBB');
	gotoxy(con, 21 );
	writeln('BBB2GMGhB2G2BG9G9B9BBr, ,,,,,,, 5BB5BBB2MBB925BBB');
	gotoxy(con, 22 );
	writeln('BBMG9h99BhGhM99B5BGGBB, :,,,,, ,BBBBBMMMMMBG9G9BB');
	gotoxy(con, 23 );
	writeln('BBBMBBBBBBBBMMBBBMBBBr ,,,,,,, rBBBBBBBBBBBBBBBBB');
	gotoxy(con, 24 );
	writeln('BBBBBBBBBBBBBBBBBBBB2 ,,,,,,,,,        ,i2GBBBBBB');
	gotoxy(con, 25 );
	writeln('BBBBBBBBBBBBBBBBBBBB, ,,,,,,,,,,,,, ,:,     i9BBB');
	gotoxy(con, 26 );
	writeln('BBBBBBBBBBBBBBBBBBBBs ,,,,,,,,,i,,,,,:iri:,    rB');
	gotoxy(con, 27 );
	writeln('BBBBBBBBBBBBBBBBBBBBB, ,,,,,,,,:r ,,,,,,:iri,   s');
	gotoxy(con, 28 );
	writeln('BBBBBBBBBBBBBBBBBBBBBB: ,,,,,,,,s  ,,,,,,  ,,,  s');
	gotoxy(con, 29 );
	writeln('BBBBBBBBBBBBBBBBBBBBBBs,,,,,,,, sssi:::, ,:   :GB');
	gotoxy(con, 30 );
	writeln('BBBBBBBBBBBBBBBBBBBBBB r ,,,,,, XBB,   ,,:  :GBBB');
	gotoxy(con, 31 );
	writeln('BBBBBBBBBBBBBBBBBBBBBB r: ,,,,, BB  ,   ,iXBBBBBB');
	gotoxy(con, 32 );
	writeln('BBBBBBBBBBBBBBBBBBBBBB2 2 ,,,,,,i    :sGBBBBBBBBB');
	gotoxy(con, 33 );
	writeln('BBBBBBBBBBBBBBBBBGsrs5Birr,,,,,,  :SBBBBBBBBBBBBB');
	gotoxy(con, 34 );
	writeln('BBBBBB: rMBBBMGs       r,:,,,,,, BBBBBBBBBBBBBBBB');
	gotoxy(con, 35 );
	writeln('BBGs,            :iirri ,,,,,,   GBBBBBBBBBBBBBBB');
	gotoxy(con, 36 );
	writeln('B:     ,,,                    i:   5BBBBBBBBBBBBB');
	gotoxy(con, 37 );
	writeln('9sBBBBBBBBBBBBBBBGMGMMBBBMG55BBBB2rrrXBBBBBBBBBBB'); 
	
	
	//persefone
 	gotoxy(per, 4 );
writeln(',s,r:i:i:i:i:i,i:r,rissr:sssisrsir:r:r:r:i,r:i:ii');
	gotoxy(per, 5 );
writeln('issrsrsrsrsisrsisrss2 ,   :is,iirrSs2rsrsrsrsrsiS');
	gotoxy(per, 6 );                
writeln(',s,r,r:r,r,r:i:i:s:  , ,           ,:sirisrs:r,i:');
 	gotoxy(per, 7 );
writeln('irr:r:r:r:r:r:r:r ,               ,         iii,s');
	gotoxy(per, 8 );
writeln(',sii:r:r:r:r:r:s,      ss2s:   ,       : ,   s:ri ');
  	gotoxy(per, 9 );
writeln('rrsssisrsii:i:ii: ,   r rGM9s:, ,   , :,    , s:s');
  	gotoxy(per, 10 );
writeln(':2        ,:r:r:ii2   :s9:BMG r,,s: ,         ,rri');
 	gotoxy(per, 11);
writeln('rr  ?..?   s:r:r:rr   r, h9Br, X22            ,r:s');
   	gotoxy(per, 12 );
writeln(',sis,  :,r:r:r:r:s  GM:s5M2s  shM      ,   ,ss,rr');
	gotoxy(per, 13 );
writeln('irr:r :ss:r:r:r:r:s,BM :rhMhBG9hBM2         ,ir,s');
	gotoxy(per, 14);
writeln(':2 ,,  rir,r:r,r:r:r B:  i5BhM9GG      ,    :s,ri');
 	gotoxy(per, 15 );
writeln('s: sr,, iir:r:r:rirs  MMBMB29GMs,           iir:s');
	gotoxy(per, 16);
writeln('ir Gs,:2 r:r:r:ri      :    9MM,         ,  ss:rr');
	gotoxy(per, 17);
writeln('rr:, ,MM,,r:r:r:s ,   ,   ,:BMB5              r:s');
 	gotoxy(per, 18);
writeln(',srr iM9 r:i:r:i,r:,     BGBhB  :             :si');
 	gotoxy(per, 19);
writeln('iis   BGh rir:: : , 2rs,,X9ssr,  : , ,,   ,   r:2');
 	gotoxy(per, 20);
writeln(',s  r iBMS r:r:,iMMMG2rrsSr: ::BMB s  ,s       ,r');
 	gotoxy(per, 21);
writeln('iiiir,,MMMh rir,,rBGMG9sBsh2M9BM2,G ,  2i   ,   ,');
 	gotoxy(per, 22);
writeln(':s:i:i BXMM9 , rM9:B9,isi9MB9BM9 XGMi ,i , , , ,  ');
 	gotoxy(per, 23);
writeln('rir:r: 9M5MMM B BM 2B9: BGB2BMM 9GMGBMr ,     , S ');
 	gotoxy(per, 24);
writeln(',s:r:s GMMSBssM:BB5,GBM2,B2BMsrM9MMBs         :sr');
 	gotoxy(per, 25);
writeln('rri,r:, B9G9GGB:hBBi2GM9G,rXs2B9MMM ,    ,r:srs:s');
 	gotoxy(per, 26);
writeln(',s:i:r:, s22ss,: rsi 9GM9M9,sB9BGr , , , sir:r:ir');
  	gotoxy(per, 27 );
writeln(':rr:r:ri: i ,,i:r sr,,59G9Bs9GGs, ris,ris:r:r:i,s');
  	gotoxy(per, 28);
writeln(':s,r,r:r:r:r:r:s:,:BGBsssG29ss,GMs s:r:r:r:r,r,ii ');
  	gotoxy(per, 29);
writeln('iii:rii:r,r:r:r::ss  GBM2s2r9MBMBMB sis:i,r:r:r:s ');
  	gotoxy(per, 30);
writeln(',s:i:s,r:i:r:i:r ,ih , , ,rBMBirrs   , s:r:r:r,ii');
 	gotoxy(per, 31);
writeln('iir,rir,ririr:i BG59M:Xr,,si:     GM2 , rrs:r:r:s');
  	gotoxy(per, 32 );
writeln('i2ir:s:srrrsir,SGBMBMBMBGBMBMBMBM sBBB   ,isir:rs');
  	gotoxy(per, 33);
writeln('sss:sisrrisrsr,9B2BMBM2GBM2MBMBMB :M2MB   iirisis');
  	gotoxy(per, 34);
writeln(':2:sisisisrsis BBXMBBBMsMBMsMBMBB  BG2BB rrsisirs ');
  	gotoxy(per, 35);
writeln('sssrsrsrsisrsi MB2MBBMBMSMBMsGBMB,,MBM2BM 2rsrsr5');
    	gotoxy(per, 36 );
writeln('iXrsrsrsrsrsrs,BMB2BMBMBGMMBM2GBMs BMBMhMi:srsiss');
  	gotoxy(per, 37 );
writeln('r22sss5s2sSrXrsGBM9BBBBMBMBMBMXMB9 MBGBGBr:sSs2sX');	
end;
procedure historia;
begin
	gotoxy(73,1);
	writeln('Os pertos da Morte');
	delay(1500);
	gotoxy(26,3);
	writeln('Durante a Titanomaquia, a guerra entre os tit„s, liderados por Cronos, contra os deuses do Olimpo, liderados por Zeus.');
	delay(2000);
	gotoxy(45,4);
	writeln('O resultado desta batalha Èpica viria a decidir quem comandaria o Universo.');
	delay(1500);
	gotoxy(42,5);
	writeln('Ent„o, Zeus e seus aliados construiram uma fortaleza no topo do Monte Olimpo para ');
	delay(1500);
	gotoxy(44,6);
	writeln('lutar contra os Tit„s, que por sua vez batalharam de cima do Monte Othis.');
	delay(1500);
	gotoxy(25,7);
	writeln('Com a vitoria dos deuses, o pal·cio, que leva o nome do monte Olimpo, tornou-se a morada oficial das entidades divinas.');
	delay(2000);
	gotoxy(43,8);
	writeln('Hoje, habitada por Zeus e sua esposa Hera, suas irm„s: Hestia, deusa do lar');
	delay(1500);
	gotoxy(53,9);
	writeln('e DemÈter, deusa da agricultura e da proxima geraÁ„o:');
	delay(1500);
	gotoxy(31,10);
	writeln('Atena, deusa da sabedoria; Ares, deus da guerra;Apolo, deus do sol;¡rtemis,deusa da lua e da ca√ßa; ');
	delay(2000);
	gotoxy(27,11);
	writeln('Afrodite, deusa de amor;Hermes, mensageiro dos deuses;Hefesto, o construtor dos deuses; e DionÌsio, deus do vinho.');
	delay(3000);
	writeln('');
	clrscr;
	
	writeln('Nome do jogador');
	read(player1);
	clrscr;
	delay(1000);
	gotoxy(51,1);
	writeln('Pelo menos est· È  a histÛria que nÛs  mortais sabemos.'); 
	delay(1500);
	gotoxy(56,2);
	writeln('Anos apÛs ser banido e estar desolado, ',player1);
	delay(1500);
	gotoxy(20,3);
	writeln(' volta aos montes caminhando, "Pai!" diz gritando para Zeus, "Eu voltei para tomar o meu lugar! Voltei para ter o que me pertence!');
	delay(1500);
	gotoxy(19,4);
	writeln('N„o conseguiu crer que exista um ser mais poderoso que o deus dos raios e trovıes, pois aqui estou eu novamente. Tentaste me banir, ');
	delay(1500);
	gotoxy(29,5);
	writeln('tentou me assassinar desde o dia em que sai do ventre da minha m„e, mas nada disso o senhor foi capaz.');
	delay(1500);
	gotoxy(51,6);
	writeln('Pois ent„o..." O herÛi sobe as escadarias lentamente, e ao colocar o ');
	delay(1500);
	gotoxy(28,7);
	writeln('pÈ no ˙ltimo degrau levanta o olhar para Zeus, que estava assentado em seu trono com seus olhos brilhando em branco.');
	delay(1500);
	gotoxy(50,8);
	writeln('"CrianÁa tola! N„o vÍ que veio caminhando para sua prÛpria morte?');
	delay(1500);
	gotoxy(34,9);
	writeln('Acha mesmo que È capaz de desafiar a ira de um deus!" grita Zeus, saltando do seu trono em tremenda f˙ria');
	delay(1500);
	gotoxy(57,10);
	writeln('enquanto raios cortam e atravessam os cÈus.');

readkey;



end;

Begin
	
	// Deck de cartas, os decks s√É¬£o inicializados nessa aba
		// coluna 1 nome coluna 2 dano coluna 3 efeitos coluna 4 quantidade
		//deck de hades
		deckHades[1,1]:='Fogo Infernal';
		deckHades[1,2]:='8';
		deckHades[1,3]:='Queimadura';
		deckHades[1,4]:='3';
		deckHades[2,1]:='Destro√É¬ßo da alma';
		deckHades[2,2]:='5';
		deckHades[2,4]:='4';
		deckHades[3,1]:='Ondas do Aqueronte';
		deckHades[3,2]:='8';
		deckHades[3,3]:='Waves';
		deckHades[3,4]:='3';
		deckHades[4,1]:='Rouba da alma';
		deckHades[4,2]:='10';
		deckHades[4,3]:='Roubo de vida';
		deckHades[4,4]:='2';
		//deck de zeus
		deckZeus[1,1]:='Relampago';
		deckZeus[1,2]:='8';
		deckZeus[1,3]:='Queimadura';
		deckZeus[1,4]:='3';
		deckZeus[2,1]:='Sedu√ß√£o';
		deckZeus[2,2]:='4';
		deckZeus[2,4]:='5';
		deckzeus[3,1]:='Soco Rel√¢mpado';
		deckZeus[3,2]:='11';
		deckZeus[3,4]:='2';
		deckZeus[4,1]:='Icor';
		deckZeus[4,2]:='10';
		deckZeus[4,3]:='Roubo de vida';
		deckZeus[4,4]:='2';
		//deck de poseidon
		deckPoseidon[1,1]:='Tsunami';
		deckPoseidon[1,2]:='11';
		deckPoseidon[1,3]:='Afogado';
		deckPoseidon[1,4]:='2';
		deckPoseidon[2,1]:='Maremoto';
		deckPoseidon[2,2]:='8';
		deckPoseidon[2,4]:='4';
		deckPoseidon[3,1]:='√Ågua pura';
		deckPoseidon[3,2]:='10';
		deckPoseidon[3,3]:='Roubo de Vida';
		deckPoseidon[3,4]:='2';
		deckPoseidon[4,1]:='Investida de Hipocampos';
		deckPoseidon[4,2]:='7';
		deckPoseidon[4,3]:='Waves';
		deckPoseidon[4,4]:='4';
		//deck de Athena
		deckAthena[1,1]:='Escudo Aegis';
		deckAthena[1,2]:='15';
		deckAthena[1,3]:='Refletir todos os ataques';
		deckAthena[1,4]:='5';
		deckAthena[2,1]:='Falange';
		deckAthena[2,2]:='12';
		deckAthena[2,3]:='Waves';
		deckAthena[2,4]:='4';
		deckAthena[3,1]:='Maldi√ß√£o de Athena';
		deckAthena[3,2]:='8';
		deckAthena[3,4]:='2';
		deckAthena[4,1]:='Icor';
		deckAthena[4,2]:='10';
		deckAthena[4,3]:='Roubo de vida';
		deckAthena[4,4]:='2';
		//deck de 
		
		
		
		
		inimigo[1]:='Hercules';
		inimigo[2]:='Persefone';
		inimigo[3]:='Perseu';
		//vida 
		lifeEnemy:=50;
		lifePlayer1:=50;
		lifePlayer2:=50;
		randomize;
	//organiza√É¬ß√É¬£o
		
	//inicio do jogo
	while (repe<>1000 ) do
	begin
		menu:
		repe:=0;
		clrscr;
		gotoxy(75,1);
		writeln('Os Contos da Morte');
		gotoxy(68,4);
		writeln('1 - Inicia aventura(Historia)') ;
		
		gotoxy(25,6);
		writeln('3 - PVP ou PVE' ) ;
		gotoxy(125,6);
		writeln('4 - Ajuda/Tutorial');
		gotoxy(75,9);
		writeln('5 - Sair do jogo');
		readln(resposta ) ;
		clrscr;
		//A parti desse case, ira selecionar o modo de jogo 
		case (resposta) of
			//sele√ß√£o do deck para a historia
			1:begin
				{write('Nome do jogador: ');
				readln(player1);
				while (repe<>1000) do
				begin
					deck;
					clrscr;
					start:=1;
				end;}	
				start:=1;
			end;
			2:{goto historia};
			3:start:=3;
			
			4:begin
				writeln('1 - Como jogar? ');
				readln(resposta);
					clrscr;
					if (resposta=1) then
       			begin
					writeln('Selecione seu DECK, ao iniciar a batalha suas cartas ser„o mostradas.');
					writeln('Nome da carta/Dano/Efeito/Quantidade');
					writeln('Soco relampago/14/Nenhum/2');
					writeln('Efeitos: Queimadura/Eletrocutar/Waves/Roubo de vida/Refletir');
					writeln('Queimadura e Eletrocutar gera mais 5 de dano ao alvo');
					writeln('Waves gera dano bonus por ondas aleatorias');
					writeln('Roubo de vida  recupera vida do usuario');
					writeln('Reflitir devolve o dano inimigo da rodada');							 						 
					writeln('Se a carta selecionada tiver dano menor que a carta inimiga, o inimigo que causara dano');
					writeln('Utilizar a carta diminui a quantidade, n„o importando se o PLAYER ganhou o round');
					writeln('Objetivo do jogo È eliminar o inimigo utilizando as cartas disponiveis');							 
					writeln('Pressione qualquer tecla para retorna ao menu');
					readkey;
					goto menu;
				end
     			else
     				begin
       				writeln('Comando invalido');
       				delay(1500);
						end;
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
					delay(2000);
					
				end;
		end;
		
			
		//historia
		if(start=1) then
			begin
			
			//ira luta com os inimigos em ordem, e tera um boss final
			historia;
			clrscr;
			
			//level 1
			
				
				repeat
					lifeEnemy:=50;
					lifePlayer1:=50;
					resposta:=1;
					repe:=0;
				
					writeln('Seu  inimigo È ',inimigo[resposta]);
					
					
					CombatePvE;
					writeln(nomeInimigo 	,' est· diante ',player1,' para o duelo');
					delay(3000);
					readkey;
					deck;
					repe:=0;
					
					repeat
						while(repe<>1000) do
						begin
							repeat
								repe:=0;
								
								clrscr;
								writeln('Escolha qual carta usara:');
								for l := 1 to 4 do													
									for c:= 1 to 1 do 
										begin
											writeln(l,' - ',myDeck[l,c],' Dano: ',myDeck[l,c+1],' Efeito: ',myDeck[l,c+2],' Quantidade: ',myDeck[l,c+3]);	
											writeln;
										end;
								readln(resposta);
								if(resposta>4) or (resposta=0)then
									begin
										writeln('Comando invalido');
										delay(2000);
									
										teste:=0;	
									end
								else
									teste:=1;
							until  (teste=1);	
								if(myDeck[resposta,c+3]='0')then
									begin
										for c:= 1 to 4 do 
											myDeck[resposta,c]:=' ';
											
										writeln('Carta n„o esta disponivel');
										delay(1500);
										c:=1;
										myDeck[resposta,c+3]:='0';
										repe:=0;
										
									end
							
								else
									begin
										repe:=1000;
										
									end;											
								
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
											writeln(player1,' est· morto(a)');
											writeln('1 - Retorna ao menu');
											writeln('2 - Tenta novamente');
											readln(resposta);
											if (resposta=1) then
											goto menu;
											if (resposta=2) then
													begin
														teste1:=0;
														teste:=0;
													end;
												

										end;
									if(lifeEnemy<=0) then
										begin
											writeln(nomeInimigo,' est· morto(a)');
											writeln('AvanÁando para proximo nivel');
											delay(3000);
											teste1:=1;
										end;						
										clrscr;
									
					until (lifeEnemy<=0) or (teste=0);
				until (teste1=1);
			//level 2
							if(lifeEnemy<=0)then
							begin
							repeat
								lifeEnemy:=50;
								lifePlayer1:=50;
								resposta:=2;
								repe:=0;
							
								writeln('Seu  inimigo È',inimigo[resposta]);
								
								
								CombatePvE;
								writeln(nomeInimigo 	,' est· diante ',player1,' para o duelo');
								delay(3000);
								readkey;
								deck;
								repe:=0;
								
								repeat
									while(repe<>1000) do
									begin
										repeat
											repe:=0;
											
											clrscr;
											writeln('Escolha qual carta usara:');
											for l := 1 to 4 do													
												for c:= 1 to 1 do 
													begin
														writeln(l,' - ',myDeck[l,c],' Dano: ',myDeck[l,c+1],' Efeito: ',myDeck[l,c+2],' Quantidade: ',myDeck[l,c+3]);	
														writeln;
													end;
											readln(resposta);
											if(resposta>4) or (resposta=0)then
												begin
													writeln('Comando invalido');
													delay(2000);
												
													teste:=0;	
												end
											else
												teste:=1;
										until  (teste=1);	
											if(myDeck[resposta,c+3]='0')then
												begin
													for c:= 1 to 4 do 
														myDeck[resposta,c]:=' ';
														
													writeln('Carta n„o esta disponivel');
													delay(1500);
													c:=1;
													myDeck[resposta,c+3]:='0';
													repe:=0;
													
												end
										
											else
												begin
													repe:=1000;
													
												end;											
											
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
														writeln(player1,' est· morto(a)');
														writeln('1 - Retorna ao menu');
														writeln('2 - Tenta novamente');
														readln(resposta);
														if (resposta=1) then
														goto menu;
														if (resposta=2) then
															begin
															teste1:=0;
															teste:=0;
															end;

													end;
												if(lifeEnemy<=0) then
													begin
														writeln(nomeInimigo,' est· morto(a)');
														writeln('AvanÁando para proximo nivel');
														delay(1500);
														teste1:=1;
													end;						
													clrscr;
												
								until (lifeEnemy<=0) or (teste=0);
							until (teste1=1);
			//level 3
								if(lifeEnemy<=0) then
								begin
									repeat
										lifeEnemy:=50;
										lifePlayer1:=50;
										resposta:=3;
										repe:=0;
									
										writeln('Seu  inimigo È ',inimigo[resposta]);
										
										
										CombatePvE;
										writeln(nomeInimigo 	,' est· diante ',player1,' para o duelo');
										delay(3000);
										readkey;
										deck;
										repe:=0;
										
										repeat
											while(repe<>1000) do
											begin
												repeat
													repe:=0;
													
													clrscr;
													writeln('Escolha qual carta usara:');
													for l := 1 to 4 do													
														for c:= 1 to 1 do 
															begin
																writeln(l,' - ',myDeck[l,c],' Dano: ',myDeck[l,c+1],' Efeito: ',myDeck[l,c+2],' Quantidade: ',myDeck[l,c+3]);	
																writeln;
															end;
													readln(resposta);
													if(resposta>4) or (resposta=0)then
														begin
															writeln('Comando invalido');
															delay(2000);
														
															teste:=0;	
														end
													else
														teste:=1;
												until  (teste=1);	
													if(myDeck[resposta,c+3]='0')then
														begin
															for c:= 1 to 4 do 
																myDeck[resposta,c]:=' ';
																
															writeln('Carta n„o esta disponivel');
															delay(1500);
															c:=1;
															myDeck[resposta,c+3]:='0';
															repe:=0;
															
														end
												
													else
														begin
															repe:=1000;
															
														end;											
													
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
																writeln(player1,' est· morto(a)');
																writeln('1 - Retorna ao menu');
																writeln('2 - Tenta novamente');
																readln(resposta);
																if (resposta=1) then
																goto menu;
																if (resposta=2) then
																	begin
																	teste1:=0;
																	teste:=0;
																	end;
																	

															end;
														if(lifeEnemy<=0) then
															begin
																writeln(nomeInimigo,' est· morto(a)');
																writeln('AvanÁando para proximo nivel');
																delay(1500);
																teste1:=1;
															end;						
															clrscr;
														
										until (lifeEnemy<=0) or (teste=0);
									until (teste1=1);
									writeln('Parabens por concluir esse jogo feito na base do odio');
									delay(2000);
								
								end;
							end;	
						writeln('Fim do jogo.');
						writeln('1 - Retorna ao menu.');
						writeln('2 - Sair do jogo.');
						readln(resposta);
						if(resposta = 1) then
							goto menu;
						if(resposta=2) then 
							repe:=1000;		
					
		end;
		//PVP e PVE
		if(start=3) then
			begin
				repe:=0;
				while (repe<>1000) do 
					begin	
						repeat
							
						
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
									repeat
										
										clrscr;
										write('Nome do jogador: ');
										readln(player1);
										clrscr;
										deck;
										writeln('Selecione o inimigo:');
										clrscr;
										for l := 1 to 3 do 
											begin
												x:=x+30;
												y:=3;
												
												gotoxy(x,y);
												writeln(l,' - ',inimigo[l]);
											  x:=x+25;
											end;
											inimigoSprite;
										readln(resposta);
										clrscr;
										case (resposta) of
											1:begin
												CombatePvE;									
												writeln(nomeInimigo,' est· diante ',player1,' para o duelo');
												delay(2000);
												repe:=0;
												
												repeat										
													while(repe<>1000) do
													begin	
														repeat
															//repe:=0;
															clrscr;
															writeln('Escolha qual carta usara:');
															for l := 1 to 4 do													
																for c:= 1 to 1 do 
																	begin
																		writeln(l,' - ',myDeck[l,c],' Dano: ',myDeck[l,c+1],' Efeito: ',myDeck[l,c+2],' Quantidade: ',myDeck[l,c+3]);	
																		writeln;
																	end;
															readln(resposta);
														if(resposta>4) or (resposta=0)then
																begin
																	writeln('Comando invalido');
																	delay(2000);
																	//repe:=0;
																	teste:=0;	
																end
															else
																teste:=1;
														until  (teste=1);	
															if(myDeck[resposta,c+3]='0')then
																begin
																	for c:= 1 to 4 do 
																		myDeck[resposta,c]:=' ';
																		
																	writeln('Carta n„o esta disponivel');
																	delay(1500);
																	c:=1;
																	myDeck[resposta,c+3]:='0';
																	repe:=0;
																	
																end
														
															else
																begin
																	repe:=1000;
																	
																end;											
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
																writeln(player1,' est· morto(a)');
																repe:=1000;
																teste:=1;
															end;
														if(lifeEnemy<=0) then
															begin
																writeln(nomeInimigo,' est· morto(a)');
																repe:=1000;
																teste:=1;
															end;						
														readkey;
														clrscr;
												until (lifeEnemy<=0) or (lifePlayer1<=0);
											end;
											2:begin
												CombatePvE;									
												writeln(nomeInimigo,' est· diante ',player1,' para o duelo');
												delay(2000);
												repe:=0;
												
												repeat										
													while(repe<>1000) do
													begin	
														repeat
															//repe:=0;
															clrscr;
															writeln('Escolha qual carta usara:');
															for l := 1 to 4 do													
																for c:= 1 to 1 do 
																	begin
																		writeln(l,' - ',myDeck[l,c],' Dano: ',myDeck[l,c+1],' Efeito: ',myDeck[l,c+2],' Quantidade: ',myDeck[l,c+3]);	
																	end;
															readln(resposta);
															if(resposta>4) or (resposta=0)then
																begin
																	writeln('Comando invalido');
																	delay(2000);
																	//repe:=0;
																	teste:=0;	
																end
															else
																teste:=1;
														until  (teste=1);	
															if(myDeck[resposta,c+3]='0')then
																begin
																	for c:= 1 to 4 do 
																		myDeck[resposta,c]:=' ';
																		
																	writeln('Carta n„o esta disponivel');
																	delay(1500);
																	c:=1;
																	myDeck[resposta,c+3]:='0';
																	repe:=0;
																	
																end
														
															else
																begin
																	repe:=1000;
																	
																end;											
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
																writeln(player1,' est√° morto(a)');
																repe:=1000;
																teste:=1;
															end;
														if(lifeEnemy<=0) then
															begin
																writeln(nomeInimigo,' est√° morto(a)');
																repe:=1000;
																teste:=1;
															end;						
														readkey;
														clrscr;
												until (lifeEnemy<=0) or (lifePlayer1<=0);
											end;
											3:begin
												CombatePvE;									
												writeln(nomeInimigo,' est· diante ',player1,' para o duelo');
												delay(2000);
												repe:=0;
												
												repeat										
													while(repe<>1000) do
													begin	
														repeat
															//repe:=0;
															clrscr;
															writeln('Escolha qual carta usara:');
															for l := 1 to 4 do													
																for c:= 1 to 1 do 
																	begin
																		writeln(l,' - ',myDeck[l,c],' Dano: ',myDeck[l,c+1],' Efeito: ',myDeck[l,c+2],' Quantidade: ',myDeck[l,c+3]);	
																	end;
															readln(resposta);
															if(resposta>4) or (resposta=0)then
																begin
																	writeln('Comando invalido');
																	delay(2000);
																	//repe:=0;
																	teste:=0;	
																end
															else
																teste:=1;
														until  (teste=1);	
															if(myDeck[resposta,c+3]='0')then
																begin
																	for c:= 1 to 4 do 
																		myDeck[resposta,c]:=' ';
																		
																	writeln('Carta n„o esta disponivel');
																	delay(1500);
																	c:=1;
																	myDeck[resposta,c+3]:='0';
																	repe:=0;
																	
																end
														
															else
																begin
																	repe:=1000;
																	
																end;											
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
																writeln(player1,' est„o morto(a)');
																repe:=1000;
																teste:=1;
															end;
														if(lifeEnemy<=0) then
															begin
																writeln(nomeInimigo,' est„o morto(a)');
																repe:=1000;
																teste:=1;
															end;						
														readkey;
														clrscr;
												until (lifeEnemy<=0) or (lifePlayer1<=0);
											end
											else
											begin
												writeln('Comando Invalido');
												delay(2000);
												teste:=0;
											end;
										end;	
									until (teste=1);	
								end;	
								//PVP
								2:begin
									writeln('Nome do jogador 1');
									readln(player1);
									clrscr;
									deck;
									for l := 1 to 4 do
										for c := 1 to 4 do
										begin
											deckPlayer1[l,c]:=myDeck[l,c];
										end;
									clrscr;
									writeln('Nome do jogador 2');
									readln(player2);
									clrscr;
									deck;
									for l := 1 to 4 do
										for c := 1 to 4 do
										begin
											deckPlayer2[l,c]:=myDeck[l,c];	
										end;
									clrscr;
									
									writeln('Teste de sorte para ver que iniciara o duelo');
									writeln('Se cai cara ',player1,' ganha');
									writeln('Se cai coroa ',player2,' ganha');
									writeln('Aperte qualquer tecla para lanÔøΩar a moeda.');
									readkey;
									luck:=random(2);
									
									if (luck=0) then
										begin
											
											writeln(player1,' ira comeÁar o duelo');
											delay(2000);
											repeat
												repe:=0;
												teste:=0;
												
												//player1 
												while(repe<>1000) do
												begin	
													repeat																							
														clrscr;
														writeln(player1,' escolha sua carta:');
															for l := 1 to 4 do
																for c:= 1 to 1 do
																begin
																	writeln( l,' - ',deckPlayer1[l,c],' Dano: ',deckPlayer1[l,c+1],' Efeito: ',deckPlayer1[l,c+2],' Quantidade: ', deckPlayer1[l,c+3]);	
																end;
														readln(respostaPlayer1);
														if(respostaPlayer1>4) then
															begin
																writeln('Comando Invalido');
																delay(2000);
																teste:=0;
															end
														else
															teste:=1;
													until (teste=1);		
															if(deckPlayer1[respostaPlayer1,c+3]='0')then
																begin
																	for c:= 1 to 4 do 
																		deckPlayer1[respostaPlayer1,c]:=' ';
																	writeln('Carta n„o esta disponivel');
																	delay(1500);
																	c:=1;
																	deckPlayer1[respostaPlayer1,c+3]:='0';
																	repe:=0;
																	
																end
															
												
															else
																repe:=1000;
												end;											
												//player2
												repe:=0;
												teste:=0;
												while(repe<>1000) do
												begin
													repeat																								
														clrscr;
														writeln(player2,' escolha sua carta:');
															for l := 1 to 4 do
																for c:= 1 to 1 do
																begin
																	writeln(l,' - ',deckPlayer2[l,c],' Dano: ',deckPlayer2[l,c+1],' Efeito: ',deckPlayer2[l,c+2],' Quantidade: ', deckPlayer2[l,c+3]);	
																end;												
															readln(respostaPlayer2);
															if(respostaPlayer2>4) then
																begin
																	writeln('Comando Invalido');
																	delay(2000);
																	teste:=0;
																end
															else
																teste:=1;
													until (teste=1);	
														if(deckPlayer2[respostaPlayer2,c+3]='0')then
															begin
																for c:= 1 to 4 do 
																	deckPlayer2[respostaPlayer2,c]:=' ';
																writeln('Carta n„o esta disponivel');
																delay(1500);
																c:=1;
																deckPlayer2[respostaPlayer2,c+3]:='0';
																repe:=0;
																
															end
														
														else
															repe:=1000;
												end;
														
											
												DanoPVP;
												clrscr;
												delay(2000);
												writeln('Vida: ', player1,'/',lifePlayer1);
												
												writeln('Vida: ',player2,'/',lifePlayer2);
												delay(2000);
												if(lifePlayer1<=0) then											
													writeln(player1,' est· morto');
												if(lifePlayer2<=0) then											
													writeln(player2,' est· morto');																										
											until (lifePlayer1<=0) or (lifePlayer2<=0);																							
											
										end
									else
										begin
										
											writeln(player2,' ira comeÁar o duelo');
											delay(2000);
											repeat
												repe:=0;
												teste:=0;
												//player2 
												while(repe<>1000) do
												begin	
													repeat
														clrscr;
														writeln(player2,' escolha sua carta:');
															for l := 1 to 4 do
																for c:= 1 to 1 do
																begin
																	writeln('Cartas do seu deck: ',deckPlayer2[l,c],' Dano: ',deckPlayer2[l,c+1],' Efeito: ',deckPlayer2[l,c+2],' Quantidade: ',deckPlayer2[l,c+3]);	
																end;
														readln(respostaPlayer2);
														if(respostaPlayer2>4) then
															begin
																writeln('Comando Invalido');
																delay(2000);
																teste:=0;
															end
														else
															teste:=1;
													until (teste=1);	
													if(deckPlayer2[respostaPlayer2,c+3]='0')then
																begin
																	for c:= 1 to 4 do 
																		deckPlayer2[respostaPlayer2,c]:=' ';
																	writeln('Carta n„o esta disponivel');
																	delay(1500);
																	c:=1;
																	deckPlayer2[respostaPlayer2,c+3]:='0';
																	repe:=0;
																	
																end
															
												
													else
														repe:=1000;
												end;							
												repe:=0;
												teste:=0;
												
												//player1 
												while(repe<>1000) do
												begin	
													repeat																							
														clrscr;
														writeln(player1,' escolha sua carta:');
															for l := 1 to 4 do
																for c:= 1 to 1 do
																begin
																	writeln( l,' - ',deckPlayer1[l,c],' Dano: ',deckPlayer1[l,c+1],' Efeito: ',deckPlayer1[l,c+2],' Quantidade: ', deckPlayer1[l,c+3]);	
																end;
														readln(respostaPlayer1);
														if(respostaPlayer1>4) then
															begin
																writeln('Comando Invalido');
																delay(2000);
																teste:=0;
															end
														else
															teste:=1;
													until (teste=1);		
															if(deckPlayer1[respostaPlayer1,c+3]='0')then
																begin
																	for c:= 1 to 4 do 
																		deckPlayer1[respostaPlayer1,c]:=' ';
																	writeln('Carta n„o esta disponivel');
																	delay(1500);
																	c:=1;
																	deckPlayer1[respostaPlayer1,c+3]:='0';
																	repe:=0;
																	
																end
															
												
															else
																repe:=1000;
												end;
												
												
												DanoPVP;
												clrscr;
												delay(2000);
												writeln('Vida: ', player1,'/',lifePlayer1);
												
												writeln('Vida: ',player2,'/',lifePlayer2);
												delay(2000);
												if(lifePlayer1<=0) then											
													writeln(player1,' est· morto');
												if(lifePlayer2<=0) then											
													writeln(player2,' est· morto');		
																
											until (lifePlayer1<=0) or (lifePlayer2<=0);																								
													
										end;																				

								
								
								end;
								//retorno ao menu principal
								3:goto menu
								else
									begin
										writeln('OpÁ„o n„o  encontrado');
										delay(1500);
										repe:=0;
										teste:=0;
									end; 
							end;																																		
						until (teste=1);
					
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