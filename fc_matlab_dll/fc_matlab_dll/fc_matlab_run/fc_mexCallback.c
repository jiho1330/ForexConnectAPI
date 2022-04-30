//------------------------------
// to compile this program use at prompt:
// mex -v fc_mexCallback.c fc_matlab.lib
// to run it: fc_mexCallback
//------------------------------


#include "mex.h"
#include "fc_matlab.h"

// Callback function
void fc_mexCallback(char *msg, double msgType)
{
    mxArray *lhs[2];
    char sType[5];
    
    if (msg == NULL || msgType <= 0)
        return;
    itoa((int)msgType, sType, 10);
    //mexPrintf("fc: %s,%s\n", msg, sType); 
    
    lhs[0] = mxCreateString(msg);
    lhs[1] = mxCreateString(sType);
    
    mexCallMATLAB(0, NULL, 2, lhs, "fc_printMsg");
    //mexCallMATLAB(0, NULL, 0, NULL, "test_msg_print");
    
}
// MEX Gateway
void mexFunction(int nlhs, mxArray *plhs[], int nrhs, const mxArray *prhs[])
{
    //mexPrintf("a1: %d\n", nlhs); 
    //mexPrintf("a2: %s\n", plhs[0]); 
    //mexPrintf("a3: %d\n", nrhs); 
    //mexPrintf("a4: %s\n", prhs[0]); 
    
    //pointer to callback function
    //void (*cbPtr)() = NULL;
    void (*cbPtr)(char *message, double message_type) = NULL;
    cbPtr = fc_mexCallback;
    
    Register_Callback(cbPtr);
}
