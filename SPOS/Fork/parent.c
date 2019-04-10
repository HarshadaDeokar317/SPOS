#include<stdio.h>
#include<stdlib.h>

int main()
{

char * Name[]={"Harshada","Dipti",NULL};
int p;
printf("\n parent process id %d",getpid());

p=fork();
printf("\n child pid %d",p);

if(p<0)

{
printf("error");


}

if(p==0)

{
printf("\n \nchild pid %d",getpid());
execv("a.out",Name);
}

else

{
p=wait();

printf("\n.....parent is waiting for child...");

}



return 0;
}


/* output

$ gcc parent.c -o b.out
[student@localhost ~]$ ./b.out

 parent process id 19639
 parent process id 19639
 child pid 0
5 sum is= child pid 19640
.....parent is waiting for child...[student@localhost ~]$ gcc parent.c -o b.out
[student@localhost ~]$ ./b.out

 parent process id 19676
 parent process id 19676
 child pid 0
 
5 sum is= child pid 19677
.....parent is waiting for child...[student@localhost ~]$ gcc parent.c -o b.out
[student@localhost ~]$ ./b.out

 parent process id 19708
 parent process id 19708
 child pid 0
 
5 sum is= child pid 19709
.....parent is waiting for child...

*/

