function u1 = algorithm(x1)
global Cube_Combine;
global sec;
u1 = x1;

if u1==0 %D' R' F' R = 1�ܰ� �⺻��1
    Rotation_function(4)
    pause(sec);
    Rotation_function(8)
    pause(sec);
    Rotation_function(10)
    pause(sec);
    Rotation_function(7)
    pause(sec);
end

if u1==1 %R D R' = 1�ܰ� ����� ������
    Rotation_function(7)
    pause(sec);
    Rotation_function(3)
    pause(sec);
    Rotation_function(8)
    pause(sec);
end

if u1==2 %L D' L' = 1�ܰ� ����� ����
    Rotation_function(5)
    pause(sec);
    Rotation_function(4)
    pause(sec);
    Rotation_function(6)
    pause(sec);
end

if u1==3 %D R D' R' = 2�ܰ� �⺻��1
    Rotation_function(3)
    pause(sec);
    Rotation_function(7)
    pause(sec);
    Rotation_function(4)
    pause(sec);
    Rotation_function(8)
    pause(sec);
end

if u1==4 %D' L D L' = 2�ܰ� �⺻��2
    Rotation_function(4)
    pause(sec);
    Rotation_function(5)
    pause(sec);
    Rotation_function(3)
    pause(sec);
    Rotation_function(6)
    pause(sec);
end

if u1==5 %R B D2 B' R' = 2�ܰ� ������
    Rotation_function(7)
    pause(sec);
    Rotation_function(11)
    pause(sec);
    Rotation_function(3)
    pause(sec);
    Rotation_function(3)
    pause(sec);
    Rotation_function(12)
    pause(sec);
    Rotation_function(8)
    pause(sec);
end

if u1==6 %R D R' = 2�ܰ� �߸� ������ ��
    Rotation_function(7)
    pause(sec);
    Rotation_function(3)
    pause(sec);
    Rotation_function(8)
    pause(sec);
end

if u1==7 %U R' U' R U' F' U F = 3�ܰ� ������
    Rotation_function(1)
    pause(sec);
    Rotation_function(8)
    pause(sec);
    Rotation_function(2)
    pause(sec);
    Rotation_function(7)
    pause(sec);
    Rotation_function(2)
    pause(sec);
    Rotation_function(10)
    pause(sec);
    Rotation_function(1)
    pause(sec);
    Rotation_function(9)
    pause(sec);
end

if u1==8 %U' L' U L U F U' F' = 3�ܰ� ����
    Rotation_function(2)
    pause(sec);
    Rotation_function(6)
    pause(sec);
    Rotation_function(1)
    pause(sec);
    Rotation_function(5)
    pause(sec);
    Rotation_function(1)
    pause(sec);
    Rotation_function(9)
    pause(sec);
    Rotation_function(2)
    pause(sec);
    Rotation_function(10)
    pause(sec);
end

if u1==9 %F R' U R U' F' =4�ܰ�
    Rotation_function(9)
    pause(sec);
    Rotation_function(8)
    pause(sec);
    Rotation_function(1)
    pause(sec);
    Rotation_function(7)
    pause(sec);
    Rotation_function(2)
    pause(sec);
    Rotation_function(10)
    pause(sec);
end

if u1==10 %L U L' U L U2 L' U =5�ܰ� �⺻��
    Rotation_function(5)
    pause(sec);
    Rotation_function(1)
    pause(sec);
    Rotation_function(6)
    pause(sec);
    Rotation_function(1)
    pause(sec);
    Rotation_function(5)
    pause(sec);
    Rotation_function(1)
    pause(sec);
    Rotation_function(1)
    pause(sec);
    Rotation_function(6)
    pause(sec);
    Rotation_function(1)
    pause(sec);
end

if u1==11 %L U L' U L U2 L' =5�ܰ� ������
    Rotation_function(5)
    pause(sec);
    Rotation_function(1)
    pause(sec);
    Rotation_function(6)
    pause(sec);
    Rotation_function(1)
    pause(sec);
    Rotation_function(5)
    pause(sec);
    Rotation_function(1)
    pause(sec);
    Rotation_function(1)
    pause(sec);
    Rotation_function(6)
    pause(sec);
end

if u1==12 %R F' L' F R' F' L F =6�ܰ�
    Rotation_function(7)
    pause(sec);
    Rotation_function(10)
    pause(sec);
    Rotation_function(6)
    pause(sec);
    Rotation_function(9)
    pause(sec);
    Rotation_function(8)
    pause(sec);
    Rotation_function(10)
    pause(sec);
    Rotation_function(5)
    pause(sec);
    Rotation_function(9)
    pause(sec);
end

if u1==13 %B' L' B' R'2 B L B' R'2 B'2 =7�ܰ�
    Rotation_function(12)
    pause(sec);
    Rotation_function(6)
    pause(sec);
    Rotation_function(12)
    pause(sec);
    Rotation_function(8)
    pause(sec);
    Rotation_function(8)
    pause(sec);
    Rotation_function(11)
    pause(sec);
    Rotation_function(5)
    pause(sec);
    Rotation_function(12)
    pause(sec);
    Rotation_function(8)
    pause(sec);
    Rotation_function(8)
    pause(sec);
    Rotation_function(12)
    pause(sec);
    Rotation_function(12)
    pause(sec);
end

end
   