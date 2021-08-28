# Selection Sort

Selection Sort is an in-place comparision sorting algrithm.
It loops over indices present in the array, finds the smallest element from that index to the end of the array and swaps the smallest number with the element at that index.

## Psuedo-code
```
For i from 0 to n - 1
  Find smallest item between the elements at index i and the last item
  Swap smallest item with the element at index i
```

## Complexity
- The inner loop runs `n` times, at index = 0.
- Consequent passes have inner loops starting from increasing iterator.
- Thus, the total runs = `n + (n - 1) + (n - 3) + ... + 1` = `n . (n + 1) / 2`
- Complexity- `O(n^2)`

## Implementation
```c
#include <stdio.h>

int main(void)
{
    int len = 10;
    int nums[] = {2, 5, 9, 3, 1, 7, 4, -5, -1, 0};
  
  
    printf("Unsorted Array: \n");
    for (int i = 0; i < len; i++)
    {
        printf("%d ", nums[i]);
    }
    printf("\n");

  
    for (int i = 0; i < len; i++)
    {
        int smallest_num = nums[i];
        int target_index = i;
        for (int j = i; j < len; j++)
        {
            if (nums[j] < smallest_num)
            {
                smallest_num = nums[j];
                target_index = j;
            }
        }
        int temp = nums[i];
        nums[i] = nums[target_index];
        nums[target_index] = temp;
    }
  
  
    printf("Sorted Array: \n");
    for (int i = 0; i < len; i++)
    {
        printf("%d ", nums[i]);
    }
    printf("\n");

}

// n + (n - 1) + (n - 2) + ... + 1 = n(n+1) / 2 => O(n^2)
```
(ref: https://www.wikiwand.com/en/Selection_sort)
