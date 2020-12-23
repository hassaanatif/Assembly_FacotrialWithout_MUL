# Assembly_FacotrialWithout_MUL

The idea here is quite simple actually. Since binary arithmetic has just two possibilities (i.e we can get either a zero or a one), we can take this logic further and use shift instructions to mulitply our numbers.
So lets say, we want to calculate the factorial of 5. We initially have the multiplicand as 5 and multiplier as 4.
The numbers has the following bit representation:
0101 ;this is 5 (our multiplicand)
0100 ;this is 4 (our multiplier)
Assuming that we have the register sizes as 2 bytes, we can easily calcualte our factorial for such small numbers. We first perform a logical left shift operation on our multiplicand, and then perform a logical rightShift on our multiplier.
If our rightShift operation yields a carry bit, then we should add our multiplicand to our result label,
and then after that, we perform a logical left shift operation on our multiplicand.
In the else case, you do not add anything to the result, but everything else remains the same.
After all this, we check to see whether our multiplier is zero or not. If it is not zero then repeat the process. Once it becomes zero, we preserve our result value and then this result value becomes our next multiplicand. And our next multiplier becomes the (n - 1).
We keep repeating all this process until n becomes zero.
It might sound confusing at first, but if you do the paper work, you'll get a much better idea.
Hope I was able to help 🙂 
