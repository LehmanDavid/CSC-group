//Countig-sort

void Counting_sort(array, list, k){
  int n=array.length;
List<int> temp= List.filled( k+1, 0 );
for(int i = 0; i <= k; i++){
  temp[i] = 0;
}
for(int j = 0; j < n; j++){
temp[array[j]] = temp[array[j]]+1;
}

for(int i = 1; i < k+1; i++){
    temp[i] = temp[i] + temp[i - 1];
}
for(int j = n-1; j >= 0; j--){
  list[temp[array[j]]-1] = array[j];
  temp[array[j]] = temp[array[j]]-1;  
}
}


void main(){
 int k = 0;
  List<int>array = [7,45,24,17,8,43,2,14 ];
  for (int i=0; i < array.length-1; i++){   
        if (array[i] > k) {
            k = array[i];
        }
    }
  List<int>list = new List.filled(array.length, 0);
  print(array);
  Counting_sort(array, list, k);
  print(list);
  }
