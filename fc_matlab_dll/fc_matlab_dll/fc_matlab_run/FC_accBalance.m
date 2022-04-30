fc_msg = 0;

if not(libisloaded('fc_matlab'))
    display('need login first');
else
    [fc_msg] = calllib('fc_matlab','getAccountBalance', '01549059', 'balance.txt');
end;    

display(fc_msg);

%{
get Account Balance
Parameters for getAccountBalance function:

account number - account name can be found in Trading Station
aoutput file - optional parameter, should be '' - if you don't want to save in file

return vaslue - integer number
%}