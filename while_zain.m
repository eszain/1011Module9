function [whatsLeft, divisionCount] = while_zain(number)
%Enter the code for your function below here.
% vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv
divisionCount = uint8(0);  % first line.  Makes divisionCount a positive-only 8-bit integer equal to 0.
s = number;
while s > 1
    s = s/7;
    divisionCount = divisionCount + 1;
end
whatsLeft = s;