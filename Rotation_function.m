function u1 = Rotation_function(x1)
%�� 1= �� �ð����
%�� 2= �� �ݽð����
%�� 3= �Ʒ� �ð����
%�� 4= �Ʒ� �ݽð����
%�� 5= ���� �ð����
%�� 6= ���� �ݽð����
%�� 7= ������ �ð����
%�� 8= ������ �ݽð����
%�� 9= �� �ð����
%�� 10= �� �ݽð����
%�� 11= �� �ð����
%�� 12= �� �ݽð����
%�� 13= ��+��� �ð����
%�� 14= ��+��� �ݽð����
%�� 15= �Ʒ�+��� �ð����
%�� 16= �Ʒ�+��� �ݽð����
%�� 17= ��+���+�Ʒ� �ð����
%�� 18= ��+���+�Ʒ� �ݽð����
%�� 19= ��� �ð����

u1=x1;
global Cube_Combine;
global Rnum;

Rnum = Rnum+1;

    %��  �ð�
    if u1==1
       U_first1 = [Cube_Combine(4,1).UserData Cube_Combine(4,2).UserData Cube_Combine(4,3).UserData];
       U_first2 = [Cube_Combine(1,6).UserData Cube_Combine(1,5).UserData Cube_Combine(1,4).UserData];
        for i= 1:3
        Cube_Combine(4,i).UserData = Cube_Combine(4,i+3).UserData;
        Cube_Combine(4,i+3).UserData = Cube_Combine(4,i+6).UserData;
        Cube_Combine(4,i+6).UserData = Cube_Combine(4,i+9).UserData;
        Cube_Combine(4,i+9).UserData = U_first1(i);
        end
        Cube_Combine(1,6).UserData = Cube_Combine(1,4).UserData;
        Cube_Combine(1,5).UserData = Cube_Combine(2,4).UserData;
        Cube_Combine(1,4).UserData = Cube_Combine(3,4).UserData;
        Cube_Combine(1,4).UserData = Cube_Combine(3,4).UserData;
        Cube_Combine(2,4).UserData = Cube_Combine(3,5).UserData;
        Cube_Combine(3,4).UserData = Cube_Combine(3,6).UserData;
        Cube_Combine(3,4).UserData = Cube_Combine(3,6).UserData;
        Cube_Combine(3,5).UserData = Cube_Combine(2,6).UserData;
        Cube_Combine(3,6).UserData = Cube_Combine(1,6).UserData;
        Cube_Combine(3,6).UserData = U_first2(1);
        Cube_Combine(2,6).UserData = U_first2(2);
        Cube_Combine(1,6).UserData = U_first2(3);
        for i=1:12
        Cube_Combine(4,i).FaceColor=Cube_Combine(4,i).UserData;
        end
        for i=4:6
        Cube_Combine(1,i).FaceColor=Cube_Combine(1,i).UserData;
        Cube_Combine(2,i).FaceColor=Cube_Combine(2,i).UserData;
        Cube_Combine(3,i).FaceColor=Cube_Combine(3,i).UserData;
        end
    end
    
    %�� �ݽð�
    if u1==2
       U_first1 = [Cube_Combine(4,10).UserData Cube_Combine(4,11).UserData Cube_Combine(4,12).UserData];
       U_first2 = [Cube_Combine(1,4).UserData Cube_Combine(1,5).UserData Cube_Combine(1,6).UserData];
    for i= 1:3
        Cube_Combine(4,i+9).UserData = Cube_Combine(4,i+6).UserData;
        Cube_Combine(4,i+6).UserData = Cube_Combine(4,i+3).UserData;
        Cube_Combine(4,i+3).UserData = Cube_Combine(4,i).UserData;
        Cube_Combine(4, i).UserData = U_first1(i);
    end
    Cube_Combine(1,4).UserData = Cube_Combine(1,6).UserData;
    Cube_Combine(1,5).UserData = Cube_Combine(2,6).UserData;
    Cube_Combine(1,6).UserData = Cube_Combine(3,6).UserData;
    Cube_Combine(1,6).UserData = Cube_Combine(3,6).UserData;
    Cube_Combine(2,6).UserData = Cube_Combine(3,5).UserData;
    Cube_Combine(3,6).UserData = Cube_Combine(3,4).UserData;
    Cube_Combine(3,6).UserData = Cube_Combine(3,4).UserData;
    Cube_Combine(3,5).UserData = Cube_Combine(2,4).UserData;
    Cube_Combine(3,4).UserData = Cube_Combine(1,4).UserData;
    Cube_Combine(3,4).UserData = U_first2(1);
    Cube_Combine(2,4).UserData = U_first2(2);
    Cube_Combine(1,4).UserData = U_first2(3);
    for i=1:12
    Cube_Combine(4,i).FaceColor=Cube_Combine(4,i).UserData;
    end
    for i=4:6
    Cube_Combine(1,i).FaceColor=Cube_Combine(1,i).UserData;
    Cube_Combine(2,i).FaceColor=Cube_Combine(2,i).UserData;
    Cube_Combine(3,i).FaceColor=Cube_Combine(3,i).UserData;
    end
    end
    
    %�Ʒ� �ð�
    if u1==3
    D_first1 = [Cube_Combine(6,1).UserData Cube_Combine(6,2).UserData Cube_Combine(6,3).UserData];
    D_first2 = [Cube_Combine(7,4).UserData Cube_Combine(7,5).UserData Cube_Combine(7,6).UserData];
    for i= 1:3
        Cube_Combine(6,i).UserData = Cube_Combine(6,i+3).UserData;
        Cube_Combine(6,i+3).UserData = Cube_Combine(6,i+6).UserData;
        Cube_Combine(6,i+6).UserData = Cube_Combine(6,i+9).UserData;
        Cube_Combine(6,i+9).UserData = D_first1(i);
    end
    Cube_Combine(7,4).UserData = Cube_Combine(7,6).UserData;
    Cube_Combine(7,5).UserData = Cube_Combine(8,6).UserData;
    Cube_Combine(7,6).UserData = Cube_Combine(9,6).UserData;
    Cube_Combine(7,6).UserData = Cube_Combine(9,6).UserData;
    Cube_Combine(8,6).UserData = Cube_Combine(9,5).UserData;
    Cube_Combine(9,6).UserData = Cube_Combine(9,4).UserData;
    Cube_Combine(9,6).UserData = Cube_Combine(9,4).UserData;
    Cube_Combine(9,5).UserData = Cube_Combine(8,4).UserData;
    Cube_Combine(9,4).UserData = Cube_Combine(7,4).UserData;
    Cube_Combine(9,4).UserData = D_first2(1);
    Cube_Combine(8,4).UserData = D_first2(2);
    Cube_Combine(7,4).UserData = D_first2(3); 
    for i=1:12
    Cube_Combine(6,i).FaceColor=Cube_Combine(6,i).UserData;
    end
    for i=4:6
    Cube_Combine(7,i).FaceColor=Cube_Combine(7,i).UserData;
    Cube_Combine(8,i).FaceColor=Cube_Combine(8,i).UserData;
    Cube_Combine(9,i).FaceColor=Cube_Combine(9,i).UserData;
    end
    end
    
    %�Ʒ� �ݽð�
    if u1==4
    D_first1 = [Cube_Combine(6,10).UserData Cube_Combine(6,11).UserData Cube_Combine(6,12).UserData];
    D_first2 = [Cube_Combine(7,6).UserData Cube_Combine(7,5).UserData Cube_Combine(7,4).UserData];
    for i= 1:3
        Cube_Combine(6,i+9).UserData = Cube_Combine(6,i+6).UserData;
        Cube_Combine(6,i+6).UserData = Cube_Combine(6,i+3).UserData;
        Cube_Combine(6,i+3).UserData = Cube_Combine(6,i).UserData;
        Cube_Combine(6, i).UserData = D_first1(i);
    end
    Cube_Combine(7,6).UserData = Cube_Combine(7,4).UserData;
    Cube_Combine(7,5).UserData = Cube_Combine(8,4).UserData;
    Cube_Combine(7,4).UserData = Cube_Combine(9,4).UserData;
    Cube_Combine(7,4).UserData = Cube_Combine(9,4).UserData;
    Cube_Combine(8,4).UserData = Cube_Combine(9,5).UserData;
    Cube_Combine(9,4).UserData = Cube_Combine(9,6).UserData;
    Cube_Combine(9,4).UserData = Cube_Combine(9,6).UserData;
    Cube_Combine(9,5).UserData = Cube_Combine(8,6).UserData;
    Cube_Combine(9,6).UserData = Cube_Combine(7,6).UserData;
    Cube_Combine(9,6).UserData = D_first2(1);
    Cube_Combine(8,6).UserData = D_first2(2);
    Cube_Combine(7,6).UserData = D_first2(3);
    for i=1:12
    Cube_Combine(6,i).FaceColor=Cube_Combine(6,i).UserData;
    end
    for i=4:6
    Cube_Combine(7,i).FaceColor=Cube_Combine(7,i).UserData;
    Cube_Combine(8,i).FaceColor=Cube_Combine(8,i).UserData;
    Cube_Combine(9,i).FaceColor=Cube_Combine(9,i).UserData;
    end
    end
    
    %�� �ð�
    if u1==5
    L_first1 = [Cube_Combine(4,4).UserData Cube_Combine(5,4).UserData Cube_Combine(6,4).UserData];
    L_first2 = [Cube_Combine(4,3).UserData Cube_Combine(4,2).UserData Cube_Combine(4,1).UserData];

    Cube_Combine(4,4).UserData = Cube_Combine(1,4).UserData;
    Cube_Combine(5,4).UserData = Cube_Combine(2,4).UserData;
    Cube_Combine(6,4).UserData = Cube_Combine(3,4).UserData;
    Cube_Combine(1,4).UserData = Cube_Combine(6,12).UserData;
    Cube_Combine(2,4).UserData = Cube_Combine(5,12).UserData;
    Cube_Combine(3,4).UserData = Cube_Combine(4,12).UserData;
    Cube_Combine(6,12).UserData = Cube_Combine(7,4).UserData;
    Cube_Combine(5,12).UserData = Cube_Combine(8,4).UserData;
    Cube_Combine(4,12).UserData = Cube_Combine(9,4).UserData;
    Cube_Combine(7,4).UserData = L_first1(1);
    Cube_Combine(8,4).UserData = L_first1(2);
    Cube_Combine(9,4).UserData = L_first1(3);

    Cube_Combine(4,3).UserData = Cube_Combine(4,1).UserData;
    Cube_Combine(4,2).UserData = Cube_Combine(5,1).UserData;
    Cube_Combine(4,1).UserData = Cube_Combine(6,1).UserData;
    Cube_Combine(4,1).UserData = Cube_Combine(6,1).UserData;
    Cube_Combine(5,1).UserData = Cube_Combine(6,2).UserData;
    Cube_Combine(6,1).UserData = Cube_Combine(6,3).UserData;
    Cube_Combine(6,1).UserData = Cube_Combine(6,3).UserData;
    Cube_Combine(6,2).UserData = Cube_Combine(5,3).UserData;
    Cube_Combine(6,3).UserData = Cube_Combine(4,3).UserData;
    Cube_Combine(6,3).UserData = L_first2(1);
    Cube_Combine(5,3).UserData = L_first2(2);
    Cube_Combine(4,3).UserData = L_first2(3);
    for i=1:9
    Cube_Combine(i,4).FaceColor=Cube_Combine(i,4).UserData;
    end
    for i=4:6
    Cube_Combine(i,12).FaceColor=Cube_Combine(i,12).UserData;
    Cube_Combine(i,1).FaceColor=Cube_Combine(i,1).UserData;
    Cube_Combine(i,2).FaceColor=Cube_Combine(i,2).UserData;
    Cube_Combine(i,3).FaceColor=Cube_Combine(i,3).UserData;
    end
    end
    
    %�� �ݽð�
    if u1==6
    L_first1 = [Cube_Combine(4,4).UserData Cube_Combine(5,4).UserData Cube_Combine(6,4).UserData];
    L_first2 = [Cube_Combine(4,1).UserData Cube_Combine(4,2).UserData Cube_Combine(4,3).UserData];

    Cube_Combine(4,4).UserData = Cube_Combine(7,4).UserData;
    Cube_Combine(5,4).UserData = Cube_Combine(8,4).UserData;
    Cube_Combine(6,4).UserData = Cube_Combine(9,4).UserData;
    Cube_Combine(7,4).UserData = Cube_Combine(6,12).UserData;
    Cube_Combine(8,4).UserData = Cube_Combine(5,12).UserData;
    Cube_Combine(9,4).UserData = Cube_Combine(4,12).UserData;
    Cube_Combine(6,12).UserData = Cube_Combine(1,4).UserData;
    Cube_Combine(5,12).UserData = Cube_Combine(2,4).UserData;
    Cube_Combine(4,12).UserData = Cube_Combine(3,4).UserData;
    Cube_Combine(1,4).UserData = L_first1(1);
    Cube_Combine(2,4).UserData = L_first1(2);
    Cube_Combine(3,4).UserData = L_first1(3);
    
    Cube_Combine(4,1).UserData = Cube_Combine(4,3).UserData;
    Cube_Combine(4,2).UserData = Cube_Combine(5,3).UserData;
    Cube_Combine(4,3).UserData = Cube_Combine(6,3).UserData;
    Cube_Combine(4,3).UserData = Cube_Combine(6,3).UserData;
    Cube_Combine(5,3).UserData = Cube_Combine(6,2).UserData;
    Cube_Combine(6,3).UserData = Cube_Combine(6,1).UserData;
    Cube_Combine(6,3).UserData = Cube_Combine(6,1).UserData;
    Cube_Combine(6,2).UserData = Cube_Combine(5,1).UserData;
    Cube_Combine(6,1).UserData = Cube_Combine(4,1).UserData;
    Cube_Combine(6,1).UserData = L_first2(1);
    Cube_Combine(5,1).UserData = L_first2(2);
    Cube_Combine(4,1).UserData = L_first2(3);
    for i=1:9
    Cube_Combine(i,4).FaceColor=Cube_Combine(i,4).UserData;
    end
    for i=4:6
    Cube_Combine(i,12).FaceColor=Cube_Combine(i,12).UserData;
    Cube_Combine(i,1).FaceColor=Cube_Combine(i,1).UserData;
    Cube_Combine(i,2).FaceColor=Cube_Combine(i,2).UserData;
    Cube_Combine(i,3).FaceColor=Cube_Combine(i,3).UserData;
    end
    end
    
    %���� �ð�
    if u1==7
    R_first1 = [Cube_Combine(4,6).UserData Cube_Combine(5,6).UserData Cube_Combine(6,6).UserData];
    R_first2 = [Cube_Combine(4,7).UserData Cube_Combine(4,8).UserData Cube_Combine(4,9).UserData];

    Cube_Combine(4,6).UserData = Cube_Combine(1,6).UserData;
    Cube_Combine(5,6).UserData = Cube_Combine(2,6).UserData;
    Cube_Combine(6,6).UserData = Cube_Combine(3,6).UserData;
    Cube_Combine(1,6).UserData = Cube_Combine(6,10).UserData;
    Cube_Combine(2,6).UserData = Cube_Combine(5,10).UserData;
    Cube_Combine(3,6).UserData = Cube_Combine(4,10).UserData;
    Cube_Combine(6,10).UserData = Cube_Combine(7,6).UserData;
    Cube_Combine(5,10).UserData = Cube_Combine(8,6).UserData;
    Cube_Combine(4,10).UserData = Cube_Combine(9,6).UserData;
    Cube_Combine(7,6).UserData = R_first1(1);
    Cube_Combine(8,6).UserData = R_first1(2);
    Cube_Combine(9,6).UserData = R_first1(3);

    Cube_Combine(4,7).UserData = Cube_Combine(4,9).UserData;
    Cube_Combine(4,8).UserData = Cube_Combine(5,9).UserData;
    Cube_Combine(4,9).UserData = Cube_Combine(6,9).UserData;
    Cube_Combine(4,9).UserData = Cube_Combine(6,9).UserData;
    Cube_Combine(5,9).UserData = Cube_Combine(6,8).UserData;
    Cube_Combine(6,9).UserData = Cube_Combine(6,7).UserData;
    Cube_Combine(6,9).UserData = Cube_Combine(6,7).UserData;
    Cube_Combine(6,8).UserData = Cube_Combine(5,7).UserData;
    Cube_Combine(6,7).UserData = Cube_Combine(4,7).UserData;
    Cube_Combine(6,7).UserData = R_first2(1);
    Cube_Combine(5,7).UserData = R_first2(2);
    Cube_Combine(4,7).UserData = R_first2(3);
    for i=1:9
    Cube_Combine(i,6).FaceColor=Cube_Combine(i,6).UserData;
    end
    for i=4:6
    Cube_Combine(i,10).FaceColor=Cube_Combine(i,10).UserData;
    Cube_Combine(i,7).FaceColor=Cube_Combine(i,7).UserData;
    Cube_Combine(i,8).FaceColor=Cube_Combine(i,8).UserData;
    Cube_Combine(i,9).FaceColor=Cube_Combine(i,9).UserData;
    end
    end
    
    %���� �ݽð�
    if u1==8
    R_first1 = [Cube_Combine(4,6).UserData Cube_Combine(5,6).UserData Cube_Combine(6,6).UserData];
    R_first2 = [Cube_Combine(4,9).UserData Cube_Combine(4,8).UserData Cube_Combine(4,7).UserData];

    Cube_Combine(4,6).UserData = Cube_Combine(7,6).UserData;
    Cube_Combine(5,6).UserData = Cube_Combine(8,6).UserData;
    Cube_Combine(6,6).UserData = Cube_Combine(9,6).UserData;
    Cube_Combine(7,6).UserData = Cube_Combine(6,10).UserData;
    Cube_Combine(8,6).UserData = Cube_Combine(5,10).UserData;
    Cube_Combine(9,6).UserData = Cube_Combine(4,10).UserData;
    Cube_Combine(6,10).UserData = Cube_Combine(1,6).UserData;
    Cube_Combine(5,10).UserData = Cube_Combine(2,6).UserData;
    Cube_Combine(4,10).UserData = Cube_Combine(3,6).UserData;
    Cube_Combine(1,6).UserData = R_first1(1);
    Cube_Combine(2,6).UserData = R_first1(2);
    Cube_Combine(3,6).UserData = R_first1(3);

    Cube_Combine(4,9).UserData = Cube_Combine(4,7).UserData;
    Cube_Combine(4,8).UserData = Cube_Combine(5,7).UserData;
    Cube_Combine(4,7).UserData = Cube_Combine(6,7).UserData;
    Cube_Combine(4,7).UserData = Cube_Combine(6,7).UserData;
    Cube_Combine(5,7).UserData = Cube_Combine(6,8).UserData;
    Cube_Combine(6,7).UserData = Cube_Combine(6,9).UserData;
    Cube_Combine(6,7).UserData = Cube_Combine(6,9).UserData;
    Cube_Combine(6,8).UserData = Cube_Combine(5,9).UserData;
    Cube_Combine(6,9).UserData = Cube_Combine(4,9).UserData;
    Cube_Combine(6,9).UserData = R_first2(1);
    Cube_Combine(5,9).UserData = R_first2(2);
    Cube_Combine(4,9).UserData = R_first2(3);
    for i=1:9
    Cube_Combine(i,6).FaceColor=Cube_Combine(i,6).UserData;
    end
    for i=4:6
    Cube_Combine(i,10).FaceColor=Cube_Combine(i,10).UserData;
    Cube_Combine(i,7).FaceColor=Cube_Combine(i,7).UserData;
    Cube_Combine(i,8).FaceColor=Cube_Combine(i,8).UserData;
    Cube_Combine(i,9).FaceColor=Cube_Combine(i,9).UserData;
    end
    end
    
    %�� �ð�
    if u1==9
    F_first1 = [Cube_Combine(4,4).UserData Cube_Combine(4,5).UserData Cube_Combine(4,6).UserData];
    F_first2 = [Cube_Combine(6,4).UserData Cube_Combine(5,4).UserData Cube_Combine(4,4).UserData];
    F_first3 = [Cube_Combine(6,6).UserData Cube_Combine(6,5).UserData Cube_Combine(6,4).UserData];
    F_first4 = [Cube_Combine(4,6).UserData Cube_Combine(5,6).UserData Cube_Combine(6,6).UserData];
    FU_first = [Cube_Combine(3,4).UserData Cube_Combine(3,5).UserData Cube_Combine(3,6).UserData];

    Cube_Combine(4,4).UserData = F_first2(1);
    Cube_Combine(4,5).UserData = F_first2(2);
    Cube_Combine(4,6).UserData = F_first2(3);

    Cube_Combine(6,4).UserData = F_first3(1);
    Cube_Combine(5,4).UserData = F_first3(2);
    Cube_Combine(4,4).UserData = F_first3(3);

    Cube_Combine(6,6).UserData = F_first4(1);
    Cube_Combine(6,5).UserData = F_first4(2);
    Cube_Combine(6,4).UserData = F_first4(3);

    Cube_Combine(4,6).UserData = F_first1(1);
    Cube_Combine(5,6).UserData = F_first1(2);
    Cube_Combine(6,6).UserData = F_first1(3);

    Cube_Combine(3,4).UserData = Cube_Combine(6,3).UserData;
    Cube_Combine(3,5).UserData = Cube_Combine(5,3).UserData;
    Cube_Combine(3,6).UserData = Cube_Combine(4,3).UserData;

    Cube_Combine(6,3).UserData = Cube_Combine(7,6).UserData;
    Cube_Combine(5,3).UserData = Cube_Combine(7,5).UserData;
    Cube_Combine(4,3).UserData = Cube_Combine(7,4).UserData;

    Cube_Combine(7,6).UserData = Cube_Combine(4,7).UserData;
    Cube_Combine(7,5).UserData = Cube_Combine(5,7).UserData;
    Cube_Combine(7,4).UserData = Cube_Combine(6,7).UserData;

    Cube_Combine(4,7).UserData = FU_first(1);
    Cube_Combine(5,7).UserData = FU_first(2);
    Cube_Combine(6,7).UserData = FU_first(3);
    
    for i=4:6
    Cube_Combine(3,i).FaceColor=Cube_Combine(3,i).UserData;
    Cube_Combine(7,i).FaceColor=Cube_Combine(7,i).UserData;
    end
    for i=3:7
    Cube_Combine(4,i).FaceColor=Cube_Combine(4,i).UserData;
    Cube_Combine(5,i).FaceColor=Cube_Combine(5,i).UserData;
    Cube_Combine(6,i).FaceColor=Cube_Combine(6,i).UserData;
    end
    end
    
    %�� �ݽð�
    if u1==10
        F_first1 = [Cube_Combine(4,4).UserData Cube_Combine(4,5).UserData Cube_Combine(4,6).UserData];
    F_first2 = [Cube_Combine(4,6).UserData Cube_Combine(5,6).UserData Cube_Combine(6,6).UserData];
    F_first3 = [Cube_Combine(6,6).UserData Cube_Combine(6,5).UserData Cube_Combine(6,4).UserData];
    F_first4 = [Cube_Combine(6,4).UserData Cube_Combine(5,4).UserData Cube_Combine(4,4).UserData];
    FU_first = [Cube_Combine(3,4).UserData Cube_Combine(3,5).UserData Cube_Combine(3,6).UserData];

    Cube_Combine(4,4).UserData = F_first2(1);
    Cube_Combine(4,5).UserData = F_first2(2);
    Cube_Combine(4,6).UserData = F_first2(3);

    Cube_Combine(4,6).UserData = F_first3(1);
    Cube_Combine(5,6).UserData = F_first3(2);
    Cube_Combine(6,6).UserData = F_first3(3);

    Cube_Combine(6,6).UserData = F_first4(1);
    Cube_Combine(6,5).UserData = F_first4(2);
    Cube_Combine(6,4).UserData = F_first4(3);

    Cube_Combine(6,4).UserData = F_first1(1);
    Cube_Combine(5,4).UserData = F_first1(2);
    Cube_Combine(4,4).UserData = F_first1(3);

    Cube_Combine(3,4).UserData = Cube_Combine(4,7).UserData;
    Cube_Combine(3,5).UserData = Cube_Combine(5,7).UserData;
    Cube_Combine(3,6).UserData = Cube_Combine(6,7).UserData;

    Cube_Combine(4,7).UserData = Cube_Combine(7,6).UserData;
    Cube_Combine(5,7).UserData = Cube_Combine(7,5).UserData;
    Cube_Combine(6,7).UserData = Cube_Combine(7,4).UserData;

    Cube_Combine(7,6).UserData = Cube_Combine(6,3).UserData;
    Cube_Combine(7,5).UserData = Cube_Combine(5,3).UserData;
    Cube_Combine(7,4).UserData = Cube_Combine(4,3).UserData;

    Cube_Combine(6,3).UserData = FU_first(1);
    Cube_Combine(5,3).UserData = FU_first(2);
    Cube_Combine(4,3).UserData = FU_first(3);
    
    for i=4:6
    Cube_Combine(3,i).FaceColor=Cube_Combine(3,i).UserData;
    Cube_Combine(7,i).FaceColor=Cube_Combine(7,i).UserData;
    end
    for i=3:7
    Cube_Combine(4,i).FaceColor=Cube_Combine(4,i).UserData;
    Cube_Combine(5,i).FaceColor=Cube_Combine(5,i).UserData;
    Cube_Combine(6,i).FaceColor=Cube_Combine(6,i).UserData;
    end
    end
    
    %�� �ð�
    if u1==11
    B_first1 = [Cube_Combine(4,10).UserData Cube_Combine(4,11).UserData Cube_Combine(4,12).UserData];
    B_first2 = [Cube_Combine(4,12).UserData Cube_Combine(5,12).UserData Cube_Combine(6,12).UserData];
    B_first3 = [Cube_Combine(6,12).UserData Cube_Combine(6,11).UserData Cube_Combine(6,10).UserData];
    B_first4 = [Cube_Combine(6,10).UserData Cube_Combine(5,10).UserData Cube_Combine(4,10).UserData];
    BU_first = [Cube_Combine(1,4).UserData Cube_Combine(1,5).UserData Cube_Combine(1,6).UserData];

    Cube_Combine(4,10).UserData = B_first2(1);
    Cube_Combine(4,11).UserData = B_first2(2);
    Cube_Combine(4,12).UserData = B_first2(3);

    Cube_Combine(4,12).UserData = B_first3(1);
    Cube_Combine(5,12).UserData = B_first3(2);
    Cube_Combine(6,12).UserData = B_first3(3);

    Cube_Combine(6,12).UserData = B_first4(1);
    Cube_Combine(6,11).UserData = B_first4(2);
    Cube_Combine(6,10).UserData = B_first4(3);

    Cube_Combine(6,10).UserData = B_first1(1);
    Cube_Combine(5,10).UserData = B_first1(2);
    Cube_Combine(4,10).UserData = B_first1(3);

    Cube_Combine(1,4).UserData = Cube_Combine(6,1).UserData;
    Cube_Combine(1,5).UserData = Cube_Combine(5,1).UserData;
    Cube_Combine(1,6).UserData = Cube_Combine(4,1).UserData;

    Cube_Combine(6,1).UserData = Cube_Combine(9,6).UserData;
    Cube_Combine(5,1).UserData = Cube_Combine(9,5).UserData;
    Cube_Combine(4,1).UserData = Cube_Combine(9,4).UserData;

    Cube_Combine(9,6).UserData = Cube_Combine(4,9).UserData;
    Cube_Combine(9,5).UserData = Cube_Combine(5,9).UserData;
    Cube_Combine(9,4).UserData = Cube_Combine(6,9).UserData;

    Cube_Combine(4,9).UserData = BU_first(1);
    Cube_Combine(5,9).UserData = BU_first(2);
    Cube_Combine(6,9).UserData = BU_first(3);
    
    for i=4:6
    Cube_Combine(1,i).FaceColor=Cube_Combine(1,i).UserData;
    Cube_Combine(i,1).FaceColor=Cube_Combine(i,1).UserData;
    Cube_Combine(9,i).FaceColor=Cube_Combine(9,i).UserData;
    Cube_Combine(i,9).FaceColor=Cube_Combine(i,9).UserData;
    Cube_Combine(i,10).FaceColor=Cube_Combine(i,10).UserData;
    Cube_Combine(i,11).FaceColor=Cube_Combine(i,11).UserData;
    Cube_Combine(i,12).FaceColor=Cube_Combine(i,12).UserData;
    end 
    end
    
    %�� �ݽð�
    if u1==12
        B_first1 = [Cube_Combine(4,10).UserData Cube_Combine(4,11).UserData Cube_Combine(4,12).UserData];
    B_first2 = [Cube_Combine(6,10).UserData Cube_Combine(5,10).UserData Cube_Combine(4,10).UserData];
    B_first3 = [Cube_Combine(6,12).UserData Cube_Combine(6,11).UserData Cube_Combine(6,10).UserData];
    B_first4 = [Cube_Combine(4,12).UserData Cube_Combine(5,12).UserData Cube_Combine(6,12).UserData];
    BU_first = [Cube_Combine(1,4).UserData Cube_Combine(1,5).UserData Cube_Combine(1,6).UserData];

    Cube_Combine(4,10).UserData = B_first2(1);
    Cube_Combine(4,11).UserData = B_first2(2);
    Cube_Combine(4,12).UserData = B_first2(3);

    Cube_Combine(6,10).UserData = B_first3(1);
    Cube_Combine(5,10).UserData = B_first3(2);
    Cube_Combine(4,10).UserData = B_first3(3);

    Cube_Combine(6,12).UserData = B_first4(1);
    Cube_Combine(6,11).UserData = B_first4(2);
    Cube_Combine(6,10).UserData = B_first4(3);

    Cube_Combine(4,12).UserData = B_first1(1);
    Cube_Combine(5,12).UserData = B_first1(2);
    Cube_Combine(6,12).UserData = B_first1(3);

    Cube_Combine(1,4).UserData = Cube_Combine(4,9).UserData;
    Cube_Combine(1,5).UserData = Cube_Combine(5,9).UserData;
    Cube_Combine(1,6).UserData = Cube_Combine(6,9).UserData;

    Cube_Combine(4,9).UserData = Cube_Combine(9,6).UserData;
    Cube_Combine(5,9).UserData = Cube_Combine(9,5).UserData;
    Cube_Combine(6,9).UserData = Cube_Combine(9,4).UserData;

    Cube_Combine(9,6).UserData = Cube_Combine(6,1).UserData;
    Cube_Combine(9,5).UserData = Cube_Combine(5,1).UserData;
    Cube_Combine(9,4).UserData = Cube_Combine(4,1).UserData;

    Cube_Combine(6,1).UserData = BU_first(1);
    Cube_Combine(5,1).UserData = BU_first(2);
    Cube_Combine(4,1).UserData = BU_first(3);
    
    for i=4:6
    Cube_Combine(1,i).FaceColor=Cube_Combine(1,i).UserData;
    Cube_Combine(i,1).FaceColor=Cube_Combine(i,1).UserData;
    Cube_Combine(9,i).FaceColor=Cube_Combine(9,i).UserData;
    Cube_Combine(i,9).FaceColor=Cube_Combine(i,9).UserData;
    Cube_Combine(i,10).FaceColor=Cube_Combine(i,10).UserData;
    Cube_Combine(i,11).FaceColor=Cube_Combine(i,11).UserData;
    Cube_Combine(i,12).FaceColor=Cube_Combine(i,12).UserData;
    end 
    end
    
    %�� 13= ��+��� �ð����
    if u1==13
       U_first1 = [Cube_Combine(4,1).UserData Cube_Combine(4,2).UserData Cube_Combine(4,3).UserData];
       U_first2 = [Cube_Combine(1,6).UserData Cube_Combine(1,5).UserData Cube_Combine(1,4).UserData];
       m_first = [Cube_Combine(5,1).UserData Cube_Combine(5,2).UserData Cube_Combine(5,3).UserData];
        for i= 1:3
        Cube_Combine(4,i).UserData = Cube_Combine(4,i+3).UserData;
        Cube_Combine(4,i+3).UserData = Cube_Combine(4,i+6).UserData;
        Cube_Combine(4,i+6).UserData = Cube_Combine(4,i+9).UserData;
        Cube_Combine(4,i+9).UserData = U_first1(i);
        Cube_Combine(5,i).UserData = Cube_Combine(5,i+3).UserData;
        Cube_Combine(5,i+3).UserData = Cube_Combine(5,i+6).UserData;
        Cube_Combine(5,i+6).UserData = Cube_Combine(5,i+9).UserData;
        Cube_Combine(5,i+9).UserData = m_first(i);
        end
        Cube_Combine(1,6).UserData = Cube_Combine(1,4).UserData;
        Cube_Combine(1,5).UserData = Cube_Combine(2,4).UserData;
        Cube_Combine(1,4).UserData = Cube_Combine(3,4).UserData;
        Cube_Combine(1,4).UserData = Cube_Combine(3,4).UserData;
        Cube_Combine(2,4).UserData = Cube_Combine(3,5).UserData;
        Cube_Combine(3,4).UserData = Cube_Combine(3,6).UserData;
        Cube_Combine(3,4).UserData = Cube_Combine(3,6).UserData;
        Cube_Combine(3,5).UserData = Cube_Combine(2,6).UserData;
        Cube_Combine(3,6).UserData = Cube_Combine(1,6).UserData;
        Cube_Combine(3,6).UserData = U_first2(1);
        Cube_Combine(2,6).UserData = U_first2(2);
        Cube_Combine(1,6).UserData = U_first2(3);
        for i=1:12
        Cube_Combine(4,i).FaceColor=Cube_Combine(4,i).UserData;
        Cube_Combine(5,i).FaceColor=Cube_Combine(5,i).UserData;
        end
        for i=4:6
        Cube_Combine(1,i).FaceColor=Cube_Combine(1,i).UserData;
        Cube_Combine(2,i).FaceColor=Cube_Combine(2,i).UserData;
        Cube_Combine(3,i).FaceColor=Cube_Combine(3,i).UserData;
        end
    end
    
    %�� 14= ��+��� �ݽð����
    if u1==14
       U_first1 = [Cube_Combine(4,10).UserData Cube_Combine(4,11).UserData Cube_Combine(4,12).UserData];
       U_first2 = [Cube_Combine(1,4).UserData Cube_Combine(1,5).UserData Cube_Combine(1,6).UserData];
       m_first = [Cube_Combine(5,10).UserData Cube_Combine(5,11).UserData Cube_Combine(5,12).UserData];
    for i= 1:3
        Cube_Combine(4,i+9).UserData = Cube_Combine(4,i+6).UserData;
        Cube_Combine(4,i+6).UserData = Cube_Combine(4,i+3).UserData;
        Cube_Combine(4,i+3).UserData = Cube_Combine(4,i).UserData;
        Cube_Combine(4, i).UserData = U_first1(i);
        Cube_Combine(5,i+9).UserData = Cube_Combine(5,i+6).UserData;
        Cube_Combine(5,i+6).UserData = Cube_Combine(5,i+3).UserData;
        Cube_Combine(5,i+3).UserData = Cube_Combine(5,i).UserData;
        Cube_Combine(5, i).UserData = m_first(i);
    end
    Cube_Combine(1,4).UserData = Cube_Combine(1,6).UserData;
    Cube_Combine(1,5).UserData = Cube_Combine(2,6).UserData;
    Cube_Combine(1,6).UserData = Cube_Combine(3,6).UserData;
    Cube_Combine(1,6).UserData = Cube_Combine(3,6).UserData;
    Cube_Combine(2,6).UserData = Cube_Combine(3,5).UserData;
    Cube_Combine(3,6).UserData = Cube_Combine(3,4).UserData;
    Cube_Combine(3,6).UserData = Cube_Combine(3,4).UserData;
    Cube_Combine(3,5).UserData = Cube_Combine(2,4).UserData;
    Cube_Combine(3,4).UserData = Cube_Combine(1,4).UserData;
    Cube_Combine(3,4).UserData = U_first2(1);
    Cube_Combine(2,4).UserData = U_first2(2);
    Cube_Combine(1,4).UserData = U_first2(3);
    for i=1:12
    Cube_Combine(4,i).FaceColor=Cube_Combine(4,i).UserData;
    Cube_Combine(5,i).FaceColor=Cube_Combine(5,i).UserData;
    end
    for i=4:6
    Cube_Combine(1,i).FaceColor=Cube_Combine(1,i).UserData;
    Cube_Combine(2,i).FaceColor=Cube_Combine(2,i).UserData;
    Cube_Combine(3,i).FaceColor=Cube_Combine(3,i).UserData;
    end 
    end
    
    %�Ʒ�+��� �ð����
    if u1==15
    D_first1 = [Cube_Combine(6,1).UserData Cube_Combine(6,2).UserData Cube_Combine(6,3).UserData];
    D_first2 = [Cube_Combine(7,4).UserData Cube_Combine(7,5).UserData Cube_Combine(7,6).UserData];
    m_first = [Cube_Combine(5,1).UserData Cube_Combine(5,2).UserData Cube_Combine(5,3).UserData];
    for i= 1:3
        Cube_Combine(6,i).UserData = Cube_Combine(6,i+3).UserData;
        Cube_Combine(6,i+3).UserData = Cube_Combine(6,i+6).UserData;
        Cube_Combine(6,i+6).UserData = Cube_Combine(6,i+9).UserData;
        Cube_Combine(6,i+9).UserData = D_first1(i);
        Cube_Combine(5,i).UserData = Cube_Combine(5,i+3).UserData;
        Cube_Combine(5,i+3).UserData = Cube_Combine(5,i+6).UserData;
        Cube_Combine(5,i+6).UserData = Cube_Combine(5,i+9).UserData;
        Cube_Combine(5,i+9).UserData = m_first(i);
    end
    Cube_Combine(7,4).UserData = Cube_Combine(7,6).UserData;
    Cube_Combine(7,5).UserData = Cube_Combine(8,6).UserData;
    Cube_Combine(7,6).UserData = Cube_Combine(9,6).UserData;
    Cube_Combine(7,6).UserData = Cube_Combine(9,6).UserData;
    Cube_Combine(8,6).UserData = Cube_Combine(9,5).UserData;
    Cube_Combine(9,6).UserData = Cube_Combine(9,4).UserData;
    Cube_Combine(9,6).UserData = Cube_Combine(9,4).UserData;
    Cube_Combine(9,5).UserData = Cube_Combine(8,4).UserData;
    Cube_Combine(9,4).UserData = Cube_Combine(7,4).UserData;
    Cube_Combine(9,4).UserData = D_first2(1);
    Cube_Combine(8,4).UserData = D_first2(2);
    Cube_Combine(7,4).UserData = D_first2(3); 
    for i=1:12
    Cube_Combine(6,i).FaceColor=Cube_Combine(6,i).UserData;
    Cube_Combine(5,i).FaceColor=Cube_Combine(5,i).UserData;
    end
    for i=4:6
    Cube_Combine(7,i).FaceColor=Cube_Combine(7,i).UserData;
    Cube_Combine(8,i).FaceColor=Cube_Combine(8,i).UserData;
    Cube_Combine(9,i).FaceColor=Cube_Combine(9,i).UserData;
    end
    end
    
    %�Ʒ�, ��� �ݽð����
    if u1==16
    D_first1 = [Cube_Combine(6,10).UserData Cube_Combine(6,11).UserData Cube_Combine(6,12).UserData];
    D_first2 = [Cube_Combine(7,6).UserData Cube_Combine(7,5).UserData Cube_Combine(7,4).UserData];
    m_first = [Cube_Combine(5,10).UserData Cube_Combine(5,11).UserData Cube_Combine(5,12).UserData];
    for i= 1:3
        Cube_Combine(6,i+9).UserData = Cube_Combine(6,i+6).UserData;
        Cube_Combine(6,i+6).UserData = Cube_Combine(6,i+3).UserData;
        Cube_Combine(6,i+3).UserData = Cube_Combine(6,i).UserData;
        Cube_Combine(6, i).UserData = D_first1(i);
    end
    Cube_Combine(7,6).UserData = Cube_Combine(7,4).UserData;
    Cube_Combine(7,5).UserData = Cube_Combine(8,4).UserData;
    Cube_Combine(7,4).UserData = Cube_Combine(9,4).UserData;
    Cube_Combine(7,4).UserData = Cube_Combine(9,4).UserData;
    Cube_Combine(8,4).UserData = Cube_Combine(9,5).UserData;
    Cube_Combine(9,4).UserData = Cube_Combine(9,6).UserData;
    Cube_Combine(9,4).UserData = Cube_Combine(9,6).UserData;
    Cube_Combine(9,5).UserData = Cube_Combine(8,6).UserData;
    Cube_Combine(9,6).UserData = Cube_Combine(7,6).UserData;
    Cube_Combine(9,6).UserData = D_first2(1);
    Cube_Combine(8,6).UserData = D_first2(2);
    Cube_Combine(7,6).UserData = D_first2(3);
    Cube_Combine(5,i+9).UserData = Cube_Combine(5,i+6).UserData;
    Cube_Combine(5,i+6).UserData = Cube_Combine(5,i+3).UserData;
    Cube_Combine(5,i+3).UserData = Cube_Combine(5,i).UserData;
    Cube_Combine(5, i).UserData = m_first(i);
    for i=1:12
    Cube_Combine(6,i).FaceColor=Cube_Combine(6,i).UserData;
    Cube_Combine(5,i).FaceColor=Cube_Combine(5,i).UserData;
    end
    for i=4:6
    Cube_Combine(7,i).FaceColor=Cube_Combine(7,i).UserData;
    Cube_Combine(8,i).FaceColor=Cube_Combine(8,i).UserData;
    Cube_Combine(9,i).FaceColor=Cube_Combine(9,i).UserData;
    end
    end
    
    %��, ���, �Ʒ� �ð����
    if u1==17
    U_first1 = [Cube_Combine(4,1).UserData Cube_Combine(4,2).UserData Cube_Combine(4,3).UserData];
    U_first2 = [Cube_Combine(1,6).UserData Cube_Combine(1,5).UserData Cube_Combine(1,4).UserData];
    m_first = [Cube_Combine(5,1).UserData Cube_Combine(5,2).UserData Cube_Combine(5,3).UserData];
    D_first1 = [Cube_Combine(6,1).UserData Cube_Combine(6,2).UserData Cube_Combine(6,3).UserData];
    D_first2 = [Cube_Combine(7,4).UserData Cube_Combine(7,5).UserData Cube_Combine(7,6).UserData];
        for i= 1:3
        Cube_Combine(4,i).UserData = Cube_Combine(4,i+3).UserData;
        Cube_Combine(4,i+3).UserData = Cube_Combine(4,i+6).UserData;
        Cube_Combine(4,i+6).UserData = Cube_Combine(4,i+9).UserData;
        Cube_Combine(4,i+9).UserData = U_first1(i);
        Cube_Combine(5,i).UserData = Cube_Combine(5,i+3).UserData;
        Cube_Combine(5,i+3).UserData = Cube_Combine(5,i+6).UserData;
        Cube_Combine(5,i+6).UserData = Cube_Combine(5,i+9).UserData;
        Cube_Combine(5,i+9).UserData = m_first(i);
        Cube_Combine(6,i).UserData = Cube_Combine(6,i+3).UserData;
        Cube_Combine(6,i+3).UserData = Cube_Combine(6,i+6).UserData;
        Cube_Combine(6,i+6).UserData = Cube_Combine(6,i+9).UserData;
        Cube_Combine(6,i+9).UserData = D_first1(i);
        end
        Cube_Combine(1,6).UserData = Cube_Combine(1,4).UserData;
        Cube_Combine(1,5).UserData = Cube_Combine(2,4).UserData;
        Cube_Combine(1,4).UserData = Cube_Combine(3,4).UserData;
        Cube_Combine(1,4).UserData = Cube_Combine(3,4).UserData;
        Cube_Combine(2,4).UserData = Cube_Combine(3,5).UserData;
        Cube_Combine(3,4).UserData = Cube_Combine(3,6).UserData;
        Cube_Combine(3,4).UserData = Cube_Combine(3,6).UserData;
        Cube_Combine(3,5).UserData = Cube_Combine(2,6).UserData;
        Cube_Combine(3,6).UserData = Cube_Combine(1,6).UserData;
        Cube_Combine(3,6).UserData = U_first2(1);
        Cube_Combine(2,6).UserData = U_first2(2);
        Cube_Combine(1,6).UserData = U_first2(3);
        Cube_Combine(7,4).UserData = Cube_Combine(7,6).UserData;
        Cube_Combine(7,5).UserData = Cube_Combine(8,6).UserData;
        Cube_Combine(7,6).UserData = Cube_Combine(9,6).UserData;
        Cube_Combine(7,6).UserData = Cube_Combine(9,6).UserData;
        Cube_Combine(8,6).UserData = Cube_Combine(9,5).UserData;
        Cube_Combine(9,6).UserData = Cube_Combine(9,4).UserData;
        Cube_Combine(9,6).UserData = Cube_Combine(9,4).UserData;
        Cube_Combine(9,5).UserData = Cube_Combine(8,4).UserData;
        Cube_Combine(9,4).UserData = Cube_Combine(7,4).UserData;
        Cube_Combine(9,4).UserData = D_first2(1);
        Cube_Combine(8,4).UserData = D_first2(2);
        Cube_Combine(7,4).UserData = D_first2(3); 
        for i=1:12
        Cube_Combine(4,i).FaceColor=Cube_Combine(4,i).UserData;
        Cube_Combine(5,i).FaceColor=Cube_Combine(5,i).UserData;
        Cube_Combine(6,i).FaceColor=Cube_Combine(6,i).UserData;
        end
        for i=4:6
        Cube_Combine(1,i).FaceColor=Cube_Combine(1,i).UserData;
        Cube_Combine(2,i).FaceColor=Cube_Combine(2,i).UserData;
        Cube_Combine(3,i).FaceColor=Cube_Combine(3,i).UserData;
        Cube_Combine(7,i).FaceColor=Cube_Combine(7,i).UserData;
        Cube_Combine(8,i).FaceColor=Cube_Combine(8,i).UserData;
        Cube_Combine(9,i).FaceColor=Cube_Combine(9,i).UserData;
        end
    end
  
    %��, ���, �Ʒ� �ݽð����
    if u1==18
    U_first1 = [Cube_Combine(4,10).UserData Cube_Combine(4,11).UserData Cube_Combine(4,12).UserData];
    U_first2 = [Cube_Combine(1,4).UserData Cube_Combine(1,5).UserData Cube_Combine(1,6).UserData];
    m_first = [Cube_Combine(5,10).UserData Cube_Combine(5,11).UserData Cube_Combine(5,12).UserData];
    D_first1 = [Cube_Combine(6,10).UserData Cube_Combine(6,11).UserData Cube_Combine(6,12).UserData];
    D_first2 = [Cube_Combine(7,6).UserData Cube_Combine(7,5).UserData Cube_Combine(7,4).UserData];
    for i= 1:3
        Cube_Combine(4,i+9).UserData = Cube_Combine(4,i+6).UserData;
        Cube_Combine(4,i+6).UserData = Cube_Combine(4,i+3).UserData;
        Cube_Combine(4,i+3).UserData = Cube_Combine(4,i).UserData;
        Cube_Combine(4, i).UserData = U_first1(i);
        Cube_Combine(5,i+9).UserData = Cube_Combine(5,i+6).UserData;
        Cube_Combine(5,i+6).UserData = Cube_Combine(5,i+3).UserData;
        Cube_Combine(5,i+3).UserData = Cube_Combine(5,i).UserData;
        Cube_Combine(5, i).UserData = m_first(i);
        Cube_Combine(6,i+9).UserData = Cube_Combine(6,i+6).UserData;
        Cube_Combine(6,i+6).UserData = Cube_Combine(6,i+3).UserData;
        Cube_Combine(6,i+3).UserData = Cube_Combine(6,i).UserData;
        Cube_Combine(6, i).UserData = D_first1(i);
    end
    Cube_Combine(1,4).UserData = Cube_Combine(1,6).UserData;
    Cube_Combine(1,5).UserData = Cube_Combine(2,6).UserData;
    Cube_Combine(1,6).UserData = Cube_Combine(3,6).UserData;
    Cube_Combine(1,6).UserData = Cube_Combine(3,6).UserData;
    Cube_Combine(2,6).UserData = Cube_Combine(3,5).UserData;
    Cube_Combine(3,6).UserData = Cube_Combine(3,4).UserData;
    Cube_Combine(3,6).UserData = Cube_Combine(3,4).UserData;
    Cube_Combine(3,5).UserData = Cube_Combine(2,4).UserData;
    Cube_Combine(3,4).UserData = Cube_Combine(1,4).UserData;
    Cube_Combine(3,4).UserData = U_first2(1);
    Cube_Combine(2,4).UserData = U_first2(2);
    Cube_Combine(1,4).UserData = U_first2(3);
    Cube_Combine(7,6).UserData = Cube_Combine(7,4).UserData;
    Cube_Combine(7,5).UserData = Cube_Combine(8,4).UserData;
    Cube_Combine(7,4).UserData = Cube_Combine(9,4).UserData;
    Cube_Combine(7,4).UserData = Cube_Combine(9,4).UserData;
    Cube_Combine(8,4).UserData = Cube_Combine(9,5).UserData;
    Cube_Combine(9,4).UserData = Cube_Combine(9,6).UserData;
    Cube_Combine(9,4).UserData = Cube_Combine(9,6).UserData;
    Cube_Combine(9,5).UserData = Cube_Combine(8,6).UserData;
    Cube_Combine(9,6).UserData = Cube_Combine(7,6).UserData;
    Cube_Combine(9,6).UserData = D_first2(1);
    Cube_Combine(8,6).UserData = D_first2(2);
    Cube_Combine(7,6).UserData = D_first2(3);
    for i=1:12
    Cube_Combine(4,i).FaceColor=Cube_Combine(4,i).UserData;
    Cube_Combine(5,i).FaceColor=Cube_Combine(5,i).UserData;
    Cube_Combine(6,i).FaceColor=Cube_Combine(6,i).UserData;
    end
    for i=4:6
    Cube_Combine(1,i).FaceColor=Cube_Combine(1,i).UserData;
    Cube_Combine(2,i).FaceColor=Cube_Combine(2,i).UserData;
    Cube_Combine(3,i).FaceColor=Cube_Combine(3,i).UserData;
    Cube_Combine(7,i).FaceColor=Cube_Combine(7,i).UserData;
    Cube_Combine(8,i).FaceColor=Cube_Combine(8,i).UserData;
    Cube_Combine(9,i).FaceColor=Cube_Combine(9,i).UserData;
    end
    end
    

    if u1==19 %����ð����
    M_first = [Cube_Combine(2,4).UserData Cube_Combine(2,5).UserData Cube_Combine(2,6).UserData];
    
    Cube_Combine(2,4).UserData = Cube_Combine(6,2).UserData;
    Cube_Combine(2,5).UserData = Cube_Combine(5,2).UserData;
    Cube_Combine(2,6).UserData = Cube_Combine(4,2).UserData;
    Cube_Combine(6,2).UserData = Cube_Combine(8,6).UserData;
    Cube_Combine(5,2).UserData = Cube_Combine(8,5).UserData;
    Cube_Combine(4,2).UserData = Cube_Combine(8,4).UserData;
    Cube_Combine(8,6).UserData = Cube_Combine(4,8).UserData;
    Cube_Combine(8,5).UserData = Cube_Combine(5,8).UserData;
    Cube_Combine(8,4).UserData = Cube_Combine(6,8).UserData;
    Cube_Combine(4,8).UserData = M_first(1);
    Cube_Combine(5,8).UserData = M_first(2);
    Cube_Combine(6,8).UserData = M_first(3);
    
    for i=4:6
    Cube_Combine(2,i).FaceColor=Cube_Combine(2,i).UserData;
    Cube_Combine(8,i).FaceColor=Cube_Combine(8,i).UserData;
    Cube_Combine(i,2).FaceColor=Cube_Combine(i,2).UserData;
    Cube_Combine(i,8).FaceColor=Cube_Combine(i,8).UserData;
    end
    end
      
end