fc_msg = 0;

if not(libisloaded('fc_matlab'))
    display('need login first');
else
    [fc_msg] = calllib('fc_matlab','createEntryOrder', '01549059', 20000, 'S', 'GTC', 'EUR/USD', 'L', 1.06111, '', '20180112-13:20:00');
end;    

%display(fc_msg);

%{
Parameters for createEntryOrder function:
accountID, trade size, side, TIF, symbol, order Type, price, ticketNumber, expDate

account name - account name can be found in Trading Station
trade size - for FX min. 1000 or account min. trade size
side - B=Buy, S=Sell
Time in Force parameters: GTC, IOC, FOK, GTD
symbol - any symbol available in your account
order type - for entry order: LE, SE, for attached order: L, S (Limit or
Stop)
price - limit or stop price
ticketNumber - to attach Stop or Limit to existing position, this option works only on non-FIFO accounts, with FIFO account you can create LE or SE order 
the Stop or Limit can be attached to a waiting order, works with also with
FIFO accounts.
expDate - expiration date and time in format - yyyyMMdd-HH:mm:ss", only for
            orders where TIF = GTD, all other orders expDate = ''  
%}