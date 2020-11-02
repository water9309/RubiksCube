function step1
global sec;
%윗면 십자 맞추는 알고리즘

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

while (Up5.UserData ~= Up2.UserData)...
    ||(Up5.UserData ~= Up4.UserData)...
    ||(Up5.UserData ~= Up6.UserData)...
    ||(Up5.UserData ~= Up8.UserData)

if(Up5.UserData == Foward8.UserData) %1단계 아래줄 확인1
    if(Foward5.UserData == Down2.UserData)
        algorithm(0)
    else
        Rotation_function(13)
        pause(sec);
    end

elseif(Up5.UserData == Down2.UserData) %1단계 아래줄 확인2
    if(Foward5.UserData == Foward8.UserData)
        Rotation_function(10)
        pause(sec);
        Rotation_function(10)
        pause(sec);
       
    else
        Rotation_function(13)
        pause(sec);
    end
    

elseif(Up5.UserData == Up8.UserData)||(Up5.UserData == Foward2.UserData) %1단계 윗줄 확인
    if(Foward2.UserData == Foward5.UserData)
        if(Up5.UserData == Left6.UserData)||(Up5.UserData == Foward4.UserData)
        algorithm(2)
        elseif(Up5.UserData == Right4.UserData)||(Up5.UserData == Foward6.UserData)
        algorithm(1)
        elseif(Up5.UserData == Down2.UserData)||(Up5.UserData == Foward8.UserData)
            while(Down2.UserData ~= Foward5.UserData)||(Foward8.UserData ~= Foward5.UserData)
            Rotation_function(13)
            pause(sec);
            end
        else
        Rotation_function(17)
        pause(sec);
        end
    else
    Rotation_function(10)
    pause(sec);
    Rotation_function(10)
    pause(sec);
    end

elseif(Up5.UserData == Right4.UserData)||(Up5.UserData == Foward6.UserData) %1단계 가운데 오른쪽 확인
    algorithm(1)

elseif(Up5.UserData == Left6.UserData)||(Up5.UserData == Foward4.UserData) %1단계 가운데 왼쪽 확인
    algorithm(2)
    
else
    Rotation_function(17)

end
end
end
         