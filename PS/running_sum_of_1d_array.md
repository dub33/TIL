# Problem   
[Given an array nums. We define a running sum of an array as runningSum[i] = sum(nums[0]…nums[i]).   

Return the running sum of nums.](https://leetcode.com/problems/running-sum-of-1d-array)  
Input: nums = [1,2,3,4]   
Output: [1,3,6,10]   

# Solution 

```cpp	
class Solution {
public:
    vector<int> runningSum(vector<int>& nums) {
        vector<int> ans;
        int sum = 0;
        for(vector<int>::iterator it = nums.begin(); it != nums.end(); ++it)
        {
            sum += *it;
            ans.push_back(sum);
        }
        return ans;
    }
};
```
Time Complexity : O(N)   
Space Complexity : O(N)