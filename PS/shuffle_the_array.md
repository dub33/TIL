# Problem   
[Given the array nums consisting of 2n elements in the form [x1,x2,...,xn,y1,y2,...,yn].   

Return the array in the form [x1,y1,x2,y2,...,xn,yn].](https://leetcode.com/problems/shuffle-the-array/)  
Input: nums = [2,5,1,3,4,7], n = 3   
Output: [2,3,5,4,1,7]        

# Solution 

```cpp	
class Solution {
public:
    vector<int> shuffle(vector<int>& nums, int n) {
        vector<int> ans;
        
        auto it = nums.begin();
        int size = nums.size();
        
        int start = 0;
        int half = n;
        while (start < n)
        {
            ans.push_back(nums[start++]);
            ans.push_back(nums[half++]);
        }
        return ans;
    }
};
```
Time Complexity : O(logN)   
Space Complexity : O(N)