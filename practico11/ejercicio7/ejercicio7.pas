program ejercicio7;

const
    MAX_PIRATAS = 32;
    MAX_ASALTOS = 100;
    MAX_DIGITOS_CI = 8; 
    MAX_STRING = 100;
    SEEK_MAX_DEPTH = 1000;
    STR_END_CHAR = '/';
    PIRATE_START_CHAR = '{';
    PIRATE_END_CHAR = '}';
    ASSAULT_START_CHAR = '[';
    ASSAULT_END_CHAR = ']';
    DATE_CHAR = '-';
type
    String = 
        record
            chars: array[1..MAX_STRING] of char;
            length : 0..MAX_STRING;
        end;
    Date = 
        record
            day: 1..31;
            month: 1..12;
            year: 0..maxint;
        end;
    Assault =
        record
            shipName : String;
            date : Date;
            bounty : integer;
        end;
    AssaultsArray = 
        record
            assaults : array[1..MAX_ASALTOS] of Assault;
            length : 0..MAX_ASALTOS;
        end;
    CauseOfDeath = (murder, sickness, accident);
    Pirate = 
        record
            name : String;
            id : String;
            case isAlive : boolean of
                true: (
                    assaultsArr : AssaultsArray;
                );
                false: (
                    causeOfDeath : causeOfDeath;
                    dateOfDeath : Date;
                );
        end;
    Gang =
        record
            pirates : array[1..MAX_PIRATAS] of Pirate;
            length : 0..MAX_PIRATAS;
        end;
    IdArray =
        record
            ids : array[1..MAX_PIRATAS] of String;
            length : 0..MAX_PIRATAS;
        end;

function stringCompare(s1, s2 : String) : boolean;
var
    i : integer;
begin
    i := 1;
    if(s1.length = s2.length) then
        while((i <= s1.length) and (s1.chars[i] = s2.chars[i])) do
            i := i + 1;
    
    stringCompare := (i > s1.length);
end;

procedure seekChar(c : char); // seeks char and consumes it from stdin
var
    d : char;
    i : integer;
begin
    i := 0;
    read(d);
    while((d <> c) and (i <= SEEK_MAX_DEPTH)) do
    begin
        read(d);
        i := i + 1;
    end;

    if(i >= SEEK_MAX_DEPTH) then
        writeLn('Seek max depth reached');
end;

procedure readString(var s : String; endChar : char); // reads string until endChar is reached
var                                                   // and consumes it
    c : char;
    i : integer;
begin
    read(c);
    i := 1;
    while((c <> endChar) and (i <= MAX_STRING)) do
    begin
        s.chars[i] := c;
        s.length := i;
        read(c);
        i := i + 1;
    end;
end;

procedure printString(s : String);
var 
    i : integer;
begin
    for i := 1 to s.length do
        write(s.chars[i]);
end;

procedure readDate(var d : Date);
begin
    read(d.day);
    seekChar(DATE_CHAR);
    read(d.month);
    seekChar(DATE_CHAR);
    read(d.year);
end;

procedure readAssault(var a : Assault);
begin
    seekChar(ASSAULT_START_CHAR);
    readString(a.shipName, STR_END_CHAR);
    readDate(a.date);
    seekChar(STR_END_CHAR);
    read(a.bounty);
    seekChar(ASSAULT_END_CHAR);
end;

procedure readPirate(var p : Pirate); // reads pirate info and jumps cursor to next line
var
    i, num : integer;
begin
    seekChar(PIRATE_START_CHAR);
    readString(p.name, STR_END_CHAR);
    readString(p.id, STR_END_CHAR);
    read(num);
    p.isAlive := boolean(num);
    seekChar(STR_END_CHAR);

    // read assaults
    if(p.isAlive) then
    begin
        read(num); // read number of assaults
        p.assaultsArr.length := num;
        for i := 1 to num do
        begin
            readAssault(p.assaultsArr.assaults[i]);
        end;
    end
    else
    begin
        read(num); // read cause of death
        p.causeOfDeath := CauseOfDeath(num);
        seekChar(STR_END_CHAR);
        readDate(p.dateOfDeath);
    end;        

    readLn();
end;

procedure printPirate(p : Pirate); // prints pirate info
begin
    write('Name: ');
    printString(p.name);
    writeLn();
    write('Id: ');
    printString(p.id);
    writeLn();
    writeLn('Is alive: ', p.isAlive:5);

    if(p.isAlive) then
    begin
        writeLn('Assaults performed: ', p.assaultsArr.length:0);    
    end
    else
    begin
        write('Cause of death: ');
        case p.causeOfDeath of
            murder: writeLn('murder');
            sickness: writeLn('sickness');
            accident: writeLn('accident');
        end;
    end;

end;

function getPirateIndex(id : String; g : Gang) : integer;
var
    i : integer;
begin
    i := 1;
    while((i <= g.length) and not (stringCompare(id, g.pirates[i].id))) do
        i := 1 + i;
    if(i <= g.length) then
        getPirateIndex := i
    else
        getPirateIndex := 0;
end;


function getBounty(id : String; year : integer; g : Gang) : integer;
var
    i, pIndex, bounty : integer;
begin
    bounty := 0;
    pIndex := getPirateIndex(id, g);
    if(pIndex > 0) then
        with g.pirates[pIndex] do
        begin
            for i := 1 to assaultsArr.length do
                if(assaultsArr.assaults[i].date.year = year) then
                    bounty := bounty + assaultsArr.assaults[i].bounty;
        end;
    getBounty := bounty;
end;

procedure readGang(var g : Gang);
var
    num, i : integer;
begin
    readLn(num);
    g.length := num;
    for i := 1 to num do
        readPirate(g.pirates[i]);
end;

procedure getWinners(g : Gang; year : integer; var winners : IdArray);
var
    maxBounty, i, currentBounty : integer;
begin
    maxBounty := 0;
    for i := 1 to g.length do
    begin
        if(g.pirates[i].isAlive) then
        begin
            currentBounty := getBounty(g.pirates[i].Id, year, g);

            if(currentBounty > maxBounty) then
            begin
                maxBounty := currentBounty;
                winners.length := 1;
                winners.ids[1] := g.pirates[i].id;
            end
            else if(currentBounty = maxBounty) then
            begin
                winners.length := winners.length + 1;
                winners.ids[winners.length] := g.pirates[i].id;
            end;
        end;        
    end;
end;

//main program
var 
    i : integer;
    winners : IdArray;
    p : Pirate;
    g : Gang;
begin
    readGang(g);
    getWinners(g, 1999, winners);
    for i := 1 to winners.length do
    begin
        printString(winners.ids[i]);
        writeLn();
    end;
end.






