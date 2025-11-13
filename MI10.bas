TVM: Cls
Print "----------------------------------------"
Print "---------   Time Value Money   ---------"
Print "----------------------------------------"
Print
Print "1  Number of Months (N)"
Print "2  Annual Interest rate (I%YR)"
Print "3  Present Value (PV)"
Print "4  Monthly Payment (PMT)"
Print "5  Future Value (FV)"
Print "6  GoTo TOOL KIT"
Print "7  END Program"
Print
Input "Enter Menu No. for Unknown Variable";L
If L = 1 GoTo 1
If L = 2 GoTo 2
If L = 3 GoTo 3
If L = 4 GoTo 4
If L = 5 GoTo 5
If L = 6 Then Run "TOOL.bas"
If L = 7 Then Cls : End
Cls : End
1 Cls
Print "~~~~~~~   Number of Months (N)   ~~~~~~~"
Print
Input "I%YR     ";i
Input "PV       ";PV
Input "FV       ";FV
Input "PMT      ";PMT
i = i/1200
If PV>FV GoTo A1
N = Log((FV+PMT/i)/(PV+PMT/i))/Log(1+i)
Print
Print "Savings Number of Months (N) =";Cint(N)
Print
GoTo B1
A1:
N = Log((FV-PMT/i)/(PV-PMT/i))/Log(1+i)
Print
Print "Loan Number of Months (N) =";Cint(N)
Print
B1:
Print
Input "Press ENTER for Main Menu";L
GoTo TVM
2 Cls
Print "~~~~  Annual Interest Rate (I%YR)  ~~~~~"
Print
Print "No closed-form solution."
Print
Input "Press ENTER for Main Menu";L
GoTo TVM
3 Cls
Print "~~~~~~~~   Present Value (PV)   ~~~~~~~~"
Print
Input "Months   ";N
Input "I%YR     ";i
Input "FV       ";FV
Input "PMT      ";PMT
Print
i = i/1200
If PV>FV GoTo A3
PV = (FV-PMT*((1+i)^N-1)/i)/(1+i)^N
Print
Print "Savings Present Value (PV) =";Val(Str$(PV,15,2))
GoTo B3
A3:
PV = ((1+i)^N-1)/(i*(1+i)^N)*PMT + FV/(1+i)^N
Print
Print "Loan Present Value (PV)  =";Val(Str$(PV,15,2))
B3:
Print
Input "Press ENTER for Main Menu";L
GoTo TVM
4 Cls
Print "~~~~~~   Monthly Payment (PMT)   ~~~~~~~"
Print
Input "N        ";N
Input "I%YR     ";IYR
Input "PV       ";PV
Input "FV       ";FV
Print
i = IYR/1200
If PV>FV GoTo A4
PMT = (FV-PV*(1+i)^N)/((((1+i)^N-1)/i)*(1+i))
Print
Print "Savings Monthly Payments (PMT) =";Val(Str$(PMT,15,2))
GoTo B4
A4:
PMT = (FV-PV*(1+i)^N)/(((1+i)^N-1)/i)
Print
Print "Loan Monthly Payments (PMT) =";Val(Str$(PMT,15,2))
B4:
Print
Input "Press ENTER for Main Menu";L
GoTo TVM
5 Cls
Print "~~~~~~~~~   Future Value (FV)  ~~~~~~~~~"
Print
Input "N        ";N
Input "I%YR     ";IYR
Input "PV       ";PV
Input "PMT      ";PMT
Print
i = IYR/1200
FV = PV*(1+i)^N+PMT*((1+i)^N-1)/i
Print
Print "Savings Future Valus (FV) =";Val(Str$(FV,15,2))
Print "Loan Future Value (FV) =";0
Print
Print
Input "Press ENTER for Main Menu";L
GoTo TVM
End