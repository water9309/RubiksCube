function step6
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


while(Up5.UserData~=Up1.UserData)||(Up5.UserData~=Up3.UserData)||(Up5.UserData~=Up7.UserData)||(Up5.UserData~=Up9.UserData)
    
if(Up5.UserData==Foward3.UserData)&&(Up5.UserData==Back1.UserData)&&(Up5.UserData==Left3.UserData)&&(Up5.UserData==Left1.UserData)
    algorithm(12)
    
elseif(Up5.UserData==Foward3.UserData)&&(Up5.UserData==Foward1.UserData)&&(Up5.UserData==Back3.UserData)&&(Up5.UserData==Back1.UserData)
    algorithm(12)

elseif(Up5.UserData==Up3.UserData)&&(Up5.UserData==Up9.UserData)&&(Up5.UserData==Left3.UserData)&&(Up5.UserData==Left1.UserData)
    algorithm(12)

elseif(Up5.UserData==Foward3.UserData)&&(Up5.UserData==Back1.UserData)&&(Up5.UserData==Up1.UserData)&&(Up5.UserData==Up7.UserData)
    algorithm(12)

elseif(Up5.UserData==Foward1.UserData)&&(Up5.UserData==Right1.UserData)&&(Up5.UserData==Back1.UserData)&&(Up5.UserData==Up1.UserData)
    algorithm(12)
    
elseif(Up5.UserData==Right3.UserData)&&(Up5.UserData==Back3.UserData)&&(Up5.UserData==Left3.UserData)&&(Up5.UserData==Up9.UserData)
    algorithm(12)
    
elseif(Up5.UserData==Up1.UserData)&&(Up5.UserData==Up9.UserData)&&(Up5.UserData==Back1.UserData)&&(Up5.UserData==Left3.UserData)
    algorithm(12)

else
    Rotation_function(18)
    pause(sec);
end
end


end