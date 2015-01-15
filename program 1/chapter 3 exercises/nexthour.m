function [ next_hour ] = nexthour( hour )
if(hour == 12)
    next_hour = 1;
else next_hour = (hour+1);
end

