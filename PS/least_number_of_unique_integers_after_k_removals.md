# Problem   
[Given an array of integers arr and an integer k. Find the least number of unique integers after removing exactly k elements.](https://leetcode.com/problems/least-number-of-unique-integers-after-k-removals/)  
Input: arr = [4,3,1,1,3,3,2], k = 3   
Output: 2      

# Solution 

```cpp	
struct compare
{
    bool operator()(const pair<int, int>& a, const pair<int, int>& b)
    {
        return a.second < b.second;
    }
} compare;
class Solution {
public:
    int findLeastNumOfUniqueInts(vector<int>& arr, int k) {
        unordered_map<int, int> map;
        for (auto n : arr)
        {
            ++map[n];
        }
        
        vector<pair<int, int>> vec;
        for (auto n : map)
        {
            vec.push_back({n.first, n.second});
        }
        sort(vec.begin(), vec.end(), compare);
        
        auto it = vec.begin();
        int res = vec.size();
        while (it != vec.end() && k-- > 0)
        {
            --it->second;
            if (it->second == 0)
            {
                ++it;
                --res;
            }
        }
        return res;
    }
};
```
Time Complexity : O(NlogN)   
Space Complexity : O(N)