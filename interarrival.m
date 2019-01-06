function output= interarrival(x) %Interarrival Time Table
    
   %Set value for each column
    
    for count=1:5
        if (count==1)
            interarrivalTime(count)=1;
            prob(count)=0.3;
            CDF(count)=prob(count);
            firstNum(count)=1;
            lastNum(count)=CDF(count)*100;
        elseif (count==2)
            interarrivalTime(count)=2;
            prob(count)=0.25;
            CDF(count)=CDF(count-1)+prob(count);
            firstNum(count)=lastNum(count-1)+1;
            lastNum(count)=CDF(count)*100;
        elseif (count==3)
            interarrivalTime(count)=3;
            prob(count)=0.2;
            CDF(count)=CDF(count-1)+prob(count);
            firstNum(count)=lastNum(count-1)+1;
            lastNum(count)=CDF(count)*100;
        elseif (count==4)
            interarrivalTime(count)=4;
            prob(count)=0.1;
            CDF(count)=CDF(count-1)+prob(count);
            firstNum(count)=lastNum(count-1)+1;
            lastNum(count)=CDF(count)*100; 
        else
            interarrivalTime(count)=5;
            prob(count)=0.15;
            CDF(count)=CDF(count-1)+prob(count);
            firstNum(count)=lastNum(count-1)+1;
            lastNum(count)=CDF(count)*100;       
         end
    end
    
    %Display table
    
    printf('\nInterarrival Time\n');
    disp('----------------------------------------------------');
    disp('| Interrival Time | Probability |  CDF  |   Range  |');
    disp('----------------------------------------------------');
    for count=1:5
        fprintf('|      %3.0f        |     %1.2f    |  %1.2f | %3.0f-%3.0f  |\n',[interarrivalTime(count) prob(count) CDF(count) firstNum(count) lastNum(count)]);
    end
    disp('----------------------------------------------------');
    
            

