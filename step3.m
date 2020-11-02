function step3
global sec;

global Foward1; global Foward2; global Foward3;
global Foward4; global Foward5; global Foward6;
global Foward7; global Foward8; global Foward9;

global Up1; global Up2; global Up3;
global Up4; global Up5; global Up6;
global Up7; global Up8; global Up9;

global Down1; global Down2; global Down3;
global Down4; global Down5; global Down6;
global Down7; global Down8; global Down9;

global Left1; global Left2; global Left3;
global Left4; global Left5; global Left6;
global Left7; global Left8; global Left9;

global Right1; global Right2; global Right3;
global Right4; global Right5; global Right6;
global Right7; global Right8; global Right9;

global Back1; global Back2; global Back3;
global Back4; global Back5; global Back6;
global Back7; global Back8; global Back9;

Rotation_function(9)
Rotation_function(11)
Rotation_function(19)
pause(0.5);
Rotation_function(9)
Rotation_function(11)
Rotation_function(19)
pause(0.5);

while(Foward5.UserData ~= Foward4.UserData)...
   ||(Foward5.UserData ~= Foward6.UserData)...
   ||(Back5.UserData ~= Back4.UserData)...
   ||(Back5.UserData ~= Back6.UserData)...
   ||(Right5.UserData ~= Right4.UserData)...
   ||(Right5.UserData ~= Right6.UserData)...
   ||(Left5.UserData ~= Left4.UserData)...
   ||(Left5.UserData ~= Left6.UserData)

if((Up5.UserData==Up8.UserData)||(Up5.UserData==Foward2.UserData))...
&&((Up5.UserData==Up6.UserData)||(Up5.UserData==Right2.UserData))...
&&((Up5.UserData==Up2.UserData)||(Up5.UserData==Back2.UserData))...
&&((Up5.UserData==Up4.UserData)||(Up5.UserData==Left2.UserData))
   if(Foward5.UserData~=Foward6.UserData)
       algorithm(7)
   end
else

if(Up5.UserData == Foward2.UserData)
    Rotation_function(17)
    pause(sec);
    
elseif(Up5.UserData ~= Foward2.UserData) %윗면 중앙과 일치성 확인
 if(Foward5.UserData ~= Foward2.UserData)
     if(Foward5.UserData==Right4.UserData)&&(Right5.UserData==Foward6.UserData)
         algorithm(7)
     else
    Rotation_function(15)
    pause(sec);
     end
    
 elseif(Foward5.UserData == Foward2.UserData) %1자 일치
    if(Up5.UserData == Up8.UserData)
        Rotation_function(17)
        pause(sec);
         
    elseif(Up8.UserData == Right5.UserData) %오른쪽으로 넣기
        algorithm(7)
        if(Foward5.UserData ~= Foward6.UserData)
            algorithm(7)
        end
        
    elseif(Up8.UserData == Left5.UserData) %왼쪽으로 넣기
        algorithm(8)
        if(Foward5.UserData ~= Foward4.UserData)
            Rotation_function(16)
            pause(sec);
            algorithm(7)
        end
    else
        Rotation_function(17)
        pause(sec);
    end
end

end
end
end




















