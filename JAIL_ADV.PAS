{Jail Adventure v. 0.9 }
{Jin's productions     }
{& anades_de_bola i C¡a}

{Nota: Qualsevol que intente aprendre a
       programar amb aquest codi font ho
       fa baix la seua responsabilitat i
       l'autor no es fa carrec del danys
       psiquics o fisics que aquest puga
       causar}

program jail;
uses crt,dos;

type
    map=array[1..12] of string;
    tit=array[1..8] of string;

const
     v=300;
     m=100;
     do1=192;
     dore=204;
     re=216;
     res=228;
     mi=240;
     fa=258;
     sol=290;
     la=322;
     si=360;
     do2=381;
     re2=422;
     orig=300*5;

procedure historia;
var
  OrigMode: Integer;
begin
  OrigMode := LastMode;
  TextMode(CO40);
  TEXTCOLOR(0);CLRSCR;
  textcolor(12);WriteLn('1998');WRITELN('ßßßßßßß');
  writeln;textcolor(15);
  writeln('S¢n les 13:00 hores,est…s a la jail per•solament entrar ...');
  textcolor(13);writeln;
  writeln(' NO TE PREOCUPES PERO YA HAS PASADO');
  writeln('       EL 50% DE TU CUOTA');
  writeln;
  textcolor(15);
  writeln('despr‚s quan et disposes a navegar ...');
  textcolor(13);writeln;
  writeln('     ESTA APLICACION LA PUEDES USAR');
  writeln('     EN EL AULA 1');
  textcolor(15);writeln;
  write('A‡• ‚s massa, penses,primer restringirenel mIRC solament als FIL');
  write(', despr‚s  a lesp…gines guarres, baixen la quota  fins a4 megues,');
  writeln('i ARA A€ã?!, es hora de matar aUsufondo.');
  writeln('Ja no soportes m‚s aquesta dictadura.');writeln;WRITELN;
  TEXTCOLOR(14);writeln('        DEM· MATÖ COMEN€AR·S LA ...');
  ReadLn;
  TextMode(OrigMode);
end;

procedure barres(var nom:string;var quina:integer);
begin
     gotoxy(5,3);textcolor(15);writeln(nom);
     gotoxy(40,3);writeln('VS');
     gotoxy(50,3);writeln('Usufondo');
     gotoxy(5,4);
     textcolor(14);writeln('ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ');
     gotoxy(40,4);textcolor(132);writeln('KO');
     gotoxy(50,4);textcolor(14);
     case quina of
     1: writeln('ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ');
     2: writeln('ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ°°°°°°');
     3: writeln('ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ°°°°°°°°°°°');
     4: writeln('ÛÛÛÛÛÛÛÛ°°°°°°°°°°°°°°°°°');
     5: writeln('°°°°°°°°°°°°°°°°°°°°°°°°°');
     end;
     textcolor(7);
end;

procedure pas1;
begin
     sound(300);delay(200);nosound;
end;

procedure pas2;
begin
     sound(350);delay(200);nosound;
end;

procedure crit;
begin
     sound(100);delay(200);nosound;
     sound(50);delay(200);nosound;
end;

procedure des1;
begin
     sound(700);delay(200);nosound;
end;

procedure des2;
begin
     sound(900);delay(200);nosound;
end;


procedure final(var nom:string);
var
   a,b,c,d,e,f,g,h,i,j,k,k1,l,l1,l2,l3,l4,m,n:string;
   pos,desp,cami,barra:integer;

begin
     pos:=1;barra:=1;
     textbackground(0);clrscr;barres(nom,barra);
     a:=' o ';   b:=' o/';  c:='\o/'; n:='  o';
     d:='/³\';   e:='/³ ';  f:=' ³ '; m:='/³_';
     g:='Ä \';   h:='/ Ä';  i:='/ \'; j:=' | ';

     k:='  ';k1:='  ';
     l:='\ /';l1:='\ /   ';l2:='/ \     ';l3:='       ';l4:='';
     gotoxy(1,12);
     writeln(a:pos,k:52-pos);writeln(d:pos,d:52-pos);textcolor(9);writeln(i:pos,i:52-pos);
     textcolor(6);for cami:=1 to 80 do write('Û');textcolor(7);
     repeat
     delay(250);pos:=pos+3;clrscr;barres(nom,barra);gotoxy(1,12);
     writeln(a:pos,k:52-pos);writeln(d:pos,d:52-pos);textcolor(9);writeln(h:pos,i:52-pos);
     textcolor(6);for cami:=1 to 80 do write('Û');textcolor(7);pas1;
     delay(250);pos:=pos+3;clrscr;barres(nom,barra);gotoxy(1,12);
     writeln(a:pos,k:52-pos);writeln(d:pos,d:52-pos);textcolor(9);writeln(g:pos,i:52-pos);
     textcolor(6);for cami:=1 to 80 do write('Û');textcolor(7);pas2;
     until pos > 43;
     clrscr;barres(nom,barra);gotoxy(1,12);
     writeln(a:pos,k:52-pos);writeln(d:pos,d:52-pos);textcolor(9);writeln(i:pos,i:52-pos);
     textcolor(6);for cami:=1 to 80 do write('Û');textcolor(7);
     delay(250);clrscr;barres(nom,barra);gotoxy(1,12);
     writeln(b:pos,k:52-pos);writeln(m:pos,d:52-pos);textcolor(9);writeln(j:pos,i:52-pos);
     textcolor(6);for cami:=1 to 80 do write('Û');textcolor(7);
     delay(250);clrscr;barres(nom,barra);gotoxy(1,12);
     writeln(a:pos,k:52-pos);writeln(d:pos,l:52-pos);textcolor(9);writeln(i:pos,i:52-pos);
     textcolor(6);for cami:=1 to 80 do write('Û');textcolor(7);crit;barra:=2;
     clrscr;barres(nom,barra);gotoxy(1,12);
     writeln(n:pos,k:52-pos);writeln(d:pos,l:52-pos);textcolor(9);writeln(i:pos,i:52-pos);
     textcolor(6);for cami:=1 to 80 do write('Û');textcolor(7);sound(100);delay(200);nosound;
     clrscr;barres(nom,barra);gotoxy(1,12);
     writeln(a:pos,k1:52-pos);writeln(d:pos,l:52-pos);textcolor(9);writeln(i:pos,i:52-pos);
     textcolor(6);for cami:=1 to 80 do write('Û');textcolor(7);crit;barra:=3;
     delay(200);clrscr;barres(nom,barra);gotoxy(1,12);
     writeln(a:pos,k1:52-pos+1);writeln(d:pos,l:52-pos);textcolor(9);writeln(i:pos,i:52-pos);
     textcolor(6);for cami:=1 to 80 do write('Û');textcolor(7);
     delay(200);clrscr;barres(nom,barra);gotoxy(1,12);
     writeln(a:pos,k1:52-pos+2);writeln(d:pos,l:52-pos);textcolor(9);writeln(i:pos,i:52-pos);
     textcolor(6);for cami:=1 to 80 do write('Û');textcolor(7);
     delay(200);clrscr;barres(nom,barra);gotoxy(1,12);
     writeln(a:pos,k1:52-pos+3);writeln(d:pos,l:52-pos);textcolor(9);writeln(i:pos,i:52-pos);
     textcolor(6);for cami:=1 to 80 do write('Û');textcolor(7);
     delay(200);clrscr;barres(nom,barra);gotoxy(1,12);
     writeln(a:pos);writeln(d:pos,l1:52-pos);textcolor(9);writeln(i:pos,i:52-pos);
     textcolor(6);for cami:=1 to 80 do write('Û');textcolor(7);
     delay(200);clrscr;barres(nom,barra);gotoxy(1,12);
     writeln(a:pos);writeln(d:pos,l:52-pos);textcolor(9);write(i:pos,i:52-pos);
     textcolor(7);writeln(l4:54-pos);
     textcolor(6);for cami:=1 to 80 do write('Û');textcolor(7);
     delay(200);clrscr;barres(nom,barra);gotoxy(1,12);
     writeln(b:pos,l:52-pos);write(e:pos);textcolor(9);writeln(i:52-pos);
     textcolor(9);write(i:pos);
     textcolor(7);writeln(l3:52-pos);
     textcolor(6);for cami:=1 to 80 do write('Û');textcolor(7);des1;barra:=4;
     clrscr;barres(nom,barra);gotoxy(1,12);
     writeln(b:pos,i:52-pos);writeln(e:pos);textcolor(9);write(i:pos);
     textcolor(7);writeln(l3:52-pos);
     textcolor(6);for cami:=1 to 80 do write('Û');textcolor(7);des2;
     clrscr;barres(nom,barra);gotoxy(1,12);
     writeln(b:pos);writeln(e:pos);textcolor(9);write(i:pos);
     textcolor(7);writeln(l3:52-pos);
     textcolor(6);for cami:=1 to 80 do write('Û');textcolor(7);des1;
     clrscr;barres(nom,barra);gotoxy(1,12);
     writeln(a:pos);writeln(d:pos);textcolor(9);write(i:pos);
     textcolor(7);writeln(l3:52-pos);
     textcolor(6);for cami:=1 to 80 do write('Û');textcolor(7);
     delay(200);clrscr;barres(nom,barra);gotoxy(1,12);pos:=pos+3;
     writeln(a:pos);writeln(d:pos);textcolor(9);write(g:pos);
     textcolor(7);writeln(l4:57-pos);
     textcolor(6);for cami:=1 to 80 do write('Û');textcolor(7);
     delay(200);clrscr;barres(nom,barra);gotoxy(1,12);pos:=pos+3;
     writeln(a:pos);writeln(d:pos);textcolor(9);write(h:pos);
     textcolor(7);writeln(l4:57-pos);
     textcolor(6);for cami:=1 to 80 do write('Û');textcolor(7);
     delay(200);clrscr;barres(nom,barra);gotoxy(1,12);
     writeln(a:pos);writeln(d:pos);textcolor(9);write(i:pos);
     textcolor(7);writeln(l4:57-pos);
     textcolor(6);for cami:=1 to 80 do write('Û');textcolor(7);
     delay(200);clrscr;barres(nom,barra);gotoxy(1,12);
     writeln(a:pos);writeln(d:pos);textcolor(9);write(h:pos);
     textcolor(7);writeln(l4:57-pos);
     textcolor(6);for cami:=1 to 80 do write('Û');textcolor(7);
     for desp:=1 to 22 do begin
     delay(100);clrscr;barres(nom,barra);gotoxy(1,12);
     writeln(a:pos);writeln(d:pos);textcolor(9);write(i:pos);
     textcolor(7);writeln(l4:57-pos+desp);
     textcolor(6);for cami:=1 to 80 do write('Û');textcolor(7);sound(100-desp*2);barra:=5;
     delay(100);nosound;
     end;
     delay(200);clrscr;barres(nom,barra);gotoxy(1,12);
     writeln(a:pos);writeln(d:pos);textcolor(9);writeln(i:pos);
     textcolor(6);for cami:=1 to 80 do write('Û');textcolor(7);
     for desp:=1 to 7 do begin
     delay(200);clrscr;barres(nom,barra);textcolor(140);gotoxy(30,10);write('YOU WIN');
     textcolor(7);gotoxy(1,12);
     writeln(c:pos);writeln(f:pos);textcolor(9);writeln(i:pos);
     textcolor(6);for cami:=1 to 80 do write('Û');textcolor(7);
     delay(200);clrscr;barres(nom,barra);textcolor(140);gotoxy(30,10);write('YOU WIN');
     textcolor(7);gotoxy(1,12);
     writeln(a:pos);writeln(d:pos);textcolor(9);writeln(i:pos);
     textcolor(6);for cami:=1 to 80 do write('Û');textcolor(7);
     end;
end;

procedure advertencies;
var i:integer;
    x:boolean;
begin
     randomize;
     clrscr;
     textcolor(14);
     writeln('LOADING JAIL''S WORLD':50);
     writeln;
     for i:=1 to 100 do begin
     gotoxy((i div 4)+28,3);write('Û');
     gotoxy(1,4);
     clreol;
     gotoxy(40,4);
     textcolor(2);
     write(i,'%');
     delay(random(10)*10);
     end;
     gotoxy(25,12);textcolor(143);
     writeln('POLSA UNA TECLA PER A CONTINUAR');
     writeln;writeln;
     textcolor(13);
     writeln('ADVERTECIA: AQUEST PROGRAMA NO ESTA RECOMANAT PER A MENORS DE 18 ANYS PEL ');
     writeln('SEU ALT CONTINGUT EN VIOLENCIA I SEXE EXPLICITS');textcolor(7);
     writeln;
     TEXTCOLOR(15+128);
     writeln('PER A EIXIR DEL JOC, QUAN ET DEMANE ON VOLS ANAR POSSA COM A DIRECCIO  *');
     repeat until keypressed;
     asm
      xor ah,ah;
      int 16h;
     end;
end;

procedure conta(var ret:integer);
var i:longint;
    hour,minute,second,sec100,sec2:word;
    j:integer;
begin
     j:=1;
     gettime(hour,minute,second,sec100);
     for i:=1 to 1000000 do j:=j*j;
     gettime(hour,minute,second,sec2);
     ret:=sec2-sec100;
     if ret<=0 then ret:=5;
end;

procedure canco(var ret,nota:integer);
begin
     case nota of
     1: begin sound(do1);delay(orig div ret);nosound; end;
     2: begin sound(re);delay((orig div 2) div ret);nosound;end;
     3: begin sound(re);delay((orig div 2) div ret);nosound;end;
     4: begin sound(re);delay(orig div ret);nosound;end;
     5: begin sound(re);delay((2*orig) div ret);nosound;end;
     6: begin sound(do1);delay(orig div ret);nosound;end;
     7: begin sound(do1);delay(orig div ret);nosound;end;
     8: begin sound(do1);delay(orig div ret);nosound;end;
     9: begin sound(do1);delay(orig div ret);nosound;end;
     10: begin sound(res);delay((orig div 2) div ret);nosound;end;
     11: begin sound(res);delay((orig div 2) div ret);nosound;end;
     12: begin sound(res);delay(orig div ret);nosound;end;
     13: begin sound(res);delay((2*orig) div ret);nosound;end;
     14: begin sound(re);delay(orig div ret);nosound;end;
     15: begin sound(re);delay(orig div ret);nosound;end;
     16: begin sound(re);delay(orig div ret);nosound;end;
     end;
end;

procedure colors;
var i:integer;

begin
     randomize;
     i:=1;
     repeat
     clrscr;
     textbackground(random(16));
     sound(random(16)*100);
     delay(90);
     i:=i+1;
     until i=15;
     textbackground(0);
     clrscr;
     nosound;
end;

procedure color(c:byte);
begin
     textcolor(c);
end;

procedure bkg(b:byte);
begin
     textbackground(b);
end;

procedure music;
begin
     sound(1000);delay(200);
     sound(2000);delay(500);
     nosound;
end;

procedure frase(var login:string);
var index:integer;

begin
     if login='GLOMAIRU' then index:=1;
     if login='VIFERCA1' then index:=2;
     if login='SERLOMAN' then index:=3;
     if login='RAGOSA' then index:=4;
     if login='JOPERON' then index:=5;
     if login='JUACUEGA' then index:=6;
     if login='SARODMOC' then index:=7;
     if login='VIALGON' then index:=8;
     if login='SERVAMAR' then index:=9;
     if login='JUACADO' then index:=10;
     if login='JORSAAL' then index:=11;
     if login='DATERO' then index:=12;
     if login='MITABE' then index:=13;
     if login='RAPEDPE' then index:=14;
     if login='LOLOPE' then index:=15;
     case index of
     1:writeln('S¢c feli‡, s¢c feli‡, i tu eres un malo, mal‹simo.');
     2:writeln('Tia,:FOLLOW ME AT DE SKAI');
     3:writeln('Eres un fill de puta, te voy a follar por el valhal ');
     4:writeln('Tens que repetir tot el que jo diga, mans de xiqueta');
     5:writeln('S¢c el millor, s¢c el millor, s¢c el millor');
     6:writeln('Estic en l''aula m‚s hores que Usufondo');
     7:writeln('I el bot¢ este "Reset" per a que serveix?,..PING!');
     8:writeln('Hui no ‚s un bon dia per a la humanitat');
     9:writeln('Ya mi padre era un poco raro');
     10:writeln('Usufondo marginal, te voy a canear porque soy abogado');
     11:writeln('Plega de la vida');
     12:writeln('No m''ho crec porta''m una foto');
     13:writeln('Hui fa fred');
     14:writeln('Voleu vore un genocidi?');
     15:writeln('Quan acabes amb Usufondo anem a jalar naraches');
     end;
END;

procedure creacio_p(var nom,company1,company2,company3:string);
var
   i:integer;
   login:string;

begin
     clrscr;
     color(9);
     writeln('ELECCIà DELS PERSONATGES');
     for i:=1 to 6 do writeln;
     color(2);writeln('Protagonista: ');
     writeln;
     color(13);writeln('Amic 1: ');
     writeln('Login: ');
     writeln;
     writeln;
     writeln('Amic 2: ');
     writeln('Login: ');
     writeln;
     writeln;
     writeln('Amic 3: ');
     writeln('Login: ');
     writeln;
     writeln;color(14);
     gotoxy(15,8);readln(nom);
     gotoxy(9,10);readln(company1);
     gotoxy(9,11);readln(login);for i:=1 to length(login) do login[i]:=upcase(login[i]);frase(login);
     gotoxy(9,14);readln(company2);
     gotoxy(9,15);readln(login);for i:=1 to length(login) do login[i]:=upcase(login[i]);frase(login);
     gotoxy(9,18);readln(company3);
     gotoxy(9,19);readln(login);for i:=1 to length(login) do login[i]:=upcase(login[i]);frase(login);
     readln;
end;

procedure mike(var ret,i:integer);
begin
     case i of
     1:begin
     sound(mi);delay(orig div ret);nosound;delay(25);
     sound(la);delay(orig div ret);nosound;delay(25);
     sound(mi);delay(orig div ret);nosound;delay(25);
     sound(si);delay(orig div ret);nosound;delay(25);
     sound(mi);delay(orig div ret);nosound;delay(25);
     sound(sol);delay(orig div ret);nosound;delay(25);
     sound(la);delay(orig div ret);nosound;delay(25);
     sound(mi);delay(orig div ret);nosound;delay(25);
     sound(do2);delay(orig div ret);nosound;delay(25);
     sound(mi);delay(orig div ret);nosound;delay(25);
       end;
     2:begin
     sound(re2);delay(orig div ret);nosound;delay(25);
     sound(mi);delay(orig div ret);nosound;delay(25);
     sound(si);delay(orig div ret);nosound;delay(25);
     sound(do2);delay(orig div ret);nosound;delay(25);
     sound(mi);delay(orig div ret);nosound;delay(25);
     sound(la);delay(orig div ret);nosound;delay(25);
     sound(mi);delay(orig div ret);nosound;delay(25);
     sound(si);delay(orig div ret);nosound;delay(25);
     sound(mi);delay(orig div ret);nosound;delay(25);
     sound(sol);delay(orig div ret);nosound;delay(25);
     end;
     3:begin
     sound(la);delay(orig div ret);nosound;delay(25);
     sound(mi);delay(orig div ret);nosound;delay(25);
     sound(do2);delay(orig div ret);nosound;delay(25);
     sound(mi);delay(orig div ret);nosound;delay(25);
     sound(re2);delay(orig div ret);nosound;delay(25);
     sound(mi);delay(orig div ret);nosound;delay(25);
     sound(si);delay(orig div ret);nosound;delay(25);
     sound(do2);delay(orig div ret);nosound;delay(25);
     sound(mi);delay(orig div ret);nosound;delay(25);
     sound(si);delay(orig div ret);nosound;delay(25);
     end
     end;
end;

procedure comp;
begin
textbackground(0);
clrscr;
textcolor(7);
writeln('              ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ');
writeln('             Û²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²Û');
writeln('             Û²²                                                 ²²Û');
writeln('             Û²²                                                 ²²Û');
writeln('             Û²²                                                 ²²Û');
writeln('             Û²²                                                 ²²Û');
writeln('             Û²²                                                 ²²Û');
writeln('             Û²²                                                 ²²Û');
writeln('             Û²²                                                 ²²Û');
writeln('             Û²²                                                 ²²Û');
writeln('             Û²²                                                 ²²Û');
writeln('             Û²²                                                 ²²Û');
writeln('             Û²²                                                 ²²Û');
writeln('             Û²²                                                 ²²Û');
writeln('             Û²²                                                 ²²Û');
writeln('             Û²²                                                 ²²Û');
writeln('             Û²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²Û');
writeln('              ßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßß ');
writeln('             ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ');
writeln('           ÜÛ  þ    þ þ þ þ  þ þ þ þ  þ þ þ þ    þ þ þ              ÛÜ');
writeln('         ÜÛ  ÜÜ þ þ þ þ þ þ þ þ þ þ þ þ þ þ þ     ß ß ß    ©©©©      ÛÜ');
writeln('        Û     þ  þ þ þ þ þ þ þ þ þ þ þ þ þ þ þ þ    Ü       ©©©©       Û');
writeln('         Û  ßß ßß ßßßßßßßßßßßßßßßßßßßßßßßß  ßß ßß  ßßß       ©©©©     Û');
writeln('          ßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßß ');
end;

procedure creditsa;
begin
     gotoxy(35,9);textcolor(12);
     writeln('CREDITS');
     gotoxy(80,25);
end;

procedure creditsb;
begin
     gotoxy(25,6);textcolor(2);
     writeln('PROGRAMACIO');
     gotoxy(25,7);
     writeln('ßßßßßßßßßßß');
     gotoxy(40,11);textcolor(11);
     writeln('JIN');
     gotoxy(80,25);
end;

procedure creditsc;
begin
     gotoxy(25,6);textcolor(14);
     writeln('á TESTERS');
     gotoxy(25,7);
     writeln('ßßßßßßßßßßß');
     gotoxy(40,11);textcolor(2);
     writeln('JIN');gotoxy(40,12);
     writeln('SONGOTEN');
     gotoxy(80,25);
end;

procedure creditsd;
begin
     gotoxy(25,6);textcolor(12);
     writeln('     SO    ');
     gotoxy(25,7);
     writeln('ßßßßßßßßßßß');
     gotoxy(40,11);textcolor(9);
     writeln('JIN');gotoxy(40,12);
     writeln('QAD');gotoxy(40,13);
     writeln('KNIGHT');gotoxy(40,14);
     writeln('JOSE');gotoxy(80,25);
end;

procedure creditse;
begin
     gotoxy(25,6);textcolor(13);
     writeln(' ASCII ART ');
     gotoxy(25,7);
     writeln('ßßßßßßßßßßß');
     gotoxy(40,11);textcolor(14);
     writeln('JIN');gotoxy(40,12);
     writeln('QAD');gotoxy(40,13);
     gotoxy(80,25);
end;

procedure creditsf;
begin
     gotoxy(25,6);textcolor(15);
     writeln(' GRACIES A ');
     gotoxy(25,7);
     writeln('ßßßßßßßßßßß');
     gotoxy(20,8);textcolor(9);
     write('TIPO');gotoxy(40,8);
     write('ESKERDATOR');gotoxy(20,9);
     write('FELO');gotoxy(40,9);
     write('SKAUG');gotoxy(20,10);
     write('SON GOTEN');gotoxy(40,10);
     write('KNUNK');gotoxy(20,11);
     write('VISENTE');gotoxy(40,11);
     write('JORDI');gotoxy(20,12);
     write('SERGI');gotoxy(40,12);
     write('DANI');gotoxy(20,13);
     write('MASTER JAIL');gotoxy(40,13);
     write('BALOO');gotoxy(20,14);
     write('GLOR');gotoxy(40,14);
     write('JIN');gotoxy(20,15);
     write('QAD');gotoxy(40,15);
     write('SAYANCATX');
     gotoxy(80,25);
end;

procedure credits(var ret:integer);
var i:integer;
begin
     i:=1;
     comp;
     creditsa;
     mike(ret,i);
     i:=2;
     clrscr;
     comp;
     creditsb;
     mike(ret,i);
     i:=3;
     clrscr;
     comp;
     creditsc;
     mike(ret,i);
     i:=1;
     clrscr;
     comp;
     creditsd;
     mike(ret,i);
     i:=2;
     CLRSCR;
     comp;
     creditse;
     mike(ret,i);
     i:=3;
     clrscr;
     comp;
     creditsf;
     mike(ret,i);
     clrscr;
end;

procedure titol(var ret:integer);

var
   t:tit;i,j,k:integer;

begin
     k:=1;
     randomize;
     t[1]:=' ÍÍÍ» ÉÍÍÍ»  Ë  Ë    É ÉÍÍÍ»';
     t[2]:='    º ÌÍÍÍ¹  º  º      ÈÍÍÍ»';
     t[3]:='    º º   º  º  º          º';
     t[4]:='ÈÍÍÍ¼ Ê   Ê  Ê  ÈÍÍÍ¼  ÈÍÍÍ¼';
     t[5]:='ÉÍÍÍ»     Ë Ë   Ë ÉÍÍÍ» Ë»  Ë ÉÍËÍ» Ë   Ë ËÍÍÍ» ÉÍÍÍ»';
     t[6]:='ÌÍÍÍ¹ ÉÍÍÍ¹ º   º ÌÍÍ¹  ºÈ» º   º   º   º ÌÍÍË¼ ÌÍÍ¹ ';
     t[7]:='º   º º   º È»  º º     º È»º   º   º   º º  È» º    ';
     t[8]:='Ê   Ê ÈÍÍÍ¼  ÈÍÍ¼ ÈÍÍÍ¼ Ê  ÈÊ   Ê   ÈÍÍÍ¼ Ê   È ÈÍÍÍ¼';
     repeat
      if k=17 then k:=1;
      clrscr;
      for i:=1 to 6 do writeln;
      color(random(14)+1);
      writeln(t[1]:37);
      writeln(t[2]:37);
      writeln(t[3]:37);
      writeln(t[4]:37);
      for i:=1 to 4 do writeln;
      writeln(t[5]:75);
      writeln(t[6]:75);
      writeln(t[7]:75);
      writeln(t[8]:75);
      for i:=1 to 3 do writeln;
      writeln('POLSA UNA TECLA PER A CONTINUAR':55);
      canco(ret,k);
      k:=k+1;
   until keypressed;
   asm
      xor ah,ah;
      int 16h;
     end;
end;

procedure c_mort(var ret,j:integer);
begin
     case j of
     1: begin sound(re);delay(3*orig div ret);nosound;delay(25);end;
     2: begin sound(re);delay(3*orig div ret);nosound;delay(25);end;
     3: begin sound(re);delay(orig div ret);nosound;delay(25);end;
     4: begin sound(re);delay(3*orig div ret);nosound;delay(25);end;
     5: begin sound(fa);delay(3*orig div ret);nosound;delay(25);end;
     6: begin sound(mi);delay(orig div ret);nosound;delay(25);end;
     7: begin sound(mi);delay(2*orig div ret);nosound;delay(25);end;
     8: begin sound(re);delay(orig div ret);nosound;delay(25);end;
     9: begin sound(re);delay(2*orig div ret);nosound;delay(25);end;
     10: begin sound(dore);delay(orig div ret);nosound;delay(25);end;
     11: begin sound(re);delay(3*orig div ret);nosound;delay(25);end;
     end;
end;

procedure  mort(var ret:integer);
var x,y,z:word;
    i,j:integer;

begin
     y:=4;
     x:=15;
     j:=1;
     repeat
     clrscr;
     for i:=1 to 7 do writeln;
     color(y);
     writeln('ÉÍÍÍ» ÉÍÍÍ» Ë» ÉË ËÍÍÍ»':50);
     writeln('º     ÌÍÍÍ¹ ºÈË¼º ÌÍÍ  ':50);
     writeln('º  Í» º   º º   º º    ':50);
     writeln('ÈÍÍÍ¼ Ê   Ê Ê   Ê ÊÍÍÍ¼':50);
     color(x);
     writeln('ÉÍÍÍ» Ë   Ë ËÍÍÍ» ËÍÍÍ»':50);
     writeln('º   º º   º ÌÍÍ   ÌÍÍË¼':50);
     writeln('º   º È»  º º     º  È»':50);
     writeln('ÈÍÍÍ¼  ÈÍÍ¼ ÊÍÍÍ¼ Ê   È':50);
     c_mort(ret,j);
     z:=x;x:=y;y:=z;j:=j+1;
     until j=12;
     asm
        xor ah,ah;
        int 16h;
     end;
end;

procedure present(var ret:integer);
var i:integer;

begin
     color(15);
     clrscr;
     gotoxy(12,12);
     write('J');sound(m);delay(v);nosound;
     write('I');sound(m+10);delay(v-10);nosound;
     write('N');sound(m);delay(v-20);nosound;
     write('''');sound(m+10);delay(v-30);nosound;
     write('S');sound(m);delay(v-40);nosound;
     write(' ');sound(m+10);delay(v-50);nosound;
     write('P');sound(m);delay(v-60);nosound;
     write('R');sound(m+10);delay(v-70);nosound;
     write('O');sound(m);delay(v-80);nosound;
     write('D');sound(m+10);delay(v-90);nosound;
     write('U');sound(m);delay(v-100);nosound;
     write('C');sound(m+10);delay(v-110);nosound;
     write('T');sound(m);delay(v-120);nosound;
     write('I');sound(m+10);delay(v-130);nosound;
     write('O');sound(m);delay(v-140);nosound;
     write('N');sound(m+10);delay(v-150);nosound;
     write('S');sound(m);delay(v-160);nosound;
     color(0);
     delay(1500);
     clrscr;
     gotoxy(35,12);
     color(4);
     writeln('PRESENTS');music;
     delay(2000);nosound;
     color(8);
     clrscr;
     i:=1;
     color(130);
     repeat
          bkg(0);
          clrscr;
          gotoxy(30,10);
          color(4);write('VIRUS WARNING');
          gotoxy(80,25);
          sound(300);
          delay(500);
          sound(350);
          bkg(15);
          clrscr;
          gotoxy(30,10);
          color(0);write('VIRUS WARNING');
          gotoxy(80,25);
          delay(500);
          nosound;
          i:=i+1;
     until i=5;
     bkg(0);
     clrscr;
     color(130);
     gotoxy(23,11);writeln('JAIL''S ADVENTURE FOUND IN MEMORY');
     for i:=1 to 30 do begin
         sound(1000-(4*i));
         delay(50);
         nosound;
     end;
     historia;
     titol(ret);
end;

procedure mapa;{Mapa del joc}
var
   f_out:text;
   l:map;

begin
     assign(f_out,'Mapa.txt');
     rewrite(f_out);
     l[1]:='#######################################################';
     l[2]:='#  LA VELLA  #  EL AGORA  #  PRACTIQUES  #  USUFONDO  #';
     l[3]:='#            #            #              #     (E)    #';
     {l[4]:=l1}
     l[5]:='#  DOC JAIL  #   BRINDYS  #    JAIL 2    #   JAIL 1   #';
     l[6]:='#            #     (E)    #      (C)     #            #';
     {l[7]:=l1}
     l[8]:='#   CLASE C  #   CLASE D  #  REPROGRAFIA #   CLASE E  #';
     l[9]:='#     (E)    #     (C)    #      (E)     #     (C)    #';
     {l[10]:=l[1]}
    l[11]:='#  PORTA DE  #   CLASE A  #    CLASE B   #  SERVEI DE #';
    l[12]:='#  L''ESCOLA  #     (C)    #              #PUBLICACIONS#';
    {l[13]:=l[1]}
    {volcar el mapa al fitxer de text}
    writeln(f_out,l[1]);writeln(l[1]);
    writeln(f_out,l[2]);writeln(l[2]);
    writeln(f_out,l[3]);writeln(l[3]);
    writeln(f_out,l[1]);writeln(l[1]);
    writeln(f_out,l[5]);writeln(l[5]);
    writeln(f_out,l[6]);writeln(l[6]);
    writeln(f_out,l[1]);writeln(l[1]);
    writeln(f_out,l[8]);writeln(l[8]);
    writeln(f_out,l[9]);writeln(l[9]);
    writeln(f_out,l[1]);writeln(l[1]);
    writeln(f_out,l[11]);writeln(l[11]);
    writeln(f_out,l[12]);writeln(l[12]);
    writeln(f_out,l[1]);writeln(l[1]);
    writeln(f_out);
    writeln(f_out);
    l[7]:='(E)-->ENEMIC';
    l[10]:='(C)-->AMIC';
    writeln(f_out)     ;writeln;
    writeln(f_out,l[7]);writeln(l[7]);
    writeln(f_out,l[10]);writeln(l[10]);
    {Indicacio}
    writeln;
    writeln('El mapa est… a fitxer MAPA.TXT de directori del joc');
    close(f_out);
end;{mapa}

procedure menu;{menu de menjar de La vella}
begin
     writeln('****************************************':55);
     delay(200);
     writeln('*                                      *':55);
     delay(200);
     writeln('* 1. Men£ del dia         5 disquitos  *':55);
     delay(200);
     writeln('*                                      *':55);
     delay(200);
     writeln('* 2. Entrep…              2 disquitos  *':55);
     delay(200);
     writeln('*                                      *':55);
     delay(200);
     writeln('* 3. No vull menjar res                *':55);
     delay(200);
     writeln('*                                      *':55);
     delay(200);
     writeln('****************************************':55);
end;

procedure menu_comb(var nom,en_nom:string;vida,discos,cds,en_vida,en_magia:integer);{marcadors de combat}
begin
    color(3);write(nom:6);color(9);writeln(en_nom:40);
    writeln;
    color(11);write('VIDA:',vida:6);writeln('VIDA:':32,en_vida:5);
    write('DISCOS:',discos:4);writeln('SUPER:':33,en_magia:4);
    writeln('CD''s:',cds:6);
    writeln;color(10);
    writeln('#######################################################');
    color(14);
end;


procedure combat(nom,en_nom:string; var vida,discos,cds,en_vida,en_magia,game_over:integer);
var i,k,opcio_en,dany,en_dany:integer;
    opcio:char;

begin
     randomize;
     while ((vida>0) and (en_vida>0)) do
      begin
       clrscr;
       menu_comb(nom,en_nom,vida,discos,cds,en_vida,en_magia);
       for i:=1 to 6 do writeln;
       {Codi per al teu atac}
       writeln('Que vols fer?,(P)egar-li, llen‡ar-li un (D)isquet o un (C)D-Rom');
       write('Opcio: ');readln(opcio);
       opcio:=upcase(opcio);
       k:=1;
       while (((opcio<>'P') and (opcio<>'D') and (opcio<>'C')) and (k<3)) do
        begin
         clrscr;
         menu_comb(nom,en_nom,vida,discos,cds,en_vida,en_magia);
         for i:=1 to 6 do writeln;
         writeln('Opci¢ no valida, torna-ho a intentar');
         write('Opci¢: ');readln(opcio);
         opcio:=upcase(opcio);
         k:=k+1;
         if k=3 then begin
                      writeln('Ho sent has perdut el teu temps d''atac');
                      readln;
                   end;
        end;
       dany:=random(15)+1;
       if opcio='P' then begin
                           en_vida:=en_vida-dany;
                           writeln(en_nom,' ha sofert un dany de ',dany,' punts');readln;
                         end
       else if opcio='D' then
             if discos>0 then begin
                                en_vida:=en_vida-(dany*2);
                                writeln(en_nom,' ha sofert un dany de ',dany*2,' punts');readln;
                                discos:=discos-1;
                                end
             else begin
                       writeln;
                       color(3);write(nom);color(14);writeln(': Merda!, no em queden disquitos');
                       readln;
                  end
           else if opcio='C' then
                   if cds>0 then begin
                              en_vida:=en_vida-(dany*3);
                              writeln(en_nom,' ha sofert un dany de ',dany*3,' punts');readln;
                              cds:=cds-1;
                              end
                else begin
                          writeln;
                          color(3);write(nom);color(14);writeln(': NO TINC CD''s !!!!!');
                          readln;
                     end;
       clrscr;
       menu_comb(nom,en_nom,vida,discos,cds,en_vida,en_magia);
       for i:=1 to 6 do writeln;
       if en_vida>0 then begin
       {Atac de l'enemic}
       en_dany:=random(20)+1;
       opcio_en:=random(2);
        if en_magia<10 then opcio_en:=0;
        if opcio_en=0 then begin
                             vida:=vida-en_dany;
                             writeln(en_nom,' t''ha fet ',en_dany,' punts de dany');
                             readln;
                           end
        else begin
                  if (en_nom='Brindys') then begin
                                              vida:=vida-en_dany*2;
                                              en_magia:=en_magia-10;
                                              writeln(en_nom,': POR MIRAR PAGINAS GUAAARRAAAAS!');
                                              writeln(en_nom,' t''ha fet ',en_dany*2,' punts de dany');
                                              readln;
                                             end
                  else begin
                        vida:=vida-en_dany*2;
                        en_magia:=en_magia-10;
                        writeln(en_nom,': UN MP3 ?!!, toma MP3');
                        writeln(en_nom,' t''ha fet ',en_dany*2,' punts de dany');
                        readln;
                       end
        end;
       end;
      clrscr;
      {Final del combat}
      if en_vida<=0 then writeln('Has guanyat a ',en_nom, '. FELICITATS!');
      if vida<=0 then begin
                           writeln('T''han guanyat les for‡es de la jail, la pr•xima vegada(TU MISMO),');
                           writeln('que tingues m‚s sort');
                           game_over:=1;
                      end;
      end;
      readln;
end;{combat}

procedure nord(var pos,val:integer);
begin
     pos:=pos+4;
     val:=1;
end;

procedure est(var pos,val:integer);
begin
     pos:=pos+1;
     val:=1;
end;

procedure oest(var pos,val:integer);
begin
     pos:=pos-1;
     val:=1;
end;

procedure sud(var pos,val:integer);
begin
     pos:=pos-4;
     val:=1;
end;

{mapa}
{13 # 14 # 15 # 16 #
 ###################
  9 # 10 # 11 # 12 #
 ###################
  5 # 6  # 7  # 8  #
 ###################
  1 # 2  # 3  # 4  #}

procedure cas1(var pos:integer;dir:char;var val:integer);{proc per a 2 direccions Est Nord}
begin
     if dir='*' then begin val:=1;clrscr;halt;end;
     if dir='E' then est(pos,val)
     else if dir='N' then nord(pos,val)
        else writeln('Eixe cam¡ no es v…lid');
end;{cas1}

procedure dir_a(var pos:integer;dir:char;var val:integer);{proc per a 3 direccions Oest Est Nord}
begin
      if dir='*' then begin val:=1;clrscr;halt;end;
      if dir='O' then oest(pos,val)
      else if dir='E' then est(pos,val)
      else if dir='N' then nord(pos,val)
      else writeln('Per ah¡ no pots anar');
end;{3dir}

procedure cas4(var pos:integer;dir:char;var val:integer);{proc per a la casella 4}
begin
     if dir='*' then begin val:=1;clrscr;halt;end;
     if dir='O' then oest(pos,val)
      else if dir='N' then nord(pos,val)
       else writeln ('No hi ha eixida');
end;{cas4}

procedure dir_b(var pos:integer;dir:char;var val:integer);{proc per a caselles 5 i 9}
begin
     if dir='*' then begin val:=1;clrscr;halt;end;
     if dir='S' then sud(pos,val)
      else if dir='E' then est(pos,val)
       else if dir='N' then nord(pos,val)
        else writeln('No pots anar per ah¡');
end;{3dir_b}

procedure dir4(var pos:integer;dir:char;var val:integer);{proc per a caselles 6,7,10,11}
begin
     if dir='*' then begin val:=1;clrscr;halt;end;
     if dir='N' then nord(pos,val)
      else if dir='S' then sud(pos,val)
       else if dir='E' then est(pos,val)
        else if dir='O' then oest(pos,val);
end;{4dir}

procedure dir_c(var pos:integer;dir:char;var val:integer);{proc per a caselles 8 i 12}
begin
     if dir='*' then begin val:=1;clrscr;halt;end;
     if dir='S' then sud(pos,val)
      else if dir='O' then oest(pos,val)
       else if dir='N' then nord(pos,val)
        else writeln('No pots anar per ah¡');
end;{3dir_c}

procedure dir_d(var pos:integer;dir:char;var val:integer);{proc per a caselles 14 i 15}
begin
     if dir='*' then begin val:=1;clrscr;halt;end;
     if dir='O' then oest(pos,val)
      else if dir='E' then est(pos,val)
       else if dir='S' then sud(pos,val)
        else writeln('No pots anar per ah¡');
end;{3dir_d}

procedure cas13(var pos:integer;dir:char;var val:integer);{proc per a la casella 13}
begin
     if dir='*' then begin val:=1;clrscr;halt;end;
     if dir='E' then est(pos,val)
      else if dir='S' then sud(pos,val)
       else writeln ('No hi ha eixida');
end;{cas13}

procedure selcas(var pos:integer);{procediment per a anar pel mapa}

var dir:char;{direcci¢ q pot prendre estant en una posici¢}
    val:integer;

begin
     val:=0; {senyal per a validar la direcci¢ 0 = incorrecta,1 = correcta}
     while val = 0 do
      begin
        writeln ('On vols anar?');
        readln(dir);
        dir:=upcase(dir);
        case pos of
           1: if val=0 then cas1(pos,dir,val);
           2: if val=0 then dir_a(pos,dir,val);
           3: if val=0 then dir_a(pos,dir,val);
           4: if val=0 then cas4(pos,dir,val);
           5: if val=0 then dir_b(pos,dir,val);
           6: if val=0 then dir4(pos,dir,val);
           7: if val=0 then dir4(pos,dir,val);
           8: if val=0 then dir_c(pos,dir,val);
           9: if val=0 then dir_b(pos,dir,val);
          10: if val=0 then dir4(pos,dir,val);
          11: if val=0 then dir4(pos,dir,val);
          12: if val=0 then dir_c(pos,dir,val);
          13: if val=0 then cas13(pos,dir,val);
          14: if val=0 then dir_d(pos,dir,val);
          15: if val=0 then dir_d(pos,dir,val);
        end;
      end;
end;{selcas}

{la primera vble indica si has estat =1 o no =0 abans}
procedure p_escola(var estat,escola,pos:integer;nom:string);
var
   i:integer;
begin
     clrscr;
     color(9);
     writeln('PORTA DE L''ESCOLA');
     color(14);
     for i:=1 to 6 do writeln;
     if escola=0 then
                  begin
                       write('Es mat¡ i acabes d''arribar a la porta de l''escola, entres i veus ');
                       writeln('dos classes.');
                       write('La primera davant teu al (N)ord pareix que estiga plena de gent ');
                       writeln('mentre que la dela teua dreta en l''(E)st sembla buida');
                       selcas(pos);
                       escola:=1;
                  end
     else begin
               color(3);write(nom);color(14);writeln(': Altra vegada ac¡!');
               write('Les  dos posibles  direccions s¢n al (N)ord una classe plena de gent ');
               writeln('o a l''(E)stuna classe que sembla buida');
               selcas(pos);
     end;
     estat:=1;
end;{p_escola}

procedure p_clase2(var estat,clase_2,pos,discos:integer;var company1,nom:string);
var
   i:integer;

begin
     clrscr;
     color(2);
     writeln('Classe A');
     color(14);
     for i:=1 to 6 do writeln;
     if clase_2=0 then
        begin
             write('On pareixia que no hi havia ning£, nom‚s entrar veus que hi ha alg£ ');
             writeln('al fons de  la classe, trobes que es pareix ...');
             readln;
             write('Si, es ');color(9);write(company1);color(14);write(' que et saluda');
             writeln;
             color(9);write(company1);color(14);write(': Bon dia ');color(3);writeln(nom,'!');
             color(14);write('     Saps que per les classes va un tio emprenyant,menjant-li el cap ');
             writeln('a la gent?');
             writeln('     Per si el trobes, tin a‡• segur que et far… falta');
             writeln;
             color(3);write(nom);color(14);writeln(' acabes de guanyar 2 disquitos!!');
             discos:=discos+2;
             writeln;
        end
     else begin
               write('El teu amic ');color(9);write(company1);color(14);writeln(' ja no est… en clase. La classe est… buida');
     end;
     clase_2:=1;
     write('Surts  de classe i  no saps on  anar, a l''(O)est est… ');
     write('la porta  de l''escola,  al(N)ord un aula on est…n donant classe ');
     writeln('i a l''(E)st una classe  on  solament hi ha1 persona');
     selcas(pos);
     estat:=1;
end;{p_clase2}

procedure p_clase3(var estat,clase_3,pos:integer;nom:string);
var
   i:integer;

begin
     clrscr;
     color(3);
     writeln('Classe B');
     color(14);
     for i:=1 to 6 do writeln;
     if clase_3=0 then
        begin
             writeln('Al mirar per la finestreta de classe veus que el tio est… ESTUDIANT!!');
             writeln;
             color(3);write(nom);color(14);write(':Com pot ser que estiga estudiant quan Usufondo est… a punt ');
             writeln('de conquerir la jail?. Val m‚s que me''n vaja d''ac¡');
             writeln;
             write('Quan est…s a punt d''anarte''n entra per la porta un NEGRE. ');
             write('El  negre s''acosta poca poc per darrere  de l''estudiant ');
             write('que poc sap el que li  espera, sigilosament elnegre s''arrima ');
             write('m‚s i m‚s,es baixa els pantalons i apareix una coca-cola de ');
             write('litrei mig i ja sap on destapar-la,de sobte l''estudiant ');
             write('es gira, veu una cosa penjantdavant seu i s''asusta, i ');
             write('es posa a cridar demanant ajuda, i el negre li ompli laboca ');
             write('rapidament, i l''estudiant es posa a beure, despr‚s el negre ');
             write('l''agafa brusca-ment i li dona la volta fa que es posse a ');
             writeln('a quatre potes i l''entxufa per darrere');
             clase_3:=1;
             readln;
             clrscr;
             color(3);
             writeln('Classe B');
             color(14);
             for i:=1 to 6 do writeln;
        end
     else begin
               write('El negre continua entxufant-li per darrere, pareix que a');
               writeln(' l''estudiant li agrade ');readln;
          end;
     color(3);write(nom);color(14);writeln(' abandona la classe pensant on pot anar ara.');
     write('Si va al (N)ord far… cap a reprografia,a l''(O)est hi ha una classe que ');
     writeln('sembla   buida i anant cap a l''(E)st arribar… al Servei de Publicacions');
     selcas(pos);
     estat:=1;
end;{p_clase3}

procedure p_sp(var estat,sp,pos,discos:integer;var nom:string);
var
   i:integer;

begin
     clrscr;
     color(4);
     writeln('Servei de Publicacions');
     color(14);
     for i:=1 to 6 do writeln;
     if sp=0 then
        begin
             writeln('No t''enrecordaves pero havies de comprar el llibre d''AM1 urgentment');
             writeln;
             color(3);write(nom);color(14);writeln(':Que faig, si no tinc diners');
             writeln;
             color(3);write(nom);color(14);write(':Disculpe accepten pagament en disquitos, ');
             writeln('es que no tinc diners i ...');
             color(15);write('Home del SP');color(14);writeln(': Clar que si');
             color(3);write(nom);color(14);writeln(': Quant val el llibre d''AM1?');
             color(15);write('Home del SP');color(14);writeln(': 2 disquitos');
             color(3);write(nom);color(14);writeln(':B‚, done''m-el');
             if discos <=1 then begin
                color(15);write('Home de SP');color(14);writeln(': Sols tens ',discos,' disc(os)!!');
                writeln('            Em conforme amb el que tens');
                discos:=0;
                end
             else begin
                  color(15);write('Home de SP');color(14);writeln(': Ac¡ tens, adeu');
                  discos:=discos-2;
                  end;
             writeln ('Al obrir el llibre veus que t‚ un disquito dins, quina sort!!!');
             discos:=discos+1;
             sp:=1;
        end
     else begin
               write('No tens res a fer al servei de publicacions, es millor ');
               writeln('que vages a un altre llocsense perdre temps');
               readln;
               end;
     write('Abandones el Servei de Publicacions i no saps on dirigir-te si ');
     write('al (N)ord a la teua aula on ara tens classe o a l''(O)est una classe ');
     writeln('on sols hi ha un estudiant');
     selcas(pos);
     estat:=1;
end;{p_sp}

procedure p_clase5(var estat,clase_5,pos,vida,discos,cds,game_over:integer;var nom:string);
var
   i,en_magia,en_vida:integer;
   en_nom:string;

begin
     color(5);
     clrscr;
     writeln('Clase C');
     color(14);
     for i:=1 to 6 do writeln;
     if clase_5=0 then
                  begin
                       write('Al entrar a la clase veus a tota la gent espantada. ');
                       write('De sobte t''adones que al mig de la classe esta el ');
                       write('SOBRECARREGATOR (o copro) i amena‡a amb contar-te  ');
                       writeln('la seua vida');
                       color(132);
                       writeln('COMEN€A EL COMBAT':42);
                       readln;
                       colors;
                       color(14);
                       en_nom:='Sobrecarregator';
                       en_vida:=50;
                       en_magia:=0;
                       combat(nom,en_nom,vida,discos,cds,en_vida,en_magia,game_over);
                       if game_over=0 then begin
                          write('Sobrecarregator est… fet pols a terra i li furtes ');
                          writeln('tot el que duia a la cartera');
                          color(2);write(nom);color(14);writeln(' conseguix 3 discos,1 CD i l''esmorzar');
                          writeln('Punts de vida +30');vida:=vida+30;discos:=discos+3;cds:=cds+1;
                          if en_vida <0 then en_vida:=0;
                          menu_comb(nom,en_nom,vida,discos,cds,en_vida,en_magia);
                          readln;clrscr;color(5);
                          writeln('Classe C');
                          for i:=1 to 6 do writeln;color(14);
                          write('Ara et toca continuar l''aventura, al (N)ord veus la ');
                          write('Doc Jail, al (S)ud l''entrada a l''escola i a l''(E)st ');
                          writeln('un aula on estant donant classe');
                          clase_5:=1;
                       end;
                  end
     else begin
               write('Sobrecarregator ja no existeix, ho notes a la cara de felicitat ');
               writeln('de tota la gent i tu tamb‚ t''alegres, per• ha de continuar.');
               write('Penses on anar, al (N)ord a la Doc Jail, al (S)ud a l''entrada');
               writeln('de l''escola o a l''(E)st un aula on s''est… donant classe');
          end;
     if game_over=0 then selcas(pos);
     estat:=1;
end;{p_clase5}

procedure p_clase6(var estat,clase_6,pos,discos:integer;nom,company2:string);
var
   i:integer;

begin
     clrscr;
     color(6);
     writeln('Clase D');
     color(14);
     for i:=1 to 6 do writeln;
     if clase_6=0 then begin
        write('Entres a classe i et sentes al costat de ');color(9);write(company2,'. ');
        color(14);write('Quan et posses a atendre el mestre diu que teniu els ');
        write('apunts a reprografia. Com que ja no aguantes m‚s les ');
        write('explicacions te n''ixes de classe, pero quan et vas a ');
        write('al‡ar de la cadira ');color(9);write(company2);color(14);writeln(' t''agafa del bra‡.');
        writeln;
        color(9);write(company2);color(14);write(': Ves amb compte on vas, tin a‡• per si tens que ');
        writeln('defendre''t. Ho sent per• no en tinc m‚s');
        writeln;
        color(3);write(nom);color(14);writeln(' acaba d''aconseguir 2 discos');
        discos:=discos+2;
        writeln;
        writeln('Ixes de classe');
        clase_6:=1;
     end
     else begin
          write('Com que ');color(9);write(company2);color(14);write('ja t''ho ha donat tot, penses que no ');
          writeln('valdria la pena entrar i t''atures davant la porta');
          writeln;
     end;
     write('Pots dirigir-te al (N)ord a la jail, al (S)ud a una ');
     write('classe on pareix que no hi haja ning£, a l''(O)est ');
     writeln('una classe on hi ha molta gent o a l''(E)st a reprografia');
     selcas(pos);
     estat:=1;
end;{p_clase6}

procedure p_reprografia(var estat,reprografia,pos,vida,discos,cds,game_over:integer;var nom:string);
var
   i,en_magia,en_vida:integer;
   op,en_nom:string;

begin
     clrscr;en_nom:='Tio de reprografia';
     color(1);
     writeln('REPROGRAFIA');
     color(14);
     for i:=1 to 6 do writeln;
     if reprografia=0 then
        begin
             write('Arribes per a comprar uns apunts i despr‚s d''estar ');
             writeln('una estona a la cua arribes a la finestra');
             writeln;
             color(3);write(nom);color(14);writeln(':Dona''m el 1015 d''informatica');
             color(13);write(en_nom);color(14);writeln(':Son 20 disquetes');
             color(3);write(nom);color(14);writeln(':Tu est…s boig, per 4 fulles 20 disquitos');
             color(13);write(en_nom);color(14);writeln(':Venga, venga los disquetes');
             color(3);write(nom);color(14);writeln(':Que no kapullo, que no te''ls done');
             color(13);write(en_nom);color(14);writeln(':Entonces te los quitar‚');
             writeln;
             color(132);
             writeln('COMEN€A EL COMBAT':42);
             readln;
             colors;
             color(14);
             en_vida:=80;
             en_magia:=0;
             combat(nom,en_nom,vida,discos,cds,en_vida,en_magia,game_over);
             if game_over=0 then begin
                write('Al tio de reprografia no li queden forces ni per ');
                write('a al‡ar-se de terra,tens ganes de venjar-te d''ell, ');
                writeln('que fas?');
                writeln;
                writeln('1. Li xafes el cap');
                writeln('2. Li pegues una patada als ous');
                writeln('3. L''ajudes a al‡ar-se');
                write('Opci¢:');readln(op);
                if op='1' then begin
                               write('Li xafes el cap amb totes les teues ganes i explota. ');
                               write('El seu cervell es a terra, junt amb els ulls que han ');
                               writeln('sortit del crani');
                               writeln;
                               writeln('Bona elecci¢ aix• es mereix una bonificaci¢');
                               color(3);write(nom);color(14);writeln(' reb 10 disquitos, 2 CD''s i 50 punts de vida');
                               discos:=discos+10;
                               cds:=cds+2;
                               vida:=vida+50;
                               end
                else if op='2' then begin
                               write('Li pegues als ous amb totes les forces fins a treure-li''ls ');
                               writeln('per la boca');
                               writeln;
                               writeln('No est… mal, ac¡ tens el premi');
                               color(3);write(nom);color(14);writeln(' reb 7 disquitos, 1 cd i 35 punts de vida');
                               discos:=discos+7;
                               cds:=cds+1;
                               vida:=vida+35;
                               end
                    else begin
                         write('No!!!,com has pogut fer aix•. Amb les poques forces ');
                         writeln('que li queden et furta 4 disquitos i se''n va corrent.');
                         if discos<=4 then discos:=0 else discos:=discos-4;
                    end;
                end;
                if en_vida<0 then en_vida:=0;
                if game_over=0 then begin
                menu_comb(nom,en_nom,vida,discos,cds,en_vida,en_magia);
                readln;
                clrscr;
                color(1);
                writeln('REPROGRAFIA');
                color(14);
                for i:=1 to 6 do writeln;
                reprografia:=1;
                end
             end
        else begin
                  write('Despr‚s de vencer al tio de reprografia ja no queda ');
                  write('ning£ ah¡, no perdes m‚s temps, es millor anar a un ');
                  writeln('altre lloc');
                  writeln;
        end;
        if game_over=0 then begin
        write('L''aventura continua, veus quatre possibles camins, al (N)ord ');
        write('arribes a la Jail2 al (S)ud a una classe on hi ha 1 tio estudiant, ');
        write('a l''(E)st est… la teua classe i a l''(O)est hi ha un aula on estan ');
        writeln('donant classe');
        selcas(pos);
        end;
        estat:=1;
end;{p_reprografia}

procedure p_clase8(var estat,clase_8,pos,discos:integer;var nom,company3:string);
var
   i:integer;

begin
     clrscr;
     color(2);
     writeln('Clase E');
     color(14);
     for i:=1 to 6 do writeln;
     if clase_8=0 then begin
                       write('Quan arribes a classe veus que ja ha comen‡at i decideixes ');
                       write('no  entrar, veus  que ');color(9);write(company3);color(14);write(' est… junt a la porta, et ');
                       writeln('mira i li fas un senyal per a que isca');
                       writeln;
                       color(9);write(company3);color(14);writeln(': Que vols?');
                       color(3);write(nom);color(14);write(': sols volia saber si tens disquitos, he d''acabar amb ');
                       writeln('Usufondo abans que puga cancelúlar m‚s comptes');
                       color(9);write(company3);color(14);writeln(': NO EST·S B!!,es una bogeria t''esclafar…');
                       color(3);write(nom);color(14);writeln(': Pot ser per• alg£ ha de fer-ho');
                       color(9);write(company3);color(14);writeln(': Sols tinc una caixa per• m‚s val aix• que res');
                       writeln;
                       color(3);write(nom);color(14);writeln(' aconsegueix 10 disquitos');
                       discos:=discos+10;
                       color(9);write(company3);color(14);writeln(' torna a classe');
                       clase_8:=1;
                       end
     else begin color(14);write('Veus a ');color(9);write(company3);color(14);writeln(' per la finestra. Ja no est… atenent');
     end;
     writeln;
     write('Tens 3 llocs on anar, al (N)ord a la Jail1, al (S)ud al Servei de Publicacions ');
     writeln('oa l''(O)est a reprografia');
     selcas(pos);
     estat:=1;
end;{p_clase8}

procedure p_docjail(var estat,doc_jail,pos,cds,vida:integer;nom:string);
var
   i:integer;
   op:string;

begin
     clrscr;
     color(3);
     writeln('DOC JAIL');
     color(14);
     for i:=1 to 6 do writeln;
     if doc_jail=0 then begin
                       write('Quan arribes a la jail veus que s''acaba d''obrir agafes ');
                       writeln('un ordinador i et fiques a navegar.');
                       write('La jaula s''ompli al moment, davant teu es senta una xica ');
                       writeln('que acaba de possar un CD al lector');
                       color(3);write(nom);color(14);writeln(':I si li furtara el CD?');
                       writeln;
                       writeln('Que fas?');
                       writeln('1. Li pegues i li furtes el CD');
                       writeln('2. Li demanes el CD');
                       writeln;
                       write('Opcio: ');readln(op);
                       clrscr;
                       color(3);
                       writeln('DOC JAIL');
                       color(14);
                       for i:=1 to 6 do writeln;
                       if op='1' then begin
                                      write('T''alces de la cadira i quan estas a punt de pegar-li ');
                                      write('t''agafa de la cintura i et llen‡a pels aires. Al caure ');
                                      write('et fas mal, l''unic que pots fer es eixir corrent perque ');
                                      writeln('pareix que siga m‚s forta que t£');
                                      color(3);write(nom);color(14);writeln(' has perdut 5 punts de vida');
                                      vida:=vida-5;
                                      end
                       else if op='2' then begin
                                           write('T''arrimes a ella i li demanes si per favor et pot donar el ');
                                           write('CD que es per a matar a Usufondo.');
                                           writeln('Ella et diu que si');
                                           color(3);write(nom);color(14);writeln(' acabes de guanyar un CD');
                                           cds:=cds+1;
                                           writeln('Ixes de la jail');
                                           end
                             else writeln('Ixes de la jail');
                             end
     else writeln('La doc jail est… tancada');
     write('Tres llocs m‚s per triar, al (N)ord a "La Vella", al (S)ud a ');
     writeln('una clase plena de gent, o a l''(E)st per anar a un altra jail');
     selcas(pos);
     doc_jail:=1;
     estat:=1;
end;

procedure p_brindys(var estat,brindys,pos,vida,discos,cds,game_over:integer;var company2,nom:string);
var
   i,en_magia,en_vida:integer;
   en_nom:string;

begin
     color(4);
     clrscr;
     en_nom:='Brindys';
     writeln('Brindys'' Lair');
     color(14);
     for i:=1 to 6 do writeln;
     if brindys=0 then begin
                       writeln('De cam¡ a un altra jaula et trobes amb Brindys ');
                       color(12);write(en_nom);color(14);write(': Ah, por fin te pillo tu eras quien ');
                       write('nukeaba a la gente el aula, ahora me voy a la ');
                       write('BASE y te cancelar‚ la cuenta, ya ver s ya como ');
                       writeln('se te quitan las ganas de putear');
                       color(3);write(nom);color(14);writeln(': Per• que dius IMBÔCIL!!');
                       color(12);write(en_nom);color(14);write(': A partir de ahora yo tengo el poder, os ');
                       writeln('cancelar‚ la cuenta a todos');
                       write('Mentre Brindys s''allunya s''obri la porta de la ');
                       write('Jail2 i apareix ');color(9);writeln(company2);
                       write(company2);color(14);write(':Merda, JA M''HAN TORNAT A CANCELúLAR EL ');
                       writeln('COMPTE, EIXOS CABRONS');
                       color(12);write(en_nom);color(14);writeln(': A quien has llamado cabr¢n?');
                       write('Brindys li pega un •stia a ');color(9);writeln(company2);
                       color(14);write('HAS DE DEFENDRE A ');color(9);writeln(company2);
                       color(132);
                       writeln('COMEN€A EL COMBAT':42);
                       readln;
                       color(14);
                       colors;
                       en_vida:=130;
                       en_magia:=80;
                       combat(nom,en_nom,vida,discos,cds,en_vida,en_magia,game_over);
                       if game_over=0 then begin
                                      write('Brindys cau de genolls a terra de sobte apareix ');
                                      color(9);write(company2);color(14);writeln(' i li pega una patada i li arrenca el cap');
                                      color(9);write(company2);color(14);write(': Aix• per cancelúlar-me el compte, fill ');
                                      writeln('de puta');
                                      writeln('Un xaval s''apropa a t£...');
                                      write('Xaval: gracies per acabar amb ell, per• si Usufondo ');
                                      writeln('descobreix  el que  has fet voldr… matar-te. ');
                                      writeln('     Tin, a‡• per a t£. Adeu.');
                                      color(3);write(nom);color(14);
                                      write(' reb del xaval 15 disquitos, 3 CD''s i un bocadill ');
                                      writeln('de cham¢ i ques');
                                      writeln('PUNTS DE VIDA +150');
                                      discos:=discos+15;
                                      cds:=cds+3;
                                      vida:=vida+150;
                                      readln;
                                      if en_vida<0 then en_vida:=0;
                                      menu_comb(nom,en_nom,vida,discos,cds,en_vida,en_magia);
                                      readln;
                                      clrscr;
                                      brindys:=1;
                                      end;
                       end
     else begin
               write('El corredor est… ple de sang, tamb‚ hi ha dos xavals ');
               write('jugant a futbol amb el cap de Brindys, llevat d''aix• ');
               writeln('tot ‚s normal.');
     end;
     if game_over=0 then begin
     readln;
     clrscr;
     color(4);
     writeln('Brindys'' Lair');
     for i:=1 to 6 do writeln;
     color(14);
     write('El cam¡ es torna a dividir en quatre llocs on anar. Al ');
     write('(N)ord est… l''Agora, al  (S)ud un aula on s''est… donant ');
     writeln('classe, a l''(O)est la DOC JAIL i a l''(E)st la JAIL2');
     selcas(pos);
     end;
     estat:=1;
end;{p_brindys}

procedure p_jail2(var estat,jail_2,pos,discos:integer;var company1,nom:string);
var
   i:integer;

begin
     clrscr;
     color(5);
     writeln('JAIL 2');
     color(14);
     for i:=1 to 6 do writeln;
     if jail_2=0 then begin
                      write('La JAIL 2 est… plena per• ');color(9);write(company1);color(14);write(' est… en un ordinador ');
                      writeln('amb una caixa de disquitos');
                      color(3);write(nom);color(14);write(':Tens disquitos per deixar-me?, necessite tots els que ');
                      writeln('em pugues donar');
                      color(9);write(company1);color(14);writeln(':Ho sent molt, sols puc deixar-te''n 4');
                      discos:=discos+4;
                      color(3);write(nom);color(14);writeln(':M‚s val aix• que r‚s, gracies');
                      writeln('Has conseguit 4 discos m‚s');
                      color(3);write(nom);color(14);writeln(' ix de la JAIL2');
                      jail_2:=1;
                      end
     else writeln('A la JAIL2 est…n fent practiques i no pots entrar');
     write('Desde la JAIL2 pot  anar a quatre  llocs, anant al (N)ord vas a ');
     write(' un aula on  faspractiques, al (S)ud a reprografia, a l''(E)st ');
     writeln('a la JAIL1 i a l''(O)est a un altra jail');
     selcas(pos);
     estat:=1;
end;

procedure p_jail1(var estat,jail_1,pos,discos:integer);
var
   i:integer;

begin
     clrscr;
     color(6);
     writeln('JAIL 1');
     color(14);
     for i:=1 to 6 do writeln;
     if jail_1=0 then begin
                      write('Al obrir la porta de la jail veus que Usufondo est… en ');
                      writeln('la base i que en la finestra hi ha 3 disquitos');
                      writeln('Agafes els disquitos i quan estas eixint es sent ...');
                      writeln('Usufondo: Deja eso donde estaba');
                      write('Tu no li fas ni  cas i ixes  corrent per a que no t''agafe, ');
                      write('pensant que igual no est…s preparat per a lluitar ');
                      writeln('contra ell');
                      discos:=discos+3;
                      end
     else writeln('Es millor no entrar, Usufondo pot estar esperant-te');
     write('Tens 3 llocs on dirgir-te, al (N)ord veus un company teu, ');
     write('al (S)ud est… la teua aula on estan donant classe i a ');
     writeln('l''(O)est la JAIL2');
     selcas(pos);
     jail_1:=1;
     estat:=1;
end;

procedure p_lavella(var estat,la_vella,pos,vida,discos:integer;var nom:string);
var
   i:integer;
   eleccio:string;

begin
     clrscr;
     color(1);
     writeln('La Vella');
     color(14);
     for i:=1 to 6 do writeln;
     if la_vella=0 then begin
                        write('Entres a la cafeteria es hora de dinar i comences a ');
                        writeln('tindre gana');
                        readln;
                        menu;
                        writeln;
                        write('Elecci¢:');readln(eleccio);
                        clrscr;
                        color(1);
                        writeln('La Vella');
                        color(14);
                        for i:=1 to 6 do writeln;
                        if eleccio='1' then begin
                                            color(3);write(nom);color(14);writeln(' comen‡a a menjar');
                                            writeln('1§ plato : Paella');
                                            writeln(nom,':Mmmmm...');
                                            delay(3500);
                                            writeln('2§ plato : Pollo asado con patatas');
                                            color(3);write(nom);color(14);writeln(':No esta mal');
                                            delay(3500);
                                            writeln('Postres  : Fruta variada');
                                            color(3);write(nom);color(14);writeln(': ......');
                                            delay(3500);
                                            writeln('Despres de menjar et trobes millor');
                                            writeln;
                                            writeln('Punts de vida +100');
                                            vida:=vida+100;
                                            discos:=discos-5;
                                            end
                        else if eleccio='2' then begin
                                                 writeln;
                                                 color(3);write(nom);color(14);writeln(' comen‡a a menjar');
                                                 color(3);write(nom);color(14);writeln(':Entrepa de baicon, ou i cre‹lles!!');
                                                 delay(3000);
                                                 writeln('Despres de passar-li factura a l''entrepa');
                                                 writeln('et trobes millor');
                                                 writeln('Punts de vida +30');
                                                 vida:=vida+30;
                                                 discos:=discos-2;
                                                 end
                             else writeln('No tens ganes de menjar res?. Surts de la cafeteria');
                        la_vella:=1;
                        end
     else begin
          writeln('La vella ja es tancada');
          color(3);write(nom);color(14);writeln(':Que extrany. Segur que es cosa d''Usufondo!!');
          end;
     write('Pots anar des d''ac¡ a dos llocs, be al (S)ud a la ');
     writeln('DOC JAIL o a l''(E)st al Agora');
     selcas(pos);
     estat:=1;
end;

procedure p_agora(var estat,agora,pos,discos,cds:integer);
var
   i:integer;
   opcio:string;

begin
     clrscr;
     color(2);
     writeln('El Agora');
     color(14);
     for i:=1 to 6 do writeln;
     if agora=0 then begin
                     write('Arribes al agora despres de caminar una estona ');
                     writeln('i et dirigeixes a la papereria.');
                     write('Al entrar veus que no hi ha ning£ dins i veus una ');
                     writeln('caixa de 10 disquitos i 5 CD''s');
                     writeln('Que vas a fer?');
                     writeln;
                     writeln('1. Furtes la caixa de disquitos');
                     writeln;
                     writeln('2. Furtes els 5 CD''s');
                     writeln;
                     writeln('3. Ixes de la papereria');
                     writeln;
                     write('Opcio:');readln(opcio);
                     if opcio='1' then begin
                                       write('Agafes la caixa de disquitos i com que no hi ha ning£ ');
                                       writeln('agafes tamb‚ els CD''s ');
                                       discos:=discos+10;
                                       cds:=cds+5;
                                       end
                     else if opcio='2' then begin
                                            write('Agafes els 5 CD''s com que no veus a ning£, vols ');
                                            write('agafar la caixa de disquitos per• de sobte entra ');
                                            write('alg£ per la porta i et veu i has d''eixir corrent ');
                                            writeln('de la papereria sense poder agafar-los');
                                            cds:=cds+5;
                                            end
                     else writeln ('Ixes de la papereria per anar a un altre lloc');
                     agora:=1;
                     end
     else writeln('La papereria est… plena, no val la pena entrar');
     write('Nova decisi¢ a prendre, anar a La Vella per l''(O)est, a la ');
     writeln('jail cap al (S)ud, o a un aula on fas practiques a l''(E)st.');
     selcas(pos);
     estat:=1;
end;{p_Agora}

procedure p_practiques(var estat,practiques,pos:integer);
var
   i:integer;
   resposta:string;

begin
     clrscr;
     color(3);
     writeln('Practiques');
     color(14);
     for i:=1 to 6 do writeln;
     if practiques=0 then begin
                          write('Recordes que hui tens practiques i entres a classe, et ');
                          write('sentes davant d''un ordinador, hi ha una qesti¢ per a ');
                          writeln('respondre');
                          writeln;
                          writeln('Quina ‚s la representaci¢ en 8 bits en binari de hexadecimal FF?');
                          write('Resposta ->');readln(resposta);
                          if resposta='11111111' then begin
                                                 writeln('Era f…cil, eh?');
                                                 writeln('Si et val per a alguna cosa ac¡ tens el mapa de joc');
                                                 readln;
                                                 mapa;
                                                 end
                          else writeln('Has fallat?!!, non est posible');
                          readln;
                          clrscr;
                          color(3);
                          writeln('Practiques');
                          for i:=1 to 6 do writeln;
                          color(14);
                          writeln('Ja has acabat les practiques es millor que vages a un altre lloc');
                          end
     else writeln('No es el teu torn de practiques');
     write('Ser… aquesta l''ultima decisi¢ a prendre?. Al (S)ud fas cap a la JAIL2,');
     writeln('a l''(O)estvas al Agora i a l''(E)st veus a un company');
     selcas(pos);
     practiques:=1;
     estat:=1;
end;{p_practiques}

procedure p_usufondo(var estat,pos,vida,discos,cds,game_over,fin:integer;nom:string);
var
   i,en_magia,en_vida:integer;
   en_nom:string;

begin
     clrscr;
     color(5);
     writeln('Usufondo is here');
     color(14);
     en_nom:='Usufondo';
     for i:=1 to 6 do writeln;
     writeln(en_nom,': Por fin te encuentro, acabar‚ contigo rebelde');
     color(3);write(nom);color(14);writeln(': No podr…s, s¢c dels ''POWER JAILERS'' i t£ no, et matar‚');
     writeln;
     color(132);
     writeln('COMEN€A EL COMBAT':42);
     readln;
     colors;
     color(14);
     en_magia:=125;
     en_vida:=250;
     combat(nom,en_nom,vida,discos,cds,en_vida,en_magia,game_over);
     fin:=1;
end;

procedure textos(var escola,clase_2,clase_3,sp,clase_5,clase_6,reprografia,clase_8,doc_jail,brindys,jail_2,jail_1,la_vella,
                 agora,practiques,vida,cds,discos,pos,estat,fin,game_over:integer;nom,company1,company2,company3:string);
{crec q li he de passar tots els parametres de joc}
begin
     estat:=0;
     case pos of
      1:if estat=0 then p_escola(estat,escola,pos,nom);
      2:if estat=0 then p_clase2(estat,clase_2,pos,discos,company1,nom);
      3:if estat=0 then p_clase3(estat,clase_3,pos,nom);
      4:if estat=0 then p_sp(estat,sp,pos,discos,nom);
      5:if estat=0 then p_clase5(estat,clase_5,pos,vida,discos,cds,game_over,nom);
      6:if estat=0 then p_clase6(estat,clase_6,pos,discos,nom,company2);
      7:if estat=0 then p_reprografia(estat,reprografia,pos,vida,discos,cds,game_over,nom);
      8:if estat=0 then p_clase8(estat,clase_8,pos,discos,nom,company3);
      9:if estat=0 then p_docjail(estat,doc_jail,pos,cds,vida,nom);
      10:if estat=0 then p_brindys(estat,brindys,pos,vida,discos,cds,game_over,company2,nom);
      11:if estat=0 then p_jail2(estat,jail_2,pos,discos,company1,nom);
      12:if estat=0 then p_jail1(estat,jail_1,pos,discos);
      13:if estat=0 then p_lavella(estat,la_vella,pos,vida,discos,nom);
      14:if estat=0 then p_agora(estat,agora,pos,discos,cds);
      15:if estat=0 then p_practiques(estat,practiques,pos);
      16:if estat=0 then p_usufondo(estat,pos,vida,discos,cds,game_over,fin,nom);
     end;
end;

var
   company1,company2,company3,nom,login,en_nom:string;
   vida,discos,cds,en_vida,en_magia,game_over,estat,fin,ret:integer;
   pos,escola,clase_2,clase_3,sp,clase_5,clase_6:integer;
   reprografia,clase_8,doc_jail,brindys,jail_2,jail_1,la_vella,agora,practiques:integer;
   x:boolean;

begin
    {inicialitze les vbles escola,clase_2,clase_3,sp,clase_5,clase_6,reprografia,clase_8,
     doc_jail,brindys,jail_2,jail_1,la_vella,agora,practiques a 0 indicant q encara no ha estat}
    pos:=1;
    estat:=0;
    game_over:=0;
    fin:=0;
    escola:=0;
    clase_2:=0;
    clase_3:=0;
    sp:=0;
    clase_5:=0;
    clase_6:=0;
    reprografia:=0;
    clase_8:=0;
    doc_jail:=0;
    brindys:=0;
    jail_2:=0;
    jail_1:=0;
    la_vella:=0;
    agora:=0;
    practiques:=0;
    vida:=150;discos:=20;cds:=3;
    conta(ret);
    present(ret);
    advertencies;
    creacio_p(nom,company1,company2,company3);
    repeat
    textos(escola,clase_2,clase_3,sp,clase_5,clase_6,reprografia,clase_8,doc_jail,brindys,jail_2,jail_1,la_vella,
                 agora,practiques,vida,cds,discos,pos,estat,fin,game_over,nom,company1,company2,company3);
    until (game_over=1) or (fin=1);
    if game_over=1 then mort(ret);
    if (game_over=0) and (fin=1) then begin
                                           final(nom);
                                           credits(ret);
    end;
end.