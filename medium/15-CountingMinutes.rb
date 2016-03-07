# Have the function CountingMinutes(str) take the str parameter being passed which will be two times 
# (each properly formatted with a colon and am or pm) separated by a hyphen and return the total number 
# of minutes between the two times. The time will be in a 12 hour clock format. For example: if str is 
# 9:00am-10:00am then the output should be 60. If str is 1:00pm-11:00am the output should be 1320. 

def CountingMinutes(str)
  times = str.split("-")
  time1, time2 = convert_min(times[0]), convert_min(times[1])   
  
  if time1 <= time2
    time2 - time1
  else
    1440 - (time1 - time2)
  end
end

def convert_min(str)
  sep_str = str.split(":")
  hour_raw = sep_str[0].to_i
  minutes = sep_str[1][0..1].to_i
  
  if str.include?("a")
    hour = (hour_raw == 12)? 0 : (hour_raw * 60)
  else
    hour = (hour_raw == 12)? 720 : ((hour_raw + 12) * 60)
  end
  
  hour + minutes
end
         
   