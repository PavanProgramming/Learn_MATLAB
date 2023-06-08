clc
clear all
reply = input('Would you like to see an echo? (y/n): ','s');
if strcmp(reply,'y')
  disp(reply)
  disp('Perform the action')
end


minVal = 2;
maxVal = 6;
x = input("Enter the Value between 2 and 6: ");
if (x >= minVal) && (x <= maxVal)
    disp('Value within specified range.')
elseif (x > maxVal)
    disp('Value exceeds maximum value.')
else
    disp('Value is below minimum value.')
end