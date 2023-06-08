
clc
clear all
close all

v = [1 5 8 17];

for i = 1: length(v)
   disp(v(i))
end
% 
a = [1 2; 3 4];
length(a)
% [x, y] = size(a)
% % % % 
% for i = 1:x
%     for j = 1:y
%         disp(a(i,j))
%     end
% end
% 
% for i = 1: x * y:
%     disp(a(i))
% end
%     
% for i = 1: length(a)
%     disp(a(i))
% end
% 

n = 10;
f = n;
while n > 1
    n = n-1;
    f = f*n;
end
disp(['n! = ' num2str(f)])


clc
clear all
close all

n = input('choose any value (-1,0,1): ');

switch n
    case -1
        disp('negative one')
    case 0
        disp('zero')
    case 1
        disp('positive one')
    otherwise
        disp('wrong value')
end


