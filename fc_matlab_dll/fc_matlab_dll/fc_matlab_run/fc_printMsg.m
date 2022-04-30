%display API messages 
function k = fc_pringMsg(fc_msg, fc_msgType )
    k = 1;
    display(fc_msg);
    
    %fc_msgType values:
    % '1' = system messages, like login
    % '2' = trading reports
    % '3' = streaming prices
    
    %if fc_msgType == '2'
    %    display(fc_msgType);
    %end
end

