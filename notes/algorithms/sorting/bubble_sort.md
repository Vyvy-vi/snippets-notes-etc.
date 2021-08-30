# Bubble Sort

Bubble sort repeatedly steps through the list, compares adjacent elements and swaps them if they are in the wrong order.
The pass through the list is repeated until the list is sorted. 
Slighly better version - Use the fact that the largest numbers get pushed to the indices at the end after each pass, thus we won't need to re-check those subsequent pairs.

## Psuedo-code
```
Repeat n - 1 times
  For i from 0 to n - 2
    If elements at indices i and i + 1 out of order
      Swap them
  If no swaps
    Quit
```

Slightly better version -
```
While n > 2
  For i from 0 to n - 2
    If elements at indices i and i + 1 out of order
      Swap them
  Decrement n by 1
```

## Complexity
- Total runs = `(n - 1) . (n - 1)` = `n^2 - 2n + 1` ~= `n^2`
- Complexity- `O(n^2)` (avg, and worst case)
- For slightly sorted lists, Bubble sort can perform better. Esp. for pre-sorted list, Bubble sort is `O(n)`

## Implementation

```c
int bubble_sort(int arr[], int len)
{
    for (int i = 0; i < len-2; i++)
    {
        int swaps = 0;
        for (int j = 0; j < len - 1 ; j++)
        {
            if (arr[j] > arr[j+1])
            {
                int temp = arr[j];
                arr[j] = arr[j+1];
                arr[j+1] = temp;
                swaps++;
            }
        }
        if (swaps == 0)
        {
            break;
        }
    }
}
```
(ref: https://www.wikiwand.com/en/Bubble_sort)
