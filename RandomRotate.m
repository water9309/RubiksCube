function Number = RandomRotate(Num)
Number = randi([1,12],Num,1);

for i=1:Num
    Rotation_function(Number(i));
    pause(0.1);
end
end