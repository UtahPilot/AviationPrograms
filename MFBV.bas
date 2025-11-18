MFBV: Randomize (Timer)
A: Cls
Print "----------------------------------------"
Print "-----   My Favorite Bible Verses   -----"
Print "----------------------------------------"
Print
Print "Press ENTER for today's verse"
Print
Print "Or, Enter 1 GoTo TOOL KIT"
Input "Or, Enter 2 to END app";l
Cls
If L = 1 Then Run "TOOL.bas"
If L = 2 Then Cls : End
GoTo Int(Rnd*13)+1
1 : Print "Be still and know that I am God"
Print
Input "Press ENTER";L
GoTo A
2 : Print "Hear, O Israel! The LORD is our God,"
Print "the LORD is one!"
Print
Input "Press ENTER";L
GoTo A
3 : Print "But now abide faith, hope, love;"
Print "but the greatest of these three"
Print "is love."
Print
Input "Press ENTER";L
GoTo A
4 : Print "Surely Your goodness and loving"
Print "kindness will follow me all the days"
Print "of my life, and I will dwell in the"
Print "house of the LORD forever."
Print
Input "Press ENTER";L
GoTo A
5 : Print "God is light; in Him there is no"
Print "darkness at all."
Print
Input "Press ENTER";L
GoTo A
6 :  Print "Cast all your anxiety on Him because"
Print "He cares for you."
Print
Input "Press ENTER";L
GoTo A
7 : Print "He shall cover you with His feathers,"
Print "and under His wings you shall take"
Print "refuge; His truth shall be your shield"
Print "and buckler."
Print
Input "Press ENTER";L
GoTo A
8 : Print "Jesus said, 'Come to Me, all who are"
Print "weary and carry heavy burdens, and I"
Print "will give you rest."
Print
Input "Press ENTER";L
GoTo A
9 : Print "The Spirit God gave us does not make"
Print "us timid, but gives us power, love and"
Print "self-discipline."
Print
Input "Press ENTER";L
GoTo A
10 : Print "Seek His will in all you do, and"
Print "He will show you which path to take."
Print
Input "Press ENTER";L
GoTo A
11 : Print "Those who hope in the LORD will"
Print "renew their strength.  They will soar"
Print "on wings like eagles; They will run"
Print "and not grow weary."
Print
Input "Press Enter";L
GoTo A
12 : Print "The LORD is my light and my"
Print "salvation; whom shall I fear?  The"
Print "Lord is the strength of my life;"
Print "of whom shall I be afraid?"
Print
Input "Press ENTER";L
GoTo A
13 : Print "For God so loved the world, that He"
Print "gave His only begotten Son, that whoever"
Print "believes in Him should not perish, but"
Print "have eternal life."
Print
Input "Press ENTER";L
GoTo A

End
