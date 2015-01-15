
%default parameters for waveforms:
amplitude=3; freq=20; time=0:0.001:1;
%load theremin data
load data1
%ask user for input
sel = input('1.  Sine Wave\n2.  Square Wave\n3.  WedgeWave\n4.  Theremin\nPlease Select one of the options: ');
sel2 = input('1. Enter "a" to change the amplitude\n2. Enter "b" to change the frequency\n3. Enter "c" to change both\n4. Enter "d" to change the amplitude of the theremin\nPlease select one of the options: ','s');

if(sel==4 && sel2~='d')
    disp('Wrong Choice!');
else
%check menu 2
switch sel2
    case 'a'
        amplitude = input('Enter the desired amplitude: ');
    case 'b' 
        freq = input('Enter the desired frequency: ');
    case 'c' 
        amplitude = input('Enter the desired amplitude: ');
        freq = input('Enter the desired frequency: ');
    case 'd' 
        %check for bad selection:
        if(sel~=4)
            disp('Wrong Choice!');
        else
        %play theremin
        theremin_amp = input('Enter the desired amplitude for the theremin: ');
        theremin_data = data1*theremin_amp;
        disp('Playing theremin!');
        sound(theremin_data);
        plot(1:120, data1(1:120));
        end
    otherwise 
        disp('Wrong choice!');
end
if(sel2~='d') 
    sine_wave = amplitude*sin(2*pi*freq*time);
    %sq_wave = amplitude*square(2*pi*freq*time, 50);
    sq_wave = amplitude*square(2*pi*freq*time, 50);
    wd_wave = amplitude*sawtooth(2*pi*freq*time);
    switch(sel)
        case 1 
            plot(time,sine_wave);
        case 2 
            plot(time,sq_wave);
        case 3 
            plot(time,wd_wave);
        otherwise 
            disp('Error');
    end
end
end

    
            
    
        