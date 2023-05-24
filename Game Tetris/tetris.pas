uses crt,graph,sysutils;
var
        ej: array[1..20,1..30] of integer;
        gd,gm,i,j,k,a,x,y,figure,saj,sdzax,delete_row,koxm,score: integer;
        ch: char;
	poxel,sfgr,clear_row: boolean;


procedure nkarel();
var i,j: integer;
begin
        for i:=1 to 18 do
                for j:=1 to 25 do begin
                        if ej[i,j]=1 then begin
                                setfillstyle(Solidfill,5);
                                bar(i*20,j*20,i*20+15,j*20+15); end;
                end;
	setfillstyle(emptyfill,green);
	Rectangle(5,5,380,515);
end;


{
procedurefigura()
}
function qarakusi(x,y: integer) : boolean;
var x1,x2,x3,x4,y1,y2,y3,y4: integer;
begin
	x1:=x;
	x2:=x+1;
	x3:=x;
	x4:=x+1;
	y1:=y;
	y2:=y;
	y3:=y+1;
	y4:=y+1;
	setfillstyle(solidfill,0);
	case koxm of
		1: begin bar((x1-1)*20,y1*20,(x1-1)*20+15,y1*20+15);bar((x3-1)*20,y3*20,(x3-1)*20+15,y3*20+15); end;
		2: begin bar((x2+1)*20,y2*20,(x2+1)*20+15,y2*20+15);bar((x4+1)*20,y4*20,(x4+1)*20+15,y4*20+15); end;
		3: begin bar((x1)*20,(y1-1)*20,(x1)*20+15,(y1-1)*20+15);bar((x2)*20,(y2-1)*20,(x2)*20+15,(y2-1)*20+15); end;
	end;
	setfillstyle(solidfill,6);
        bar(x1*20,y1*20,x1*20+15,y1*20+15);
        bar(x2*20,y2*20,x2*20+15,y2*20+15);
        bar(x3*20,y3*20,x3*20+15,y3*20+15);
        bar(x4*20,y4*20,x4*20+15,y4*20+15);
	if (ej[x3,y3+1]=1) or (ej[x4,y4+1]=1) or (y=24) then begin
		ej[x1,y1]:=1;
		ej[x2,y2]:=1;
		ej[x3,y3]:=1;
		ej[x4,y4]:=1;
		qarakusi:=true;
	end
	else
		qarakusi:=false;
end;
function erankyun(x,y: integer) : boolean;
var x1,x2,x3,x4,y1,y2,y3,y4: integer;
begin
case k of
1: begin
	x1:=x-1;
	x2:=x;
	x3:=x;
	x4:=x+1;
	y1:=y;
	y2:=y;
	y3:=y-1;
	y4:=y;
	setfillstyle(solidfill,0);
	case koxm of
		1: begin bar((x1-1)*20,y1*20,(x1-1)*20+15,y1*20+15);bar((x3-1)*20,y3*20,(x3-1)*20+15,y3*20+15); end;
		2: begin bar((x3+1)*20,y3*20,(x3+1)*20+15,y3*20+15);bar((x4+1)*20,y4*20,(x4+1)*20+15,y4*20+15); end;
		3: begin bar((x1)*20,(y1-1)*20,(x1)*20+15,(y1-1)*20+15);bar((x3)*20,(y3-1)*20,(x3)*20+15,(y3-1)*20+15);bar((x4)*20,(y4-1)*20,(x4)*20+15,(y4-1)*20+15); end;
	end;
	if sfgr then bar((x)*20,(y+1)*20,(x)*20+15,(y+1)*20+15);
	setfillstyle(solidfill,6);
        bar(x1*20,y1*20,x1*20+15,y1*20+15);
        bar(x2*20,y2*20,x2*20+15,y2*20+15);
        bar(x3*20,y3*20,x3*20+15,y3*20+15);
        bar(x4*20,y4*20,x4*20+15,y4*20+15);
	if (ej[x2,y2+1]=1) or (ej[x4,y4+1]=1) or (ej[x1,y1+1]=1) or (y=25) then begin
		ej[x1,y1]:=1;
		ej[x2,y2]:=1;
		ej[x3,y3]:=1;
		ej[x4,y4]:=1;
		erankyun:=true;
	end
	else
		erankyun:=false;
end;
2: begin
	x1:=x;
	x2:=x;
	x3:=x;
	x4:=x+1;
	y1:=y+1;
	y2:=y;
	y3:=y-1;
	y4:=y;
	setfillstyle(solidfill,0);
	case koxm of
		1: begin bar((x1-1)*20,y1*20,(x1-1)*20+15,y1*20+15);bar((x2-1)*20,y2*20,(x2-1)*20+15,y2*20+15);bar((x3-1)*20,y3*20,(x3-1)*20+15,y3*20+15); end;
		2: begin bar((x3+1)*20,y3*20,(x3+1)*20+15,y3*20+15);bar((x4+1)*20,y4*20,(x4+1)*20+15,y4*20+15);bar((x1+1)*20,y1*20,(x1+1)*20+15,y1*20+15); end;
		3: begin bar((x4)*20,(y4-1)*20,(x4)*20+15,(y4-1)*20+15);bar((x3)*20,(y3-1)*20,(x3)*20+15,(y3-1)*20+15); end;
	end;
	if sfgr then bar((x-1)*20,(y)*20,(x-1)*20+15,(y)*20+15);
	setfillstyle(solidfill,6);
        bar(x1*20,y1*20,x1*20+15,y1*20+15);
        bar(x2*20,y2*20,x2*20+15,y2*20+15);
        bar(x3*20,y3*20,x3*20+15,y3*20+15);
        bar(x4*20,y4*20,x4*20+15,y4*20+15);
	if (ej[x2,y2+1]=1) or (ej[x4,y4+1]=1) or (ej[x1,y1+1]=1) or (y=24) then begin
		ej[x1,y1]:=1;
		ej[x2,y2]:=1;
		ej[x3,y3]:=1;
		ej[x4,y4]:=1;
		erankyun:=true;
	end
	else
		erankyun:=false;
end;
3: begin
	x1:=x;
	x2:=x;
	x3:=x-1;
	x4:=x+1;
	y1:=y+1;
	y2:=y;
	y3:=y;
	y4:=y;
	setfillstyle(solidfill,0);
	case koxm of
		1: begin bar((x1-1)*20,y1*20,(x1-1)*20+15,y1*20+15);bar((x3-1)*20,y3*20,(x3-1)*20+15,y3*20+15); end;
		2: begin bar((x4+1)*20,y4*20,(x4+1)*20+15,y4*20+15);bar((x1+1)*20,y1*20,(x1+1)*20+15,y1*20+15); end;
		3: begin bar((x4)*20,(y4-1)*20,(x4)*20+15,(y4-1)*20+15);bar((x3)*20,(y3-1)*20,(x3)*20+15,(y3-1)*20+15);bar((x2)*20,(y2-1)*20,(x2)*20+15,(y2-1)*20+15); end;
	end;
	if sfgr then bar((x)*20,(y-1)*20,(x)*20+15,(y-1)*20+15);
	setfillstyle(solidfill,6);
        bar(x1*20,y1*20,x1*20+15,y1*20+15);
        bar(x2*20,y2*20,x2*20+15,y2*20+15);
        bar(x3*20,y3*20,x3*20+15,y3*20+15);
        bar(x4*20,y4*20,x4*20+15,y4*20+15);
	if (ej[x1,y1+1]=1) or (ej[x2,y2+1]=1) or (ej[x3,y3+1]=1) or (ej[x4,y4+1]=1) or (y=24) then begin
		ej[x1,y1]:=1;
		ej[x2,y2]:=1;
		ej[x3,y3]:=1;
		ej[x4,y4]:=1;
		erankyun:=true;
	end
	else
		erankyun:=false;
end;
4: begin
	x1:=x;
	x2:=x;
	x3:=x-1;
	x4:=x;
	y1:=y+1;
	y2:=y;
	y3:=y;
	y4:=y-1;
	setfillstyle(solidfill,0);
	case koxm of
		1: begin bar((x1-1)*20,y1*20,(x1-1)*20+15,y1*20+15);bar((x3-1)*20,y3*20,(x3-1)*20+15,y3*20+15);bar((x4-1)*20,y4*20,(x4-1)*20+15,y4*20+15); end;
		2: begin bar((x4+1)*20,y4*20,(x4+1)*20+15,y4*20+15);bar((x1+1)*20,y1*20,(x1+1)*20+15,y1*20+15);bar((x2+1)*20,y2*20,(x2+1)*20+15,y2*20+15); end;
		3: begin bar((x4)*20,(y4-1)*20,(x4)*20+15,(y4-1)*20+15);bar((x3)*20,(y3-1)*20,(x3)*20+15,(y3-1)*20+15); end;
	end;
	if sfgr then bar((x+1)*20,(y)*20,(x+1)*20+15,(y)*20+15);
	setfillstyle(solidfill,6);
        bar(x1*20,y1*20,x1*20+15,y1*20+15);
        bar(x2*20,y2*20,x2*20+15,y2*20+15);
        bar(x3*20,y3*20,x3*20+15,y3*20+15);
        bar(x4*20,y4*20,x4*20+15,y4*20+15);
	if (ej[x1,y1+1]=1) or (ej[x2,y2+1]=1) or (ej[x3,y3+1]=1) or (ej[x4,y4+1]=1) or (y=24) then begin
		ej[x1,y1]:=1;
		ej[x2,y2]:=1;
		ej[x3,y3]:=1;
		ej[x4,y4]:=1;
		erankyun:=true;
	end
	else
		erankyun:=false;
end;
end;
end;








function kosch(x,y: Integer) : boolean;
var x1,x2,x3,x4,y1,y2,y3,y4: integer;
begin

case k of
	1: begin
		x1:=x;
		x2:=x+1;
		x3:=x;
		x4:=x;
		y1:=y;
		y2:=y;
		y3:=y-1;
		y4:=y-2;
	setfillstyle(solidfill,0);
	case koxm of
		1: begin bar((x1-1)*20,y1*20,(x1-1)*20+15,y1*20+15);bar((x3-1)*20,y3*20,(x3-1)*20+15,y3*20+15);bar((x4-1)*20,y4*20,(x4-1)*20+15,y4*20+15); end;
		2: begin bar((x4+1)*20,y4*20,(x4+1)*20+15,y4*20+15);bar((x3+1)*20,y3*20,(x3+1)*20+15,y3*20+15);bar((x2+1)*20,y2*20,(x2+1)*20+15,y2*20+15); end;
		3: begin bar((x4)*20,(y4-1)*20,(x4)*20+15,(y4-1)*20+15);bar((x2)*20,(y2-1)*20,(x2)*20+15,(y2-1)*20+15); end;
	end;
	if sfgr then begin bar((x+2)*20,(y-1)*20,(x+2)*20+15,(y-1)*20+15);bar((x+2)*20,(y)*20,(x+2)*20+15,(y)*20+15); end;
		setfillstyle(solidfill,6);
        	bar(x1*20,y1*20,x1*20+15,y1*20+15);
        	bar(x2*20,y2*20,x2*20+15,y2*20+15);
        	bar(x3*20,y3*20,x3*20+15,y3*20+15);
        	bar(x4*20,y4*20,x4*20+15,y4*20+15);
		if (ej[x1,y1+1]=1) or (ej[x2,y2+1]=1) or (y=25) then begin
			ej[x1,y1]:=1;
			ej[x2,y2]:=1;
			ej[x3,y3]:=1;
			ej[x4,y4]:=1;
			kosch:=true;
		end
		else
			kosch:=false;
	end;
	2:  begin
		x1:=x;
		x2:=x;
		x3:=x+1;
		x4:=x+2;
		y1:=y;
		y2:=y-1;
		y3:=y-1;
		y4:=y-1;
	setfillstyle(solidfill,0);
	case koxm of
		1: begin bar((x1-1)*20,y1*20,(x1-1)*20+15,y1*20+15);bar((x2-1)*20,y2*20,(x2-1)*20+15,y2*20+15); end;
		2: begin bar((x4+1)*20,y4*20,(x4+1)*20+15,y4*20+15);bar((x1+1)*20,y1*20,(x1+1)*20+15,y1*20+15); end;
		3: begin bar((x4)*20,(y4-1)*20,(x4)*20+15,(y4-1)*20+15);bar((x3)*20,(y3-1)*20,(x3)*20+15,(y3-1)*20+15);bar((x2)*20,(y2-1)*20,(x2)*20+15,(y2-1)*20+15); end;
	end;
	if sfgr then begin bar((x)*20,(y-2)*20,(x)*20+15,(y-2)*20+15);bar((x+1)*20,(y)*20,(x+1)*20+15,(y)*20+15); end;
		setfillstyle(solidfill,6);
        	bar(x1*20,y1*20,x1*20+15,y1*20+15);
        	bar(x2*20,y2*20,x2*20+15,y2*20+15);
        	bar(x3*20,y3*20,x3*20+15,y3*20+15);
        	bar(x4*20,y4*20,x4*20+15,y4*20+15);
		if (ej[x1,y1+1]=1) or (ej[x3,y3+1]=1) or (ej[x4,y4+1]=1) or (y=25) then begin
			ej[x1,y1]:=1;
			ej[x2,y2]:=1;
			ej[x3,y3]:=1;
			ej[x4,y4]:=1;
			kosch:=true;
		end
		else
			kosch:=false;
	end;
	3:  begin
		x1:=x;
		x2:=x+1;
		x3:=x+1;
		x4:=x+1;
		y1:=y;
		y2:=y;
		y3:=y+1;
		y4:=y+2;
	setfillstyle(solidfill,0);
	case koxm of
		1: begin bar((x1-1)*20,y1*20,(x1-1)*20+15,y1*20+15);bar((x3-1)*20,y3*20,(x3-1)*20+15,y3*20+15);bar((x4-1)*20,y4*20,(x4-1)*20+15,y4*20+15); end;
		2: begin bar((x4+1)*20,y4*20,(x4+1)*20+15,y4*20+15);bar((x3+1)*20,y3*20,(x3+1)*20+15,y3*20+15);bar((x2+1)*20,y2*20,(x2+1)*20+15,y2*20+15); end;
		3: begin bar((x1)*20,(y1-1)*20,(x1)*20+15,(y1-1)*20+15);bar((x2)*20,(y2-1)*20,(x2)*20+15,(y2-1)*20+15); end;
	end;
	if sfgr then begin bar((x+2)*20,(y-1)*20,(x+2)*20+15,(y-1)*20+15);bar((x+1)*20,(y)*20,(x+1)*20+15,(y)*20+15); bar((x)*20,(y)*20,(x)*20+15,(y)*20+15); end;
		setfillstyle(solidfill,6);
        	bar(x1*20,y1*20,x1*20+15,y1*20+15);
        	bar(x2*20,y2*20,x2*20+15,y2*20+15);
        	bar(x3*20,y3*20,x3*20+15,y3*20+15);
        	bar(x4*20,y4*20,x4*20+15,y4*20+15);
		if (ej[x1,y1+1]=1) or (ej[x4,y4+1]=1) or (y=23) then begin
			ej[x1,y1]:=1;
			ej[x2,y2]:=1;
			ej[x3,y3]:=1;
			ej[x4,y4]:=1;
			kosch:=true;
		end
		else
			kosch:=false;
	end;
	4:  begin
		x1:=x;
		x2:=x+1;
		x3:=x+2;
		x4:=x+2;
		y1:=y;
		y2:=y;
		y3:=y;
		y4:=y-1;
	setfillstyle(solidfill,0);
	case koxm of
		1: begin bar((x1-1)*20,y1*20,(x1-1)*20+15,y1*20+15);bar((x4-1)*20,y4*20,(x4-1)*20+15,y4*20+15); end;
		2: begin bar((x4+1)*20,y4*20,(x4+1)*20+15,y4*20+15);bar((x3+1)*20,y3*20,(x3+1)*20+15,y3*20+15); end;
		3: begin bar((x1)*20,(y1-1)*20,(x1)*20+15,(y1-1)*20+15);bar((x2)*20,(y2-1)*20,(x2)*20+15,(y2-1)*20+15);bar((x4)*20,(y4-1)*20,(x4)*20+15,(y4-1)*20+15); end;
	end;
	if sfgr then begin bar((x+1)*20,(y+2)*20,(x+1)*20+15,(y+2)*20+15);bar((x+1)*20,(y+1)*20,(x+1)*20+15,(y+1)*20+15); end;
		setfillstyle(solidfill,6);
        	bar(x1*20,y1*20,x1*20+15,y1*20+15);
        	bar(x2*20,y2*20,x2*20+15,y2*20+15);
        	bar(x3*20,y3*20,x3*20+15,y3*20+15);
        	bar(x4*20,y4*20,x4*20+15,y4*20+15);
		if (ej[x1,y1+1]=1) or (ej[x4,y4+1]=1) or (y=25) then begin
			ej[x1,y1]:=1;
			ej[x2,y2]:=1;
			ej[x3,y3]:=1;
			ej[x4,y4]:=1;
			kosch:=true;
		end
		else
			kosch:=false;
	end;
end;
end;










procedure verify_LR(x,y,figure:integer) ;
var x1,x2,x3,x4,y1,y2,y3,y4: integer;
begin
	case figure of
		0: begin
			sdzax:=1;
			saj:=17;
			x1:=x;
			x2:=x+1;
			x3:=x;
			x4:=x+1;
			y1:=y;
			y2:=y;
			y3:=y+1;
			y4:=y+1;
			if x1>1 then
			if (ej[x1-1,y1]=1) or (ej[x3-1,y3]=1) then sdzax:=x1+1;
			if (ej[x2+1,y2]=1) or (ej[x4+1,y4]=1) then saj:=x2-1;
		end;
		1: begin {Erankyun}
case k of
1: begin
	if x=1 then x:=2;
	sdzax:=2;
	saj:=17;
	x1:=x-1;
	x2:=x;
	x3:=x;
	x4:=x+1;
	y1:=y;
	y2:=y;
	y3:=y-1;
	y4:=y;
			if x1>1 then
	if ej[x1-1,y1]=1 then sdzax:=x1+1;
	if ej[x4+1,y4]=1 then saj:=x4-1;
end;
2: begin
	sdzax:=1;
	saj:=17;
	x1:=x;
	x2:=x;
	x3:=x;
	x4:=x+1;
	y1:=y+1;
	y2:=y;
	y3:=y-1;
	y4:=y;
			if x1>1 then
	if (ej[x1-1,y1]=1) or (ej[x2-1,y2]=1) or (ej[x3-1,y3]=1) then sdzax:=x1+1;
	if ej[x4+1,y4]=1 then saj:=x4-1;
end;
3: begin
	if x=1 then x:=2;
	sdzax:=2;
	saj:=17;
	x1:=x;
	x2:=x;
	x3:=x-1;
	x4:=x+1;
	y1:=y+1;
	y2:=y;
	y3:=y;
	y4:=y;
			if x3>1 then
	if ej[x3-1,y3]=1 then sdzax:=x3+1;
	if ej[x4+1,y4]=1 then saj:=x4-1;
end;
4: begin
	if x=1 then x:=2;
	sdzax:=2;
	saj:=18;
	x1:=x;
	x2:=x;
	x3:=x-1;
	x4:=x;
	y1:=y+1;
	y2:=y;
	y3:=y;
	y4:=y-1;
			if x3>1 then
	if ej[x3-1,y3]=1 then sdzax:=x3+1;
	if (ej[x1+1,y1]=1) or (ej[x2+1,y2]=1) or (ej[x4+1,y4]=1) then saj:=x1-1;
end;
	end;
end;
	2: begin {Kosh}
		case k of
	1: begin
		sdzax:=1;
		saj:=17;
		x1:=x;
		x2:=x+1;
		x3:=x;
		x4:=x;
		y1:=y;
		y2:=y;
		y3:=y-1;
		y4:=y-2;
		if (x1>1) and (y4>1) then
			if (ej[x1-1,y1]=1) or (ej[x3-1,y3]=1) or (ej[x4-1,y4]=1) then sdzax:=x1+1;
		if ej[x2+1,y2]=1 then saj:=x2-1;
	end;
	2:  begin
		sdzax:=1;
		saj:=16;
		x1:=x;
		x2:=x;
		x3:=x+1;
		x4:=x+2;
		y1:=y;
		y2:=y-1;
		y3:=y-1;
		y4:=y-1;
			if x1>1 then
		if (ej[x1-1,y1]=1) or (ej[x2-1,y2]=1) then sdzax:=x2+1;
		if ej[x4+1,y4]=1 then saj:=x4-2;
	end;
	3:  begin
		sdzax:=1;
		saj:=17;
		x1:=x;
		x2:=x+1;
		x3:=x+1;
		x4:=x+1;
		y1:=y;
		y2:=y;
		y3:=y+1;
		y4:=y+2;
			if x1>1 then
		if ej[x1-1,y1]=1 then sdzax:=x1+1;
		if(ej[x2+1,y2]=1) or (ej[x3+1,y3]=1) or (ej[x4+1,y4]=1) then saj:=x4-1;
	end;
	4:  begin
		sdzax:=1;
		saj:=16;
		x1:=x;
		x2:=x+1;
		x3:=x+2;
		x4:=x+2;
		y1:=y;
		y2:=y;
		y3:=y;
		y4:=y-1;
			if x1>1 then
		if ej[x1-1,y1]=1 then sdzax:=x1+1;
		if (ej[x3+1,y3]=1) or (ej[x4+1,y4]=1) then sdzax:=x4-2;
	end;
	end;
	end;
end;

end;
procedure spusk();
begin
	case figure of
        	0: begin poxel:=qarakusi(x,y); end;
		1: begin poxel:=erankyun(x,y); end;
		2: begin poxel:=kosch(x,y); end;
        end;

end;
procedure onkeypressfin();
begin
	if keypressed then begin
		ch:=readkey;
	verify_LR(x,y,figure);
		if ch=#77 then if x<saj then begin x:=x+1; koxm:=1; end;
		if ch=#75 then if x>sdzax then begin x:=x-1; koxm:=2; end;
		if ch=#27 then halt;
		if ch=#72 then begin
			if k<4 then k:=k+1 else k:=1;
			sfgr:=true;
		end;
		if (ch=#80) and (y<25) then y:=y+1;
		spusk();
		sfgr:=false;
	end;
end;
function verify_rows() : boolean;
var ii,jj,kk: integer;
begin
	if clear_row=false then
	for jj:=1 to delete_row-1 do
		for ii:=1 to 18 do begin
			ej[ii,delete_row-jj+1]:=ej[ii,delete_row-jj];
		end;
	for ii:=1 to 25 do begin
		kk:=0;
		for jj:=1 to 18 do
			if ej[jj,ii]=1 then kk:=kk+1;
		if kk=18 then begin verify_rows:=false; delete_row:=ii; break; end else verify_rows:=true;
	end;
end;
procedure delete_rows();
var iii: integer;
begin
	for iii:=1 to 18 do begin
		setfillstyle(solidfill,0);
		ej[iii,delete_row]:=0;
		bar(iii*20,delete_row*20,iii*20+15,delete_row*20+15);
		delay(50);
	end;
                        	setfillstyle(solidfill,0);
                        	bar(0,0,1000,1000);
	score:=score+1;
end;
Begin
        a:=0;
	k:=0;
	score:=0;
	randomize;
        gd:=detect;
        initgraph(gd,gm,'..\bgi');
	saj:=17; sdzax:=1;
        while true do begin
		figure:=random(3);
                x:=12;
                y:=1;
		k:=1;
		verify_LR(x,y,figure);
		setfillstyle(solidfill,0);
		bar(0,0,1000,1000);
                nkarel();
                while y<25 do begin
		verify_LR(x,y,figure);
			if (a<100) and (poxel=false) then begin
				a:=a+1;
				verify_LR(x,y,figure);
				onkeypressfin();
				if ej[x,y+1]=1 then break;
				delay(1);
			end
			else
			begin
				poxel:=false;
				koxm:=3;
				y:=y+1;
				a:=0;
                        	nkarel();
                        	spusk();
			end;
				settextstyle (1,0,4);
				outtextxy(590,100,inttostr(score));
				if poxel then break;
                end;
		repeat clear_row:=verify_rows(); if clear_row=false then Begin delete_rows(); nkarel(); end;  until clear_row;
        end;
End.
