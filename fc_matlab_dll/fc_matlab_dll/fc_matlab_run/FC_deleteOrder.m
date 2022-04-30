fc_msg = 0;

if not(libisloaded('fc_matlab'))
    display('need login first');
else
    [fc_msg] = calllib('fc_matlab','deleteOrder', '01051553', '138948010');
end;    

%display(fc_msg);

%{
Parameters for deleteOrder function:
accountNumber, orderID

accountNumber - account name can be found in Trading Station
orderID - waiting order ID
%}