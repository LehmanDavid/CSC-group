//Median finding using randomized select  

import 'dart:math';

//partiation
int partition(array, p, r){
int x = array[r];
int i = p-1;
for(int j = p; j <= r; j++){
    if(array[j] < x){
      i++;
      if (i != j) {
      swap(array, i, j);
      }
    }    
}

if (i != r) {
   swap(array, i+1, r);  
} 
return i+1;
}

void swap(List array, int i, int j) {
  int temp = array[i];
  array[i] = array[j];
  array[j] = temp;
}


// randomized partiation
int randomized_Partiation(array, p, r){
var rand = new Random();
dynamic i = rand.nextInt(r-p)+p;
swap(array, r, i);
return partition(array, p, r);
}


//randomized select
int randomized_Select(array, p, r, i){
  if(p == r){
    return array[p];
  }
int q = randomized_Partiation(array, p, r);      
dynamic k = q-p+1;
if(i == k){
  return array[q];
}
 else if(i < k){
return randomized_Select(array, p, q-1, i);
}
else{
  return randomized_Select(array, q+1, r, i-k);
}
}



void main(){
 List array = [ 8, 45, 2, 1, 9, 6, 34, 4 ];
 int middle = array.length~/2;
print(array);
randomized_Select(array, 0, array.length-1, middle);
print(array);

if(array.length % 2 == 0){
  print((array[middle-1] + array[middle])~/2);

}
else{
  print(array[middle]);
}
}
