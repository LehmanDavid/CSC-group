//Merge sort 

void merge(List<int> array, int p, int q, int r) {
  int n1 = q - p + 1 ;
  int n2 = r - q;
  
  List<int> leftList =  List.filled(n1,0);
  List<int> rightList =  List.filled(n2,0);

  for (int i = 0; i < n1; i++) {
    leftList[i] = array[p + i];
  }
  for (int j = 0; j < n2; j++) {
    rightList[j] = array[q + j + 1];
  }
  
int i = 0, j = 0, k = p;
  while (i < n1 && j < n2) {  
      if(leftList[i]<=rightList[j]){
        array[k]=leftList[i];
        i++;
      }
      else{
        array[k]=rightList[j];
        j++;     
  }
  k++;
}
while (i < n1) {
    array[k] = leftList[i];
    i++; k++;
  } 
   while (j < n2) {
    array[k] = rightList[j];
    j++; k++;
  }
}
void mergeSort(List<int> array, int p, int r) {
  if (p < r) {
    int middle = (r + p) ~/ 2;
    mergeSort(array, p, middle);
    mergeSort(array, middle + 1, r);
    
    merge(array, p, middle, r);
  }
}

void main(){
List <int>array=[7 , 8 , -3, 5 , 14];

int left=0;
int right=array.length-1;

print(array); 
mergeSort(array, left, right);
print(array);
}
