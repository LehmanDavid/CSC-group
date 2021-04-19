//Quick-sort

int Partition(array, p, r){
int x=array[r];
int i=p-1;
for(int j = p; j < r; j++){
    if(array[j]<=x){
      i++;
      swap(array,i,j);
    }
    
}
   swap(array, i+1, r);   


return i+1;
}

void swap(List array, int i, int j) {
  int temp = array[i];
  array[i] = array[j];
  array[j] = temp;
}

void QuickSort(array,p,r){
if(p<r){

int q = Partition(array,p,r);
QuickSort(array, p, q-1);
QuickSort(array, q+1, r);
}
}

void main(){
  List<int>array=[7,45,24,17,8,43,2,14];
  print(array);
  QuickSort(array, 0, array.length-1);
  print(array);
}
