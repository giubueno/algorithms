from typing import List
from random import randint

def swap(s: int, e: int, nums: List[int]):
    aux = nums[s]
    nums[s] = nums[e]
    nums[e] = aux

def sortArray(nums: List[int]) -> List[int]:
    return sort(0, len(nums) - 1, nums)
    
def sort(first: int, last: int, nums: List[int]) -> List[int]:
    if first >= last:
        return nums

    low = first
    pivot = first + 1
    high = last

    while low < high:
        if nums[low] <= nums[pivot]:
            low += 1
            continue
        
        if nums[high] >= nums[pivot]:
            high -= 1
            continue
        
        swap(low, high, nums)

    sort(first, pivot - 1, nums)
    sort(pivot, last, nums)

    if nums[pivot-1] > nums[pivot]:
        swap(pivot-1, pivot, nums) 
    
    return nums
