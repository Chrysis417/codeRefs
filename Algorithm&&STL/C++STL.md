# 0.#include<bits/stdc++.h>
# 1.priority_queue
~~~
struct cmp
{
	bool operator () (const pair<string,int> &p1,const pair<string,int> &p2)
	{
		return p1.second<p2.second;//从大到小排序，top得最大
	} 
};
priority_queue<pair<string,int>,vector<pair<string,int> >,cmp> q;
q.push(),q.top(),q.pop();

priority_queue<int> q;//默认是从大到小,q.top()为最大
priority_queue<int, vector<int> ,less<int> >q;//从大到小排序
priority_queue<int, vector<int>, greater<int> >q;//从小到大排序
set是从小到大排序
~~~