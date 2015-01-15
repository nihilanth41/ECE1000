temp_c = input('Enter the temperature in degrees C: ');
new_units = input('Do you want to convert to Kelvin or Fahrenheit? (K/F): ', 's');
if(new_units == 'K' || new_units == 'k')
    temp_k = (temp_c + 273.15);
    fprintf('The temperature in degrees K is: %f\n', temp_k);
elseif(new_units == 'F' || new_units == 'f')
    temp_f = ((9/5)*temp_c)+32;
    fprintf('The temperature in degrees F is: %f\n', temp_f);
else disp('Error: Enter F for Fahrenheit or K for Kelvin');
end