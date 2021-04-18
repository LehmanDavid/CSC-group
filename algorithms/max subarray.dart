//Finding maximum sub-array algorithm

void max_subarray(array,low, high){
int mid_point = (array.length)~/2;
double left = double.negativeInfinity;
double sum = 0;
for(int i = mid_point; i >= low; i--){
  sum = sum + array[i];
  if(sum > left){
    left = sum;    
  }
}
double right = double.negativeInfinity;
sum=0;
for(int j = mid_point+1; j < high; j++){
sum = sum + array[j];
if(sum > right){
    right = sum;    
}
}
print(left + right);
}

void main(){
List <int>array=[-2, -5, 6, -2, -3, 1, 5, -6];
int low = 0;
int high = array.length-1;
max_subarray(array, low, high);
}
