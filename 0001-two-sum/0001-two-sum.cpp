class Solution {
public:
    vector<int> twoSum(vector<int>& nums, int target) {
        map<int, int> m;
        vector<int> v;
        m[nums[0]] = 1;
        for(int i=1;i<nums.size();i++){
            if(m[target - nums[i]]){
                v.push_back(m[target - nums[i]] - 1);
                v.push_back(i);
                return v;
            }else m[nums[i]]  = i + 1;
        }
        return v;
    }
};