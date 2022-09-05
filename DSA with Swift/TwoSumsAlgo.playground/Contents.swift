func twoSum(_ nums: [Int], _ target: Int) -> [Int] {

    for i in 0..<nums.count{
        let value = abs(target - nums[i])
        for j in 1..<nums.count{
            if value == nums[j] {
                return [i,j]
            }
        }
    }

    return []
}
twoSum([3,2,4], 6)

