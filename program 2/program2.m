%default parameters for waveforms:
amplitude=3; freq=20;
%time=0:0.001:1;
time = 0:.001:.1; %100 samples
%load theremin data
%load data1


w=1;
while(w)
%display menu and wait for user input: 
menu1 = menu('Sine', 'Square', 'Wedge', 'Theremin', 'Exit');
%returns menu1 = (1-5)
switch(menu1)
    case 1 %sine wave
    %if user selects 1-3 (sine, square, or wedge) display another menu:
    menu2 = menu('Change amplitude', 'Change frequency', 'Change both');
    switch(menu2)
        case 1
            amplitude = input('Enter the desired amplitude');
        case 2 
            freq = input('Enter the desired frequency');
        case 3 
            amplitude = input('Enter the desired amplitude');
            freq = input('Enter the desired frequency');
    end
    sine_wave = amplitude*sin(2*pi*freq*time);
    plot(time, sine_wave);
    case 2 %square wave
    %if user selects 1-3 (sine, square, or wedge) display another menu:
    menu2 = menu('Change amplitude', 'Change frequency', 'Change both');
    switch(menu2)
        case 1
            amplitude = input('Enter the desired amplitude');
        case 2 
            freq = input('Enter the desired frequency');
        case 3 
            amplitude = input('Enter the desired amplitude');
            freq = input('Enter the desired frequency');
    end
    sq_wave = amplitude*square(2*pi*freq*time, 50);
    plot(time, square_wave);
    case 3 %wedge wave 
    %if user selects 1-3 (sine, square, or wedge) display another menu:
    menu2 = menu('Change amplitude', 'Change frequency', 'Change both');
    switch(menu2)
        case 1
            amplitude = input('Enter the desired amplitude');
        case 2 
            freq = input('Enter the desired frequency');
        case 3 
            amplitude = input('Enter the desired amplitude');
            freq = input('Enter the desired frequency');
    end
    wd_wave = amplitude*sawtooth(2*pi*freq*time);
    plot(time, wd_wave);
    case 4 %theremin
        menu2 = menu('Amplitude', 'Sound');
        switch(menu2)
            case 1
                theremin_amp = input('Enter the desired theremin amplitude');
            case 2
                repeat_num = input('How many times should the sound be played?');
                
        end
    case 5 %exit
        w = 0; %break main while loop
end
end
        
    
    
    
    