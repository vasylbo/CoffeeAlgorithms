insertionSort = (arr) ->
  for j in [1...arr.length]
    key = arr[j]
    i = j - 1
    while i >= 0 and arr[i] > key
      arr[i + 1] = arr[i]
      i = i - 1
    arr[i + 1] = key
  return arr


merge = (left, right) ->
  result = []

  while left.length > 0 and right.length > 0
    result.push if left[0] >right[0]
      right.shift()
    else left.shift()

  result.push(left...)
  result.push(right...)

  result


mergeSort = (input) ->
  if input.length > 1
    middle = input.length >> 1
    left = mergeSort(input[...middle])
    right = mergeSort(input[middle...])

    merge(left, right)
  else
    return input


module.exports =
  insertionSort: insertionSort
  mergeSort: mergeSort