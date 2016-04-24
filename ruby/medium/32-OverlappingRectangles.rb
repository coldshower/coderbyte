# Have the function OverlappingRectangles(strArr) read the strArr parameter being passed which will 
# represent two rectangles on a Cartesian coordinate plane and will contain 8 coordinates with the 
# first 4 making up rectangle 1 and the last 4 making up rectange 2. It will be in the following 
# format: ["(0,0),(2,2),(2,0),(0,2),(1,0),(1,2),(6,0),(6,2)"] Your program should determine the area 
# of the space where the two rectangles overlap, and then output the number of times this overlapping 
# region can fit into the first rectangle. For the above example, the overlapping region makes up a 
# rectangle of area 2, and the first rectangle (the first 4 coordinates) makes up a rectangle of area 
# 4, so your program should output 2. The coordinates will all be integers. If there's no overlap 
# between the two rectangles return 0. 

def rectmaker(arr)
    rect1x, rect1y, rect2x, rect2y = [], [], [], []
    arr.each_with_index do |arr, i|
        if i == 0
            arr.each_with_index do |coord, j|
                if j.even?
                    rect1x << coord
                else
                    rect1y << coord
                end
            end
        else
            arr.each_with_index do |coord2, k|
                if k.even?
                    rect2x << coord2
                else
                    rect2y << coord2
                end
            end
        end
    end
    [[rect1x.min, rect1x.max, rect1y.min, rect1y.max], 
    [rect2x.min, rect2x.max, rect2y.min, rect2y.max]]
end

def parser(strArr)
    arr = strArr[0].scan(/-?\d+/).map(&:to_i)
    rectmaker([arr[0..7], arr[8..15]])
end

def area(arr)
    length = arr[1] - arr[0]
    width = arr[3] - arr[2]
    (length * width).abs
end

def overlap(arr)
    lowerx = [arr[0][0], arr[1][0]].max
    higherx = [arr[0][1], arr[1][1]].min
    lowery = [arr[0][2],arr[1][2]].max
    highery = [arr[0][3],arr[1][3]].min
    if (arr[0][0]..arr[0][1]).include?(lowerx) && (arr[0][0]..arr[0][1]).include?(higherx)
        ((higherx - lowerx) * (highery - lowery)).abs
    else
        fakse
    end
end

def OverlappingRectangles(strArr)
    arr = parser(strArr)
    area1 = area(arr[0])
    intersect = overlap(arr)
    if intersect
        area1/intersect
    else
        return false
    end
end
   