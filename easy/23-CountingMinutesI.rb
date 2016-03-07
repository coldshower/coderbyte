# Have the function CountingMinutesI(str) take the str parameter being passed which will be two times 
# (each properly formatted with a colon and am or pm) separated by a hyphen and return the total number 
# of minutes between the two times. The time will be in a 12 hour clock format. For example: if str is 
# 9:00am-10:00am then the output should be 60. If str is 1:00pm-11:00am the output should be 1320. 

def CountingMinutesI(str)
  str1 = str.split("-")
  time1 = convert(str1[0])
  time2 = convert(str1[1])
  
  if time1 < time2
    time2 - time1
  elsif time1 > time2
    1440 - (time1 - time2)
  else
    1440
  end         
end

def convert(time)
  time1 = time.split(":")
  hour = time1[0]
  if time.include?("a")
    if hour == 12
      hour = 0
    else
      hour = hour.to_i * 60
    end
    
  else
    if hour == 12
      hour = 720
    else
      hour = (hour.to_i + 12) * 60
    end
  end
  min = time1[1][0..1].to_i
  hour + min
end