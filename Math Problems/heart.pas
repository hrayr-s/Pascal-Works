program Srtik;
uses crt,graph;
var
        r,t: real;
        gd,gm,i,j,x,y,f: integer;

Begin
        gd:=detect;
        initgraph(gd,gm,'..\bin');
        i:=-450;
        j:=1;
	f:=1;
        while true do begin
		while i<450 do begin
                t:=i/100;
		x:=trunc((sin(t)-t*cos(t))*10)+J*100;
		y:=-1*trunc(2.5*(cos(t)+5*t*sin(t)))+f*100;
		setfillstyle(solidfill,12);
                bar(x,y,x+2,y+2);
                i:=i+1;
                delay(1);
                if keypressed then if readkey=#27 then halt;
		end;
                j:=j+1;
                if i>=450 then i:=-450;
                if j mod 10 = 0 then begin j:=1; f:=f+1; end;
        end;
End.