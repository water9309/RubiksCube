function CubeShape   
global Cube_Combine;
global sec;
global Rnum;

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

sec = 0.2;
Rnum = 0;
    for i=0:1:2 
     X = [i;i+1;i+1;i];
     Y = [0;0;1;1];
     Z = [0;0;0;0];
    if i==0; Down3= patch(X,Y,Z,'y');Down3.UserData='y';
    elseif i==1; Down6= patch(X,Y,Z,'y');Down6.UserData='y';
    elseif i==2; Down9= patch(X,Y,Z,'y');Down9.UserData='y';
    end
    end
    view(3)

    
    for i=0:1:2
         X = [i;i+1;i+1;i];
         Y = [1;1;2;2];
         Z = [0;0;0;0];
    if i==0; Down2= patch(X,Y,Z,'y');Down2.UserData='y';
    elseif i==1; Down5= patch(X,Y,Z,'y');Down5.UserData='y';
    elseif i==2; Down8= patch(X,Y,Z,'y');Down8.UserData='y';
    end
    end
    view(3)
    
     for i=0:1:2
         X = [i;i+1;i+1;i];
         Y = [2;2;3;3];
         Z = [0;0;0;0];
    if i==0; Down1= patch(X,Y,Z,'y');Down1.UserData='y';
    elseif i==1; Down4= patch(X,Y,Z,'y');Down4.UserData='y';
    elseif i==2; Down7= patch(X,Y,Z,'y');Down7.UserData='y';
    end
     end
    
    view(3)
    for i=0:1:2
    X= [0;0;0;0];
    Y= [i;i;i+1;i+1];
    Z= [0;1;1;0];
     if i==0; Foward9= patch(X,Y,Z,'b');Foward9.UserData='b';
    elseif i==1; Foward8= patch(X,Y,Z,'b');Foward8.UserData='b';
    elseif i==2; Foward7= patch(X,Y,Z,'b');Foward7.UserData='b';
     end
    end
    view(3)
    
    for i=0:1:2
    X= [0;0;0;0];
    Y= [i;i;i+1;i+1];
    Z= [1;2;2;1];

    if i==0; Foward6= patch(X,Y,Z,'b');Foward6.UserData='b';
    elseif i==1; Foward5= patch(X,Y,Z,'b');Foward5.UserData='b';
    elseif i==2; Foward4= patch(X,Y,Z,'b');Foward4.UserData='b';
     end
    end
    view(3)
    
    for i=0:1:2
    X= [0;0;0;0];
    Y= [i;i;i+1;i+1];
    Z= [2;3;3;2];

    if i==0; Foward3= patch(X,Y,Z,'b');Foward3.UserData='b';
    elseif i==1; Foward2= patch(X,Y,Z,'b');Foward2.UserData='b';
    elseif i==2; Foward1= patch(X,Y,Z,'b');Foward1.UserData='b';
     end
    end
    view(3)
    
    for i=0:1:2
    X= [i;i+1;i+1;i];
    Y= [3;3;3;3];
    Z= [0;0;1;1];
     if i==0; Left9= patch(X,Y,Z,'r');Left9.UserData='r';
    elseif i==1; Left8= patch(X,Y,Z,'r');Left8.UserData='r';
    elseif i==2; Left7= patch(X,Y,Z,'r');Left7.UserData='r';
     end
    end
    view(3)
    
    for i=0:1:2
    X= [i;i+1;i+1;i];
    Y= [3;3;3;3];
    Z= [1;1;2;2];
     if i==0; Left6= patch(X,Y,Z,'r');Left6.UserData='r';
    elseif i==1; Left5= patch(X,Y,Z,'r');Left5.UserData='r';
    elseif i==2; Left4= patch(X,Y,Z,'r');Left4.UserData='r';
     end
    end
    view(3)
    
    for i=0:1:2
    X= [i;i+1;i+1;i];
    Y= [3;3;3;3];
    Z= [2;2;3;3];
     if i==0; Left3= patch(X,Y,Z,'r');Left3.UserData='r';
    elseif i==1; Left2= patch(X,Y,Z,'r');Left2.UserData='r';
    elseif i==2; Left1= patch(X,Y,Z,'r');Left1.UserData='r';
     end
    end
    view(3)
    
    for i=0:1:2
    X= [3;3;3;3];
    Y= [i;i;i+1;i+1];
    Z= [0;1;1;0];
    if i==0; Back7= patch(X,Y,Z,'g');Back7.UserData='g';
    elseif i==1; Back8= patch(X,Y,Z,'g');Back8.UserData='g';
    elseif i==2; Back9= patch(X,Y,Z,'g');Back9.UserData='g';
     end
    end
    view(3)
    
     for i=0:1:2
    X= [3;3;3;3];
    Y= [i;i;i+1;i+1];
    Z= [1;2;2;1];
    if i==0; Back4= patch(X,Y,Z,'g');Back4.UserData='g';
    elseif i==1; Back5= patch(X,Y,Z,'g');Back5.UserData='g';
    elseif i==2; Back6= patch(X,Y,Z,'g');Back6.UserData='g';
     end
    end
    view(3)
    
    for i=0:1:2
    X= [3;3;3;3];
    Y= [i;i;i+1;i+1];
    Z= [2;3;3;2];
    if i==0; Back1= patch(X,Y,Z,'g');Back1.UserData='g';
    elseif i==1; Back2= patch(X,Y,Z,'g');Back2.UserData='g';
    elseif i==2; Back3= patch(X,Y,Z,'g');Back3.UserData='g';
     end
    end
    view(3)
        
    for i=0:1:2
    X= [i;i;i+1;i+1];
    Y= [0;1;1;0];
    Z= [3;3;3;3];
    if i==0; Up9= patch(X,Y,Z,'w');Up9.UserData='w';
    elseif i==1; Up6= patch(X,Y,Z,'w');Up6.UserData='w';
    elseif i==2; Up3= patch(X,Y,Z,'w');Up3.UserData='w';
     end
    end
    view(3)
    
     for i=0:1:2
    X= [i;i;i+1;i+1];
    Y= [1;2;2;1];
    Z= [3;3;3;3];
    if i==0; Up8= patch(X,Y,Z,'w');Up8.UserData='w';
    elseif i==1; Up5= patch(X,Y,Z,'w');Up5.UserData='w';
    elseif i==2; Up2= patch(X,Y,Z,'w');Up2.UserData='w';
     end
    end
    view(3)
    
     for i=0:1:2
    X= [i;i;i+1;i+1];
    Y= [2;3;3;2];
    Z= [3;3;3;3];
    if i==0; Up7= patch(X,Y,Z,'w');Up7.UserData='w';
    elseif i==1; Up4= patch(X,Y,Z,'w');Up4.UserData='w';
    elseif i==2; Up1= patch(X,Y,Z,'w');Up1.UserData='w';
     end
    end
    view(3)
    
    for i=0:1:2
    X= [i;i+1;i+1;i];
    Y= [0;0;0;0];
    Z= [0;0;1;1];
    if i==0; Right7= patch(X,Y,Z,'m');Right7.UserData='m';
    elseif i==1; Right8= patch(X,Y,Z,'m');Right8.UserData='m';
    elseif i==2; Right9= patch(X,Y,Z,'m');Right9.UserData='m';
    end
    end
    view(3)
    
     for i=0:1:2
    X= [i;i+1;i+1;i];
    Y= [0;0;0;0];
    Z= [1;1;2;2];
    if i==0; Right4= patch(X,Y,Z,'m');Right4.UserData='m';
    elseif i==1; Right5= patch(X,Y,Z,'m');Right5.UserData='m';
    elseif i==2; Right6= patch(X,Y,Z,'m');Right6.UserData='m';
    end
    end
    view(3)
    
     for i=0:1:2
    X= [i;i+1;i+1;i];
    Y= [0;0;0;0];
    Z= [2;2;3;3];
    if i==0; Right1= patch(X,Y,Z,'m');Right1.UserData='m';
    elseif i==1; Right2= patch(X,Y,Z,'m');Right2.UserData='m';
    elseif i==2; Right3= patch(X,Y,Z,'m');Right3.UserData='m';
    end
    end
    view(3)
    axis('off')

%°¢ Ä­ Çà·ÄÈ­
C_Down=[Down1 Down2 Down3;...
          Down4 Down5 Down6;...
          Down7 Down8 Down9];
C_Up=[Up1 Up2 Up3;...
          Up4 Up5 Up6;...
          Up7 Up8 Up9];
C_Left=[Left1 Left2 Left3;...
       Left4 Left5 Left6;...
       Left7 Left8 Left9];
C_Foward=[Foward1 Foward2 Foward3;...
        Foward4 Foward5 Foward6;...
        Foward7 Foward8 Foward9];
C_Back=[Back1 Back2 Back3;...
         Back4 Back5 Back6;...
         Back7 Back8 Back9];
C_Right=[Right1 Right2 Right3;...
          Right4 Right5 Right6;...
          Right7 Right8 Right9];
Z=zeros(3);
Cube_Combine=[Z C_Up Z Z;...
              C_Left C_Foward C_Right C_Back ;...
              Z C_Down Z Z];
rotate3d on
end