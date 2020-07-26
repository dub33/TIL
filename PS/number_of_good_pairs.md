# Problem   
[Given an array of integers nums.  

A pair (i,j) is called good if nums[i] == nums[j] and i < j.  

Return the number of good pairs.](https://leetcode.com/problems/number-of-good-pairs/)  
Input: nums = [1,2,3,1,1,3]   
Output: 4   
Explanation: There are 4 good pairs (0,3), (0,4), (3,4), (2,5) 0-indexed.        

# Solution 

```cpp	
class Solution {
public:
    int numIdenticalPairs(vector<int>& nums) {

        int cnt[101] = {};
        int res = 0;
        for (int n : nums)
        {
            res += cnt[n]++;
        }
        
        return res;
    }
};
```
Time Complexity : O(N)   
Space Complexity : O(1)