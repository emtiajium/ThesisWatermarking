This is a thesis project titled "A Zero-Watermarking Scheme Based on Discrete Hartley Transform for Audio Signal". Read details from "FinalReport.pdf" located on "AboutProject" folder. For testing code on your machine, go to "SourceCode" folder and run "testingattack.m" file into Matlab. One thing you should do before doing this, you have to change the location of the sound file at line 4. Now details about all files one by one.

1. attack.m -> This is a test file of the whole project, put the original sound file and attacked file, and run to see NC and BER.

2. audioP.m -> A file which processed sound file according to my scheme.

3. bigmod.m -> Return the result of a method, which is ( b ^ p ) mod m; here b, p , and m are an integer number.

4. dht.m -> Return coefficients of Discrete Hartley Transform of a sound file.

5. imageP.m -> Convert an image into a binary image.

6. ncber.m -> Return Normalized Coefficient and Bit Error Rate of the original sound and attacked sound.

7. prim.m -> Generate prime number using Sieve method.

8. testingattack.m -> As I said earlier.