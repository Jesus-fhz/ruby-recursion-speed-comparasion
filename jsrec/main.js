const arr = ['a','b','c','d','e','f']

const recursiveEach =  (arr , indent = 0) => {
    //Recursive Strategy:
    //1. Remove the first item from array and print
    //2. Give the remaining items in the array in the recursive function
//     const first = 0; //['a'];
//     const rest = arr.slice(1) //['b']
    //ES6 WAY
    const [first, ...rest] = arr
    const spacing = Array(indent).fill('      ').join('');
    console.log(`${spacing} >>> starting recursive each ([${arr}], ${indent} )`);
    console.log((`${spacing} first value: ${first}`));    

    if (rest.length > 0){
        recursiveEach(rest, indent+1);
    }
    console.log(`${spacing} <<< returning from recursive_each([${arr}] , ${indent})`);

}

debugger;
recursiveEach(arr);