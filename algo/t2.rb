require 'debug'
def remove_duplicates1(nums)
    left = 1
    # debugger
    for right in 1...nums.length
        if nums[right] != nums[right - 1]
            nums[left] = nums[right]
            left += 1
        end
    end
    # left
    nums
end

def remove_duplicates(nums)
  left = 1
  for right in 1...nums.length
    if nums[right] != nums[right -1]
      nums[left] = nums[right] if right > left
      left += 1
    end
  end
  nums
end
# p remove_duplicates [1,1,1,2]
# p remove_duplicates1 [1,1,1,2]
p remove_duplicates [1,2,3,3,4]
p remove_duplicates1 [1,2,3,3,4]
# puts remove_duplicates([1,1,1,2])
p remove_duplicates ([0,0,1,1,1,2,2,3,3,4,5,5,5,6])
p remove_duplicates1([0,0,1,1,1,2,2,3,3,4,5,5,5,6])
