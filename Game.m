load("clapMeanOneChannel.mat", "clapMeanOneChannel")
load("fingerSnapMeanOneChannel.mat", "fingerSnapMeanOneChannel")
load("tableMeanOneChannel.mat", "tableMeanOneChannel")

frameLength = 32768;

deviceReader = audioDeviceReader(...
    'SamplesPerFrame', 32768,...
    'SampleRate', 44100);

condition = true;

threshold = 2;

if ~isempty(instrfind)
    fclose(instrfind);
    delete(instrfind);
end

communication = serial('/dev/cu.usbmodem14141', 'BaudRate', 19200);
fopen(communication);

triggerValue = 0;
previousValue = 1;

[y1, Fs1] = audioread('Start.wav'); 
soundsc(y1,Fs1);
l = length(y1)./Fs1;
pause(l);

while condition
    
    signalInput = deviceReader();
    
    m = length(signalInput);
    n = pow2(nextpow2(m));
    y = fft(signalInput, n);
    
    microphonePower1 = abs(y).^2/n;
    
    powerFingerSnap = abs(fingerSnapMeanOneChannel).^2/n;
    powerClap = abs(clapMeanOneChannel).^2/n;
    powerTable = abs(tableMeanOneChannel).^2/n;
    
    powerFingerSnapDownsample = downsample(powerFingerSnap, 2);
    kSnap = log(microphonePower1./powerFingerSnapDownsample);
    saitoDistanceFingerSnap = exp(kSnap) - kSnap - 1;
    saitoDistanceFingerSnapMean = mean(saitoDistanceFingerSnap);
    
    powerClapDownsample = downsample(powerClap, 2);
    kClap = log(microphonePower1./powerClapDownsample);
    saitoDistanceClap = exp(kClap) - kClap - 1;
    saitoDistanceClapMean = mean(saitoDistanceClap);
    
    powerTableDownsample = downsample(powerTable, 2);
    kTable = log(microphonePower1./powerTableDownsample);
    saitoDistanceTable = exp(kTable) - kTable - 1;
    saitoDistanceTableMean = mean(saitoDistanceTable);
    
    %disp(saitoDistanceTableMean);
    
    arr = 1:3;
    for i=0:2
        arr(1:i) = 3;
    end
    
    if saitoDistanceFingerSnapMean < threshold
        arr(1) = saitoDistanceFingerSnapMean;
        disp('This is a Snap');
    end
    
    if saitoDistanceClapMean < threshold
        arr(2) = saitoDistanceClapMean;
        disp('This is a Clap');
    end
    
    if saitoDistanceTableMean < threshold
        arr(3) = saitoDistanceTableMean;
        disp('This is a Table');
        
        %condition = false;
    end
    
    arr = sort(arr);
    
    if arr(1:1) == saitoDistanceFingerSnapMean
        triggerValue = 1;
        pause(2);
        fprintf(communication, triggerValue);
    end
    
    if arr(1:1) == saitoDistanceClapMean
        triggerValue = 2;
        pause(2);
        fprintf(communication, triggerValue);
    end
    
    if arr(1:1) == saitoDistanceTableMean
        triggerValue = 3;
        pause(2);
        fprintf(communication, triggerValue);
    end
    
    %disp(arr(1:1));
    
    %disp(saitoDistanceFingerSnap);
    
    previousValue = MazePos(previousValue, triggerValue);
    
    triggerValue = 0;
  
    disp(previousValue);
    
end

release(deviceReader);