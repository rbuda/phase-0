var odd = [1, 2, 3]
var even = [2,4,6,8]

function sumArray(array) {
  for (
    var
      counter = 0,              // The iterator
      length = array.length,  // Cache the array length
      sum = 0;                // The total amount
      counter < length;         // The "for"-loop condition
      sum += array[counter++]   // Add number on each iteration
  );
  // console.log(sum);
}

sumArray(odd)
sumArray(even)

function mean(array) {
  for (
    var
      counter = 0,              // The iterator
      length = array.length,  // Cache the array length
      sum = 0;                // The total amount
      counter < length;         // The "for"-loop condition
      sum += array[counter++]   // Add number on each iteration
  );
  avg = sum / length
  // console.log(avg);
}

mean(odd)
mean(even)

function median(array) {
    var middle = Math.floor(array.length / 2);
    if ((array.length % 2) == 1)
        return (array[middle]);
    else 
        console.log(array[middle - 1]);
    	console.log(array[middle]);
}

median(odd)
median(even)