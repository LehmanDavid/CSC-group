//Heapsort 

void Build_Max_Heap(List array){
  int len = array.length;           
  for(int i=len; i>=0; i--){
    Max_Heapify(array,len, i);
  }
}

void Max_Heapify(List array, len, int i){
int largest=i;
int l=2*i+1;
int r=2*i+2;

if(l < len && array[l] > array[largest]){
    largest=l;
}

if(r < len && array[r]>array[largest]){     
    largest=r;
}
if(largest!=i){
  int swap = array[i];
  array[i] = array[largest];
  array[largest] = swap;
  Max_Heapify(array,len, largest);
}
}



void Heapsort(List list){
  Build_Max_Heap(list);
  int len=list.length;
  for (int i = len-1; i>=0; i--) {
    int temp = list[0];
    list[0] = list[i];
    list[i] = temp;
    Max_Heapify(list, i, 0);
  }
}


void main(){
  List<int> array =[27,17,3,16,13,10,1,5,7,12,4,8,9,0];
  print(array);
  Heapsort(array);
  print(array);

}
