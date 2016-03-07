# Have the function MostFreeTime(strArr) read the strArr parameter being passed which will represent 
# a full day and will be filled with events that span from time X to time Y in the day. The format 
# of each event will be hh:mmAM/PM-hh:mmAM/PM. For example, strArr may be 
# ["10:00AM-12:30PM","02:00PM-02:45PM","09:10AM-09:50AM"]. Your program will have to output the longest 
# amount of free time available between the start of your first event and the end of your last event in 
# the format: hh:mm. The start event should be the earliest event in the day and the latest event should 
# be the latest event in the day. The output for the previous input would therefore be 01:30 
# (with the earliest event in the day starting at 09:10AM and the     latest event ending at 02:45PM). 
# The input will contain at least 3 events and the events may be out of order. 

def to_min(str) # argument form: "12:15PM"
  time = str.split(":")
  hour = time[0]
  if str.include?("A")
    hour = (hour == "12")? 0 : (hour.to_i * 60)
  else
    hour = (hour == "12")? 720 : ((hour.to_i + 12) * 60)
  end
  min = time[1][0..1].to_i
  hour + min
end

def to_hour(num) # argument form: 456
  hour = num / 60
  min = num % 60
  if hour < 10
    hour = "0#{hour}"
  else
    hour = hour.to_s
  end
  
  if min < 10
    min = "0#{min}"
  else
    min = min.to_s
  end
  hour + ":" + min
end

def MostFreeTime(strArr)
  time_min =    strArr.map do |sect|
                    times = sect.split("-")
                    [to_min(times[0]), to_min(times[1])]
                end.sort
  
  idx = 0
  max_gap = 0
  while idx < (time_min.length - 1)
    gap = time_min[idx + 1][0] - time_min[idx][1]
    if gap > max_gap
      max_gap = gap
    end
    idx += 1
  end
  to_hour(max_gap)       
end
         
   