

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool
    {
        int stake;
        int trial;
        int goal,i;
        int win=0;
        int loss=0;
        printf("\nEnter Stake:");
        scanf("%d",&stake);
        printf("\nEnter Goal:");
        scanf("%d",&goal);
        printf("\nEnter Trial :");
        scanf("%d",&trial);
        for (i=0; i<trial; i++)
        {
            int cash=stake;
            while (cash>0 && cash<goal)
            {
                
                float random = rand()/(float)RAND_MAX;
                
                if (random<0.5)
                {
                    cash++;
                }
                else
                {
                    cash--;
                }
            }
            if (cash==goal)
            {
                win++;
            }
            else{
                loss++;
            }
        }
        printf("\nNumber of times Wins %d out of %d",win,trial);
        
        printf("\nNumber of times loss:%d",loss);
        float per_win=100*(float)((float)win/(float)trial);
        float per_loss=100*(float)((float)loss/(float)trial);
        printf("\nPercentage of Win:%f ",per_win);
        printf("\nPercentage of Win:%f ",per_loss);
        
    }
    return 0;
}
