class Solution {
public:
    vector<int> twoSum(vector<int>& nums, int target) {
        unordered_map<int, int> m;
        m[nums[0]] = 1;
        for(int i=1;i<nums.size();i++){
            if(m[target - nums[i]]){
                return {m[target - nums[i]] - 1, i};
            }else m[nums[i]] = i + 1;
        }
        return {};
    }
};