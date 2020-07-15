# Problem   
[Given two numbers, hour and minutes. Return the smaller angle (in degrees) formed between the hour and the minute hand.](https://leetcode.com/explore/challenge/card/july-leetcoding-challenge/545/week-2-july-8th-july-14th/3390/)   

# Solution  
시침(hour hand)은 1시간에 30도 + 1분에 0.5도씩 움직인다.  
분침(minute hand)은 1분에 6도씩 움직인다.   
```cpp	
class Solution 
{
public:
    double angleClock(int hour, int minutes) 
    {
        auto hourHand = hour * 30 + minutes * 0.5;        
        auto minuteHand = minutes * 6;        
        auto diff = abs(hourHand - minuteHand);
        
        return min(diff, 360 - diff);
    }
};  
```
Time Complexity : O(1)  
Space Complexity : O(1)