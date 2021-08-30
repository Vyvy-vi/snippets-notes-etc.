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
void selection_sort(int arr[], int len)
{
    for (int i = 0; i < len; i++)
    {
        int smallest_num = arr[i];
        int target_index = i;
        for (int j = i; j < len; j++)
        {
            if (arr[j] < smallest_num)
            {
                smallest_num = arr[j];
                target_index = j;
            }
        }
        int temp = arr[i];
        arr[i] = arr[target_index];
        arr[target_index] = temp;
    }
}

// n + (n - 1) + (n - 2) + ... + 1 = n(n+1) / 2 => O(n^2)
```
(ref: https://www.wikiwand.com/en/Selection_sort)
