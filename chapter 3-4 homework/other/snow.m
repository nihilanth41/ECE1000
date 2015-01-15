%Script to ask the user the number of inches of rain.
%Calls a function to return the equivalent number of inches of snow.
%

inches_rain = input('Enter the number of inches of rain: ');
equivalent_snow = rain2snow(inches_rain);
fprintf('%f inches of rain is equivalent to %f inches of snow\n', inches_rain, equivalent_snow);



