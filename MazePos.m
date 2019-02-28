function [previousValue] = MazePos(previousValue, TriggerValue)


if previousValue == 1 && TriggerValue == 1
 [y, Fs] = audioread('Mice.wav');
 previousValue = 2;
 soundsc(y,Fs);
 l = length(y)./Fs;
 pause(l);
 

else if previousValue == 1 && TriggerValue == 2
 [y, Fs] = audioread('Exotic Flowers.wav'); 
 previousValue = 3;
 soundsc(y,Fs);
 l = length(y)./Fs;
 pause(l);


else if previousValue == 1 && TriggerValue == 3
 [y, Fs] = audioread('Burb Tweets.wav'); 
 previousValue = 4;
 soundsc(y,Fs);
 l = length(y)./Fs;
 pause(l);


else if previousValue == 2 && TriggerValue == 1
[y, Fs] = audioread('Face First.wav');
 soundsc(y,Fs);
 previousValue = 2;
 l = length(y)./Fs;
 pause(l);
 


else if previousValue == 2 && TriggerValue == 2
[y, Fs] = audioread('Wildflowers.wav');
previousValue = 6;
 soundsc(y,Fs);
  l = length(y)./Fs;
 pause(l);


else if previousValue == 2 && TriggerValue == 3
[y, Fs] = audioread('Chestnut Tree.wav'); 
previousValue = 7;
 soundsc(y,Fs);
  l = length(y)./Fs;
 pause(l);


else if previousValue == 3 && TriggerValue == 1
[y, Fs] = audioread('Chestnut Tree.wav'); 
previousValue = 7;
 soundsc(y,Fs);
  l = length(y)./Fs;
 pause(l);


else if previousValue == 3 && TriggerValue == 2
[y, Fs] = audioread('Wildflowers.wav'); 
previousValue = 8;
 soundsc(y,Fs);
  l = length(y)./Fs;
 pause(l);


else if previousValue == 3 && TriggerValue == 3
 [y, Fs] = audioread('Bugs.wav'); 
 previousValue = 9; 
 soundsc(y,Fs);
  l = length(y)./Fs;
 pause(l);


else if previousValue == 4 && TriggerValue == 1
 [y, Fs] = audioread('Bugs.wav'); 
 previousValue = 9;
 soundsc(y,Fs);
  l = length(y)./Fs;
 pause(l);

else if previousValue == 4 && TriggerValue == 2
[y, Fs] = audioread('Bats.wav');
 soundsc(y,Fs);
 previousValue = 4;
 l = length(y)./Fs;
 pause(l);


else if previousValue == 4 && TriggerValue == 3
 [y, Fs] = audioread('Gentle Breeze.wav'); 
 previousValue = 11;
 soundsc(y,Fs);
  l = length(y)./Fs;
 pause(l);


else if previousValue == 6 && TriggerValue == 1
[y, Fs] = audioread('Large Flowers.wav'); 
previousValue = 12;
 soundsc(y,Fs);
  l = length(y)./Fs;
 pause(l);


else if previousValue == 6 && TriggerValue == 2
 [y, Fs] = audioread('Wide Passage.wav'); 
 previousValue = 13;
 soundsc(y,Fs);
  l = length(y)./Fs;
 pause(l);


else if previousValue == 6 && TriggerValue == 3
 [y, Fs] = audioread('Dead End V2.wav'); 
 previousValue = 6;
 soundsc(y,Fs);
 l = length(y)./Fs;
 pause(l);


else if previousValue == 7 && TriggerValue == 1
[y, Fs] = audioread('Large Flowers.wav'); 
previousValue = 12;
 soundsc(y,Fs);
  l = length(y)./Fs;
 pause(l);


else if previousValue == 7 && TriggerValue == 2
[y, Fs] = audioread('Wide Passage.wav'); 
previousValue = 13;
 soundsc(y,Fs);
  l = length(y)./Fs;
 pause(l);


else if previousValue == 7 && TriggerValue == 3
[y, Fs] = audioread('Leaves.wav'); 
previousValue = 15;
 soundsc(y,Fs);
  l = length(y)./Fs;
 pause(l);


else if previousValue == 8 && TriggerValue == 1
 [y, Fs] = audioread('Wide Passage.wav'); 
 previousValue = 13; 
 soundsc(y,Fs);
  l = length(y)./Fs;
 pause(l);


else if previousValue == 8 && TriggerValue == 2
[y, Fs] = audioread('Dead End V2.wav'); 
previousValue = 8;
 soundsc(y,Fs);
 l = length(y)./Fs;
 pause(l);


else if previousValue == 8 && TriggerValue == 3
[y, Fs] = audioread('Leaves.wav'); 
previousValue = 15;
 soundsc(y,Fs);
  l = length(y)./Fs;
 pause(l);


else if previousValue == 9 && TriggerValue == 1
[y, Fs] = audioread('Narrow Lighted Path.wav');
previousValue = 16;
 soundsc(y,Fs);
  l = length(y)./Fs;
 pause(l);


else if previousValue == 9 && TriggerValue == 2
[y, Fs] = audioread('Dead End V3.wav'); 
previousValue = 9;
 soundsc(y,Fs);
  l = length(y)./Fs;
 pause(l);

else if previousValue == 9 && TriggerValue == 3
[y, Fs] = audioread('Leaves.wav'); 
previousValue =15;
 soundsc(y,Fs);
  l = length(y)./Fs;
 pause(l);


else if previousValue == 11 && TriggerValue == 1
[y, Fs] = audioread('Narrow Lighted Path.wav'); 
previousValue = 16;
 soundsc(y,Fs);
  l = length(y)./Fs;
 pause(l);


else if previousValue == 11 && TriggerValue == 2
[y, Fs] = audioread('Dead End V2.wav'); 
previousValue = 11;
 soundsc(y,Fs);
  l = length(y)./Fs;
 pause(l);

else if previousValue == 11 && TriggerValue == 3
[y, Fs] = audioread('Too Small.wav'); 
previousValue = 11;
 soundsc(y,Fs);
 l = length(y)./Fs;
 pause(l);


else if previousValue == 12 && TriggerValue == 1
[y, Fs] = audioread('Muddy.wav'); 
previousValue = 18;
 soundsc(y,Fs);
  l = length(y)./Fs;
 pause(l);


else if previousValue == 12 && TriggerValue == 2
[y, Fs] = audioread('Dead End V2.wav'); 
previousValue = 12;
 soundsc(y,Fs);
 l = length(y)./Fs;
 pause(l);


else if previousValue == 12 && TriggerValue == 3
[y, Fs] = audioread('Gothic Statue.wav'); 
previousValue = 21;
 soundsc(y,Fs);
  l = length(y)./Fs;
 pause(l);

else if previousValue == 13 && TriggerValue == 1
[y, Fs] = audioread('Muddy.wav'); 
previousValue =18;
 soundsc(y,Fs);
  l = length(y)./Fs;
 pause(l);

else if previousValue == 13 && TriggerValue == 2
[y, Fs] = audioread('Dead End V2.wav'); 
previousValue = 13;
 soundsc(y,Fs);
  l = length(y)./Fs;
 pause(l);


else if previousValue == 13 && TriggerValue == 3
[y, Fs] = audioread('Red Eyes.wav'); 
previousValue = 13;
 soundsc(y,Fs);
  l = length(y)./Fs;
 pause(l);


else if previousValue == 15 && TriggerValue == 1
 [y, Fs] = audioread('Muddy.wav'); 
 previousValue =18;
 soundsc(y,Fs);
  l = length(y)./Fs;
 pause(l);


else if previousValue == 15 && TriggerValue == 2
[y, Fs] = audioread('Red Eyes.wav'); 
previousValue = 15;
 soundsc(y,Fs);
  l = length(y)./Fs;
 pause(l);

else if previousValue == 15 && TriggerValue == 3
[y, Fs] = audioread('Hare.wav'); 
previousValue = 22;
 soundsc(y,Fs);
 l = length(y)./Fs;
 pause(l);

else if previousValue == 16 && TriggerValue == 1
 [y, Fs] = audioread('Gothic Statue.wav'); 
 previousValue = 21;
 soundsc(y,Fs);
  l = length(y)./Fs;
 pause(l);


else if previousValue == 16 && TriggerValue == 2
[y, Fs] = audioread('Hare.wav'); 
previousValue =22;
 soundsc(y,Fs);
  l = length(y)./Fs;
 pause(l);


else if previousValue == 16 && TriggerValue == 3
[y, Fs] = audioread('Muddy.wav'); 
previousValue =23;
 soundsc(y,Fs);
  l = length(y)./Fs;
 pause(l);


else if previousValue == 18 && TriggerValue == 1
[y, Fs] = audioread('Dead End V3.wav'); 
previousValue = 18;
 soundsc(y,Fs);
  l = length(y)./Fs;
 pause(l);


else if previousValue == 18 && TriggerValue == 2
[y, Fs] = audioread('Exit.wav');
previousValue = 0;
 soundsc(y,Fs);
  l = length(y)./Fs;
 pause(l);


else if previousValue == 18 && TriggerValue == 3
[y, Fs] = audioread('LeafMouth.wav'); 
previousValue = 18;
 soundsc(y,Fs);
 l = length(y)./Fs;
 pause(l);


else if previousValue == 21 && TriggerValue == 1
 [y, Fs] = audioread('Dead End V3.wav'); 
 previousValue = 21; 
 soundsc(y,Fs);
  l = length(y)./Fs;
 pause(l);

else if previousValue == 21 && TriggerValue == 2
[y, Fs] = audioread('LeafMouth.wav'); 
previousValue = 21;
 soundsc(y,Fs);
 l = length(y)./Fs;
 pause(l);
 
else if previousValue == 21 && TriggerValue == 3
[y, Fs] = audioread('Exit.wav');
previousValue = 0;
 soundsc(y,Fs);
  l = length(y)./Fs;
 pause(l);

 else if previousValue == 22 && TriggerValue == 1
 [y, Fs] = audioread('Dead End V3.wav'); 
 previousValue = 22;
 soundsc(y,Fs);
 l = length(y)./Fs;
 pause(l);

else if previousValue == 22 && TriggerValue == 2
 [y, Fs] = audioread('Exit.wav');
 previousValue = 0;
 soundsc(y,Fs);
  l = length(y)./Fs;
 pause(l);


else if previousValue == 22 && TriggerValue == 3
[y, Fs] = audioread('Exit.wav');
previousValue = 0;
 soundsc(y,Fs);
  l = length(y)./Fs;
 pause(l);


else if previousValue == 23 && TriggerValue == 1
[y, Fs] = audioread('LeafMouth.wav'); 
previousValue = 23;
 soundsc(y,Fs);
  l = length(y)./Fs;
 pause(l);

else if previousValue == 23 && TriggerValue == 2
[y, Fs] = audioread('Exit.wav');
previousValue = 0;
 soundsc(y,Fs);
  l = length(y)./Fs;
 pause(l);


else if previousValue == 23 && TriggerValue == 3
[y, Fs] = audioread('Exit.wav'); 
previousValue = 0;
 soundsc(y,Fs);
  l = length(y)./Fs;
 pause(l);

    end
    end
    end
    end
    end
    end
    end
    end
    end
    end
    end
    end
    end
    end
    end
    end
    end
    end
    end
    end
    end
    end
    end
    end
    end
    end
    end
    end
    end
    end
    end
    end
    end
    end
    end
    end
    end
    end
    end
    end
    end
    end
    end
    end
    end
    end
    end
    end
    end
    end
end
 
