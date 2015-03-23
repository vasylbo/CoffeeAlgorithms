sorting = require('./sorting')


testOrder = (arr) ->
  last = arr[0]
  for curr in arr[1..]
    if curr < last then return false
    last = curr
  true


testSort = (sortAlg) ->
  for j in [0..20]
    testArr = for i in [1..50] then Math.abs Math.random() * 100
    result = sortAlg testArr
    throw new Error("#{sortAlg} fails sort") if not testOrder(result)
  true


testSort sorting.mergeSort
testSort sorting.insertionSort




