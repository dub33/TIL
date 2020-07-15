# Problem   
[Given an input string, reverse the string word by word.](https://leetcode.com/explore/challenge/card/july-leetcoding-challenge/546/week-3-july-15th-july-21st/3391)  
Input: "the sky is blue"
Output: "blue is sky the"

# Solution 

```cpp	
class Solution 
{
public:
    string reverseWords(string s) 
    {
        string ans;        
        int end = s.size()-1;
        
        for (int i = end; i >= 0; --i)
        {
            if (s[i] == ' ')
            {
                if (end - i != 0)
                {
                    if (ans.size() != 0)
                        ans.append(" ");
                    ans.append(s, i + 1, end - i);
                }
                end = i - 1;
            }
           else if (i == 0 && s[i] != ' ')
           {
               if (ans.size() != 0)
                    ans.append(" ");
               ans.append(s, i, end + 1);
           }
        }
        
        return ans;
    }
};
```
Time Complexity : O(N)   
Space Complexity : O(1)