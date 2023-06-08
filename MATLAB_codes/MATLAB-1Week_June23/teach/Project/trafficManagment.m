clc
clear all
close all

obj_N = 100; %input("Enter the North side object Count: ");
obj_E = 50; %input("Enter the East side object Count: ");
obj_S = 25; %input("Enter the South side object Count: ");
obj_W = 120; %input("Enter the West sid eobject Count: ");

obj_data = [obj_N obj_E obj_S obj_W];

for i = 1:length(obj_data)
    [val, ind] = max(obj_data);
    switch ind
        case 1
            disp('North timer ON')
        case 2
            disp('East timer ON')
        case 3
            disp('South timer ON')
        case 4
            disp('West timer ON')
        otherwise
            disp('wrong logic')
    end
    for i = 1:5
        tic;
        pause(1);
        end_time = toc;
        disp("waiting Time:" + num2str(6-i) + 'secs' )        
    end
    obj_data(ind) = 0;
end