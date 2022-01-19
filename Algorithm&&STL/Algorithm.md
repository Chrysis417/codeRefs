# 1.QuickSort
~~~
void QuickSort(int arr[],int lo,int hi)
{
	if(hi-lo<2) return;
	//此处改为if(hi-lo<2+M) insert_sort() 将使效率得到提升
	//因为对小数组，插入排序比快排更快
	//M的值一般为5~15，根据具体情况取值
	int mi=Partition(arr,lo,hi-1);
	QuickSort(arr,lo,mi);
	QuickSort(arr,mi+1,hi);
 } 
 
int Partition(int[] arr,int lo,int hi)
{
	swap(arr[lo],arr[rand()%(hi-lo+1)]);
	int pivot=arr[lo];
while(lo<hi){
	while(lo<hi && arr[hi]>=pivot) hi--;
	arr[lo]=arr[hi]
	while(lo<hi && arr[lo]<=pivot) lo++;
	arr[hi]=arr[lo];	
}
	arr[lo]=pivot;
	return lo;
}

std::sort(s.begin(), s.end());//升序
std::sort(s.begin(), s.end(), std::greater<int>());//降序

bool cmp(Edge a, Edge b) { return a.w < b.w; }
struct Edge {
	int u, v, w;
} edge[10000005];
sort(edge + 1, edge + k + 1, cmp); //首先将边按权值排序
~~~
# 2.HeapSort
~~~
void heapify(int arr[], int length, int rctnode, int& compCount, int& moveCount)
{
       int parent = rctnode;
       int child = rctnode * 2 + 1;
       while (child < length)
       {
              //child为最大的孩子
              if (child + 1 < length && arr[child + 1] > arr[child])
                     child++;
              //父亲大于孩子，直接结束
              if (arr[parent] > arr[child])
              {
                     compCount++;
                     return;
              }
              //否则，交换父子，并将子节点作为新的父节点，再次比较。
              else
              {
                     swap(arr[parent], arr[child]);
                     parent = child;
                     child = child * 2 + 1;
              }
       }
}
void Heap(int arr[], int& compCount, int& moveCount)
{
       //首先从下往上成堆
       for (int i = (LENGTH / 2) - 1; i >= 0; i--)
       {
              heapify(arr, LENGTH, i, compCount, moveCount);
       }
       //每次将最大的数移到最后，将剩余部分成堆
       for (int i = LENGTH - 1; i > 0; i--)
       {
              swap(arr[0], arr[i]);
              heapify(arr, i, 0, compCount, moveCount);
       }
}
~~~
# 3.Disjoint-set
~~~
inline void init(int n)
{
    for (int i = 1; i <= n; ++i)
    {
        fa[i] = i;
        rank[i] = 1;
    }
}
int find(int x)
{
    return x == fa[x] ? x : (fa[x] = find(fa[x]));
}
inline void merge(int i, int j)
{
    int x = find(i), y = find(j);    //先找到两个根节点
    if (rank[x] <= rank[y])
        fa[x] = y;
    else
        fa[y] = x;
    if (rank[x] == rank[y] && x != y)
        rank[y]++;                   //如果深度相同且根节点不同，则新的根节点的深度+1
}
~~~
