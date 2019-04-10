
package bankers1;

import java.util.Scanner;
public class Bankers1 {
 
    private int need[][],allocate[][],max[][],available[][],np,nr;
    
private void input(){
    
    Scanner sc=new Scanner(System.in);
    System.out.print("Enter the no of process and resources:");
    np=sc.nextInt();
    nr=sc.nextInt();
    need=new int[np][nr];
    max=new int[np][nr];
    allocate=new int [np][nr];
    available=new int[1][nr];
    
    System.out.println("Enter allocation matrix-->");
    for(int i=0;i<np;i++)
        for(int j=0;j<nr;j++)
            allocate[i][j]=sc.nextInt();
    
    System.out.println("Enter max matrix-->");
    for(int i=0;i<np;i++)
        for(int j=0;j<nr;j++)
            max[i][j]=sc.nextInt();
    
    System.out.println("Enter available matrix-->");
    for(int j=0;j<nr;j++)
        available[0][j]=sc.nextInt();
    sc.close();
    
    
}
    private int[][] calc_need(){
        for(int i=0;i<np;i++)
            for(int j=0;j<nr;j++)
                need[i][j]=max[i][j]-allocate[i][j];
        return need;
    }   
    private boolean check(int i){
        for(int j=0;j<nr;j++)
            if(available[0][j]<need[i][j])
                return false;
        return true;
    }
    public void isSafe()
    {
        input();
        calc_need();
        boolean done[]=new boolean[np];
        int j=0;
        
        while(j<np){
            boolean allocated=false;
            for(int i=0;i<np;i++)
                if(!done[i]&&check(i)){
                  for(int k=0;k<nr;k++)
                      available[0][k]=available[0][k]-need[i][k]+max[i][k];
                  System.out.println("allocated process:"+i);
                  allocated=done[i]=true;
                  j++;
                }
            if(!allocated)break;
        }
        if(j==np)
            System.out.println("\n Safely allocated");
        else
            System.out.println("All process cant be allocated safely");
    }
    public static void main(String[]args){
        new Bankers1().isSafe();
    }
}
/*......output......
run:

.......first example........

Enter the no of process and resources:3 4
Enter allocation matrix-->
1 2 2 1
1 0 3 3
1 2 1 0
Enter max matrix-->
3 3 2 2
1 1 3 4
1 3 5 0
Enter available matrix-->
3 1 1 2
allocated process:0
allocated process:1
allocated process:2

 Safely allocated
BUILD SUCCESSFUL (total time: 57 seconds)

...........second example............

Enter the no of process and resources:4 2
Enter allocation matrix-->
1 0
1 1
1 2
1 1
Enter max matrix-->
1 1
2 3
2 2
3 2
Enter available matrix-->
1 1
allocated process:0
allocated process:2
allocated process:3
allocated process:1

 Safely allocated
BUILD SUCCESSFUL (total time: 39 seconds)

*/

