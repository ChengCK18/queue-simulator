function output=mainSimulator()
    serviceType();
    serviceTime();
    interarrival();
    
    valid=0;
    customerNumber=input('How many customers are there? Minimum 1 customer: ');
    while (valid==0)%Error checking
        if(customerNumber<1)
            printf('Minimum of 1 customer needed for simulation to work\n');
            customerNumber=input('How many customers are there? Minimum 1 customer ');
        else
            valid=1;
        end
    end
    printf('Total of 2 counters are available');
    valid=0;
    sv1_counterNumberUsed=input('How many counters for registration service are open?: ');
    while (valid==0)%Error checking
        if(sv1_counterNumberUsed<1||sv1_counterNumberUsed>2)
            printf('Only a maximum of two counters are operational\n');
            sv1_counterNumberUsed=input('How many counters are open?: ');
        else
            valid=1;
        end
    end
    
    %Obtaining prefix of counter in use and not in use for service 1
    valid2=0;
    if(sv1_counterNumberUsed==1)
        while(valid2==0)
            valid=0;
            while valid==0
                sv1_counterNum1=input('Prefix of counter in use:');
                if(sv1_counterNum1==1|sv1_counterNum1==2)
                    valid=1;
                else
                    printf('Invalid counter prefix.Please reenter.\n');
                end
            end
        
            valid=0;
            while valid==0
                sv1_counterNum2=input('Prefix of counter not in use:');
                if(sv1_counterNum2==1|sv1_counterNum2==2)
                    valid=1;
                else
                    printf('Invalid counter prefix.Please reenter.\n');
                end
            end
            
            if(sv1_counterNum1==sv1_counterNum2)
                valid2=0;
                printf('Prefix cannot be the same please reenter again.\n');
            else
                valid2=1;
            end
        end
    end
    valid2=0;
    if(sv1_counterNumberUsed==2)
        while valid2==0
            valid=0;
            while valid==0
                sv1_counterNum1=input('Prefix of counter in use(A):');
                if(sv1_counterNum1==1|sv1_counterNum1==2)
                valid=1;
                else
                    printf('Invalid counter prefix.Please reenter.\n');
                end
            end
        
            valid=0;
            while valid==0
                sv1_counterNum2=input('Prefix of counter in use(B):');
                if(sv1_counterNum2==1|sv1_counterNum2==2)
                    valid=1;
                else
                    printf('Invalid counter prefix.Please reenter.\n');
                end
            end
        
            if(sv1_counterNum2==sv1_counterNum1)
                valid2=0;
                printf('Prefix cannot be the same please reenter again.\n');
            else
                valid2=1;
            end
        end
    end
        
                           
    valid=0;
    printf('Total of 3 counters are available');
    sv2_counterNumberUsed=input('How many counters for medical and security check service are open?: ');
    while (valid==0)%Error checking
        if(sv2_counterNumberUsed<1||sv2_counterNumberUsed>3)
            printf('Only a maximum of three counters are operational\n');
            sv2_counterNumberUsed=input('How many counters are open?: ');
        else
            valid=1;
        end
    end

    %Obtaining prefix of counter in use and not in use for service 2
    if(sv2_counterNumberUsed==1)  
        valid2=0;
        while (valid2==0)           
            valid=0;
            while (valid==0)
                sv2_counterNum1=input('Prefix of counter in use: ');
                if(sv2_counterNum1==3|sv2_counterNum1==4|sv2_counterNum1==5)
                    valid=1;
                else
                    printf('Invalid counter prefix.Please reenter.\n');
                end
            end
            
            valid=0;
            while (valid==0)
                sv2_counterNum2=input('Prefix of counter not in use(A): ');
                if(sv2_counterNum2==3|sv2_counterNum2==4|sv2_counterNum2==5)
                    valid=1;
                else
                    printf('Invalid counter prefix.Please reenter.\n');
                end
            end
            valid=0;
            while (valid==0)
                sv2_counterNum3=input('Prefix of counter not in use(B): ');
                if(sv2_counterNum3==3|sv2_counterNum3==4|sv2_counterNum3==5)
                    valid=1;
                else
                    printf('Invalid counter prefix.Please reenter.\n');
                end
            end
            
            if(sv2_counterNum1==sv2_counterNum2|sv2_counterNum1==sv2_counterNum3|sv2_counterNum2==sv2_counterNum3)
                valid2=0;
                printf('Prefix cannot be the same please reenter again.\n');
            else
                valid2=1;
            end
            
        end
    end
    
    
    if(sv2_counterNumberUsed==2)  
        valid2=0;
        while (valid2==0)           
            valid=0;
            while (valid==0)
                sv2_counterNum1=input('Prefix of counter in use(A): ');
                if(sv2_counterNum1==3|sv2_counterNum1==4|sv2_counterNum1==5)
                    valid=1;
                else
                    printf('Invalid counter prefix.Please reenter.\n');
                end
            end
            
            valid=0;
            while (valid==0)
                sv2_counterNum2=input('Prefix of counter in use(B): ');
                if(sv2_counterNum2==3|sv2_counterNum2==4|sv2_counterNum2==5)
                    valid=1;
                else
                    printf('Invalid counter prefix.Please reenter.\n');
                end
            end
            valid=0;
            while (valid==0)
                sv2_counterNum3=input('Prefix of counter not in use: ');
                if(sv2_counterNum3==3|sv2_counterNum3==4|sv2_counterNum3==5)
                    valid=1;
                else
                    printf('Invalid counter prefix.Please reenter.\n');
                end
            end
            
            if(sv2_counterNum1==sv2_counterNum2|sv2_counterNum1==sv2_counterNum3|sv2_counterNum2==sv2_counterNum3)
                valid2=0;
                printf('Prefix cannot be the same please reenter again.\n');
            else
                valid2=1;
            end
            
        end
    end
    
    if(sv2_counterNumberUsed==3)  
        valid2=0;
        while (valid2==0)           
            valid=0;
            while (valid==0)
                sv2_counterNum1=input('Prefix of counter in use(A): ');
                if(sv2_counterNum1==3|sv2_counterNum1==4|sv2_counterNum1==5)
                    valid=1;
                else
                    printf('Invalid counter prefix.Please reenter.\n');
                end
            end
            
            valid=0;
            while (valid==0)
                sv2_counterNum2=input('Prefix of counter in use(B): ');
                if(sv2_counterNum2==3|sv2_counterNum2==4|sv2_counterNum2==5)
                    valid=1;
                else
                    printf('Invalid counter prefix.Please reenter.\n');
                end
            end
            valid=0;
            while (valid==0)
                sv2_counterNum3=input('Prefix of counter in use(C): ');
                if(sv2_counterNum3==3|sv2_counterNum3==4|sv2_counterNum3==5)
                    valid=1;
                else
                    printf('Invalid counter prefix.Please reenter.\n');
                end
            end
            
            if(sv2_counterNum1==sv2_counterNum2|sv2_counterNum1==sv2_counterNum3|sv2_counterNum2==sv2_counterNum3)
                valid2=0;
                printf('Prefix cannot be the same please reenter again.\n');
            else
                valid2=1;
            end
            
        end
    end
           
        
    %Obtaining prefix of counter in use and not in use for service 2 ENDS
    
    
    
    valid=0;
    printf('Total of 2 counters are available');
    sv3_counterNumberUsed=input('How many counters for briefing and demonstration service are open?: ');
    while valid==0%Error checking
        if(sv3_counterNumberUsed<1||sv3_counterNumberUsed>2)
            printf('Only a maximum of two counters are operational\n');
            sv3_counterNumberUsed=input('How many counters are open?: ');
        else
            valid=1;
        end
    end
      
    
    
    %Obtaining prefix of counter in use and not in use for service 3
    valid2=0;
    if(sv3_counterNumberUsed==1)
        while(valid2==0)
            valid=0;
            while valid==0
                sv3_counterNum1=input('Prefix of counter in use:');
                if(sv3_counterNum1==6|sv3_counterNum1==7)
                    valid=1;
                else
                    printf('Invalid counter prefix.Please reenter.\n');
                end
            end
        
            valid=0;
            while valid==0
                sv3_counterNum2=input('Prefix of counter not in use:');
                if(sv3_counterNum2==6|sv3_counterNum2==7)
                    valid=1;
                else
                    printf('Invalid counter prefix.Please reenter.\n');
                end
            end
            
            if(sv3_counterNum1==sv3_counterNum2)
                valid2=0;
                printf('Prefix cannot be the same please reenter again.\n');
            else
                valid2=1;
            end
        end
    end
    valid2=0;
    if(sv3_counterNumberUsed==2)
        while valid2==0
            valid=0;
            while valid==0
                sv3_counterNum1=input('Prefix of counter in use(A):');
                if(sv3_counterNum1==6|sv3_counterNum1==7)
                valid=1;
                else
                    printf('Invalid counter prefix.Please reenter.\n');
                end
            end
        
            valid=0;
            while valid==0
                sv3_counterNum2=input('Prefix of counter in use(B):');
                if(sv3_counterNum2==6|sv3_counterNum2==7)
                    valid=1;
                else
                    printf('Invalid counter prefix.Please reenter.\n');
                end
            end
        
            if(sv3_counterNum1==sv3_counterNum2)
                valid2=0;
                printf('Prefix cannot be the same please reenter again.\n');
            else
                valid2=1;
            end
        end
    end
    %Obtaining prefix of counter in use and not in use for service 3 ENDS
    
    
    valid=0;            
    printf('Which random generator would you choose?\n');
    printf('1.Linear Congruential Generator\n2.Uniformly Distributed Integer Generator\n3.Floor Generator\n');
    while (valid==0)%Error checking
        generatorChoice=input('');
        
        if(generatorChoice==1|generatorChoice==2|generatorChoice==3)
            valid=1;
           
        else
            printf('Invalid generator choice.Please reenter:\n');
            generatorChoice=input('');
        end             
    end
    
    
    %Generating random number for interval and service type
    if (generatorChoice==1)%Linear Congruential Generator      
         for count=1:customerNumber
             custRandServiceType(count)=round(mod(rand.*100,99)+1);
             customerRandInterval(count)=round(mod(rand.*100,99)+1);
         end
        
     elseif(generatorChoice==2)%Uniformly Distributed Integer
         for count=1:customerNumber
             custRandServiceType(count)=randi(1,100);
             customerRandInterval(count)=round(mod(rand.*100,99)+1);
         end
     elseif(generatorChoice==3)%Floor random generator
         for count=1:customerNumber
             custRandServiceType(count)=floor(99.*rand(1)+1);
             customerRandInterval(count)=round(mod(rand.*100,99)+1);
         end
     end
    
     
    %Service type based on random number
    for count=1:customerNumber
        if(custRandServiceType(count)>=1 & custRandServiceType(count)<=30)
            custServiceType(count)=1;                       
        elseif(custRandServiceType(count)>=31 & custRandServiceType(count)<=60)
            custServiceType(count)=2;                        
        elseif(custRandServiceType(count)>=61 & custRandServiceType(count)<=100)
            custServiceType(count)=3;         
        end
    end
                   
        
    
    
    %Interarrival time based on random number
    for count=1:customerNumber
        if(customerRandInterval(count)>=1 && customerRandInterval(count)<=30)
            customerInterval(count)=1;
        elseif (customerRandInterval(count)>=31 && customerRandInterval(count)<=55)
            customerInterval(count)=2;
        elseif (customerRandInterval(count)>=56 && customerRandInterval(count)<=75)
            customerInterval(count)=3;
        elseif (customerRandInterval(count)>=76 && customerRandInterval(count)<=85)
            customerInterval(count)=4;
        elseif (customerRandInterval(count)>=86 && customerRandInterval(count)<=100)
            customerInterval(count)=5;
        end        
    end
    
    
    customerArrivalMain(1)=0;%Customers arrival time    
    customerDepartureMain(1)=0;%Customer Departure time
    customerServiceMain(1)=0;%Customer Service start time
    customerQueueNumberMain(1)=0;%Customer Queue number time
    
    
    customerArrival1(1)=0;
    counter1=1;
    queueNumber1(1)=1001;
    sv1_customerNumber=0;
    sv1_customerIndex(1)=0;
    
    customerArrival2(1)=0;
    counter2=1;
    queueNumber2(1)=2001;
    sv2_customerNumber=0;
    sv2_customerIndex(1)=0;
    
    customerArrival3(1)=0;
    counter3=1;
    queueNumber3(1)=3001;
    sv3_customerNumber=0;
    sv3_customerIndex(1)=0;
   
    
    customerRandInterval(1)=0;
    customerInterval(1)=0;
    printf('***************Simulation***************\n');
    printf('-----------------------------------------------------------------------------------------|\n');
    printf('|n    |RN for Inter- |Interarrival |Arrival |RNs for the |Type of                |Queue  |\n');
    printf('|     |arrival time  |Time         |Time    |service type|services               |number |\n');
    printf('|----------------------------------------------------------------------------------------|\n');
    for count=1:customerNumber 
        if (count~=1)
            customerArrivalMain(count)=customerArrivalMain(count-1)+customerInterval(count);         
        end
        
        if (custServiceType(count)==1)
            sv1_customerNumber=sv1_customerNumber+1;%Calculate total customer for service 1
            if(counter1~=1)
                queueNumber1(counter1)= queueNumber1(counter1-1)+1;               
            end           
            printf('|%4.0f |%4.0f          |%4.0f         |%4.0f    |%4.0f        |Registration           |%4.0f   |\n',count,customerRandInterval(count),customerInterval(count),customerArrivalMain(count),custRandServiceType(count),queueNumber1(counter1));
            customerArrival1(counter1)=customerArrivalMain(count);          
            sv1_customerIndex(counter1)=count;
            
            counter1=counter1+1;           
            
            
        elseif(custServiceType(count)==2)
            sv2_customerNumber=sv2_customerNumber+1;%Calculate total customer for service 2
            if(counter2~=1)
                queueNumber2(counter2)=queueNumber2(counter2-1)+1;
            end
            printf('|%4.0f |%4.0f          |%4.0f         |%4.0f    |%4.0f        |Med and security check |%4.0f   |\n',count,customerRandInterval(count),customerInterval(count),customerArrivalMain(count),custRandServiceType(count),queueNumber2(counter2));        
            customerArrival2(counter2)=customerArrivalMain(count);
            sv2_customerIndex(counter2)=count;
            
            counter2=counter2+1; 
            
        elseif(custServiceType(count)==3)
            sv3_customerNumber=sv3_customerNumber+1;%Calculate total customer for service 3
            if(counter3~=1)
                queueNumber3(counter3)=queueNumber3(counter3-1)+1;
            end
            printf('|%4.0f |%4.0f          |%4.0f         |%4.0f    |%4.0f        |Briefing and demo      |%4.0f   |\n',count,customerRandInterval(count),customerInterval(count),customerArrivalMain(count),custRandServiceType(count),queueNumber3(counter3)); 
            customerArrival3(counter3)=customerArrivalMain(count);
            sv3_customerIndex(counter3)=count;
            
            counter3=counter3+1;
        end     
    end
    printf('|----------------------------------------------------------------------------------------|\n\n');
   
    
    %***********Service one:Registration***********%
    
    if (sv1_customerNumber~=0)     
        if (generatorChoice==1)%Linear Congruential Generator      
            for count=1:sv1_customerNumber
                sv1_custRandST(count)=round(mod(rand.*100,99)+1);   
            end  
        elseif(generatorChoice==2)%Uniformly Distributed Integer
            for count=1:sv1_customerNumber
                sv1_custRandST(count)=randi(1,100);
            end
        elseif(generatorChoice==3)
            for count=1:sv1_customerNumber
                sv1_custRandST(count)=floor(99.*rand(1)+1);
            end
        end
    
    
        for count=1:sv1_customerNumber %Service time for service 1
            if(sv1_custRandST(count)>=1 && sv1_custRandST(count)<=10)
                sv1_custST(count)=3;
            elseif (sv1_custRandST(count)>=11 && sv1_custRandST(count)<=25)
                sv1_custST(count)=4;
            elseif (sv1_custRandST(count)>=26 && sv1_custRandST(count)<=50)
                sv1_custST(count)=5;
            elseif (sv1_custRandST(count)>=51 && sv1_custRandST(count)<=80)
                sv1_custST(count)=6;
            elseif (sv1_custRandST(count)>=81 && sv1_custRandST(count)<=100)
                sv1_custST(count)=7;
            end    
        end
    
    
        sv1_serviceBegin(1)=customerArrival1(1);
    
        sv1_serviceEnd(1)=sv1_serviceBegin(1)+sv1_custST(1);
        sv1_serviceEndCounts=1;
    
        sv1_serviceEndCounter2(1)=0;
        sv1_serviceEndCounter2Counts=1;
    
        sv1_waitingTime(1)=0;   
        sv1_timeSpent(1)=sv1_custST(1)+sv1_waitingTime(1);
        
       
    
        sv1_counter2Status=0;    
        sv1_queueFrequency=0;
        sv1_totalQueueFrequency=0;
        sv1_counter1StartTime=0;
        sv1_counter1StartTimeStatus=1;
        sv1_counter2StartTime=0;
        sv1_counter2StartTimeStatus=1;
        %Main variables base case values 
        customerDepartureMain(sv1_customerIndex(1))=sv1_serviceEnd(1);
        customerServiceMain(sv1_customerIndex(1))=sv1_serviceBegin(1);
        customerQueueNumberMain(sv1_customerIndex(1))=queueNumber1(1);
        customerCounterNumberMain(sv1_customerIndex(1))=sv1_counterNum1;
      
    
        if (sv1_counterNumberUsed==1)
            printf('***************Registration Service counter***************\n');
            printf('------------------------------------------------------------------------------------------\n');
            printf('|Queue |Counter |RN Service|Service |Time Service |Time Service |Waiting |Time spends in |\n');
            printf('|number|number  |Time      |Time    |Begins       |Ends         |time    |the system     |\n');
            printf('------------------------------------------------------------------------------------------\n');
            printf('|%4.0f  |%4.0f    |%4.0f      |%4.0f    |%4.0f         |%4.0f         |%4.0f    |%4.0f           |\n',queueNumber1(1) ,sv1_counterNum1 ,sv1_custRandST(1), sv1_custST(1), sv1_serviceBegin(1) ,sv1_serviceEnd(1) ,sv1_waitingTime(1), sv1_timeSpent(1));
            for count=2:sv1_customerNumber        
                sv1_difference1=sv1_serviceEnd(sv1_serviceEndCounts)-customerArrival1(count);
                sv1_difference2=sv1_serviceEndCounter2(sv1_serviceEndCounter2Counts)-customerArrival1(count);                                            
            
                if (sv1_counter2Status==1&sv1_difference2<sv1_difference1&sv1_serviceEnd(sv1_serviceEndCounts)>customerArrival1(count))                  
                    sv1_serviceEndCounter2Counts=sv1_serviceEndCounter2Counts+1;                                    
                    sv1_waitingTime(count)=0;
                
                    
                    if(customerArrival1(count)<sv1_serviceEndCounter2(sv1_serviceEndCounter2Counts-1))                                 
                        sv1_waitingTime(count)= sv1_serviceEndCounter2(sv1_serviceEndCounter2Counts-1)-customerArrival1(count);
                        sv1_totalQueueFrequency=sv1_totalQueueFrequency+1;
                    end                                                             
                    sv1_serviceBegin(count)=customerArrival1(count)+sv1_waitingTime(count);
                    sv1_serviceEndCounter2(sv1_serviceEndCounter2Counts)=sv1_serviceBegin(count)+sv1_custST(count);
                    sv1_timeSpent(count)=sv1_waitingTime(count)+sv1_custST(count);
            
                    %Main variables to print the logs of events                
                    customerDepartureMain(sv1_customerIndex(count))= sv1_serviceEndCounter2(sv1_serviceEndCounter2Counts);
                    customerServiceMain(sv1_customerIndex(count))=sv1_serviceBegin(count);
                    customerQueueNumberMain(sv1_customerIndex(count))=queueNumber1(count);
                    customerCounterNumberMain(sv1_customerIndex(count))=sv1_counterNum2;
                    if(sv1_counter2StartTimeStatus==1)
                        sv1_counter2StartTime=sv1_serviceBegin(count);
                        sv1_counter2StartTimeStatus=0;
                    end
                    
                    %end
            
                    printf('|%4.0f  |%4.0f    |%4.0f      |%4.0f    |%4.0f         |%4.0f         |%4.0f    |%4.0f           |\n',queueNumber1(count) ,sv1_counterNum2 ,sv1_custRandST(count), sv1_custST(count), sv1_serviceBegin(count) ,sv1_serviceEndCounter2(sv1_serviceEndCounter2Counts) ,sv1_waitingTime(count), sv1_timeSpent(count));                                  
                else
                    sv1_serviceEndCounts=sv1_serviceEndCounts+1;                                    
                    sv1_waitingTime(count)=0;
                
                    if(customerArrival1(count)<sv1_serviceEnd(sv1_serviceEndCounts-1))
                        sv1_queueFrequency =sv1_queueFrequency+1;
                        sv1_totalQueueFrequency=sv1_totalQueueFrequency+1;
                        sv1_waitingTime(count)= sv1_serviceEnd(sv1_serviceEndCounts-1)-customerArrival1(count);
                    end                                                             
                    sv1_serviceBegin(count)=customerArrival1(count)+sv1_waitingTime(count);
                    
                    sv1_serviceEnd(sv1_serviceEndCounts)=sv1_serviceBegin(count)+sv1_custST(count);
                    sv1_timeSpent(count)=sv1_waitingTime(count)+sv1_custST(count);
            
                    if(sv1_queueFrequency>0)
                        sv1_counter2Status=1;
                    end
                    %Main variables to print the logs of events                   
                    customerDepartureMain(sv1_customerIndex(count))= sv1_serviceEnd(sv1_serviceEndCounts);
                    customerServiceMain(sv1_customerIndex(count))=sv1_serviceBegin(count);
                    customerQueueNumberMain(sv1_customerIndex(count))=queueNumber1(count);
                    customerCounterNumberMain(sv1_customerIndex(count))=sv1_counterNum1;
                    if(sv1_counter1StartTimeStatus==1)
                        sv1_counter1StartTime=customerServiceMain(sv1_customerIndex(1));
                        sv1_counter1StartTimeStatus=0;
                    end
                    %end
            
                
                    printf('|%4.0f  |%4.0f    |%4.0f      |%4.0f    |%4.0f         |%4.0f         |%4.0f    |%4.0f           |\n',queueNumber1(count) ,sv1_counterNum1 ,sv1_custRandST(count), sv1_custST(count), sv1_serviceBegin(count) ,sv1_serviceEnd(sv1_serviceEndCounts) ,sv1_waitingTime(count), sv1_timeSpent(count));
                end
            end
            printf('------------------------------------------------------------------------------------------\n\n\n');
        
    
    
        elseif(sv1_counterNumberUsed==2)
            printf('***************Registration Service counter***************\n');
            printf('------------------------------------------------------------------------------------------\n');
            printf('|Queue |Counter |RN Service|Service |Time Service |Time Service |Waiting |Time spends in |\n');
            printf('|number|number  |Time      |Time    |Begins       |Ends         |time    |the system     |\n');
            printf('------------------------------------------------------------------------------------------\n');
            printf('|%4.0f  |%4.0f    |%4.0f      |%4.0f    |%4.0f         |%4.0f         |%4.0f    |%4.0f           |\n',queueNumber1(1) ,sv1_counterNum1 ,sv1_custRandST(1), sv1_custST(1), sv1_serviceBegin(1) ,sv1_serviceEnd(1) ,sv1_waitingTime(1), sv1_timeSpent(1));
 
            for count=2:sv1_customerNumber        
                sv1_difference1=sv1_serviceEnd(sv1_serviceEndCounts)-customerArrival1(count);
                sv1_difference2=sv1_serviceEndCounter2(sv1_serviceEndCounter2Counts)-customerArrival1(count);                                            
            
                if (sv1_difference2<sv1_difference1&sv1_serviceEnd(sv1_serviceEndCounts)>customerArrival1(count))
                    sv1_serviceEndCounter2Counts=sv1_serviceEndCounter2Counts+1;                                    
                    sv1_waitingTime(count)=0;
                
                    if(customerArrival1(count)<sv1_serviceEndCounter2(sv1_serviceEndCounter2Counts-1))                                 
                        sv1_waitingTime(count)= sv1_serviceEndCounter2(sv1_serviceEndCounter2Counts-1)-customerArrival1(count);
                        sv1_totalQueueFrequency=sv1_totalQueueFrequency+1;
                    end                                                             
                    sv1_serviceBegin(count)=customerArrival1(count)+sv1_waitingTime(count);
                    sv1_serviceEndCounter2(sv1_serviceEndCounter2Counts)=sv1_serviceBegin(count)+sv1_custST(count);
                    sv1_timeSpent(count)=sv1_waitingTime(count)+sv1_custST(count);
            
                    %Main variables to print the logs of events
                    customerDepartureMain(sv1_customerIndex(count))= sv1_serviceEndCounter2(sv1_serviceEndCounter2Counts);
                    customerServiceMain(sv1_customerIndex(count))=sv1_serviceBegin(count);
                    customerQueueNumberMain(sv1_customerIndex(count))=queueNumber1(count);
                    customerCounterNumberMain(sv1_customerIndex(count))=sv1_counterNum2;
                    if(sv1_counter2StartTimeStatus==1)
                        sv1_counter2StartTime=sv1_serviceBegin(count);
                        sv1_counter2StartTimeStatus=0;
                    end
                    %end
            
                    printf('|%4.0f  |%4.0f    |%4.0f      |%4.0f    |%4.0f         |%4.0f         |%4.0f    |%4.0f           |\n',queueNumber1(count) ,sv1_counterNum2 ,sv1_custRandST(count), sv1_custST(count), sv1_serviceBegin(count) ,sv1_serviceEndCounter2(sv1_serviceEndCounter2Counts) ,sv1_waitingTime(count), sv1_timeSpent(count));                   
                else
                    sv1_serviceEndCounts=sv1_serviceEndCounts+1;                                    
                    sv1_waitingTime(count)=0;
                
                    if(customerArrival1(count)<sv1_serviceEnd(sv1_serviceEndCounts-1))
                        sv1_queueFrequency =sv1_queueFrequency+1;                   
                        sv1_waitingTime(count)= sv1_serviceEnd(sv1_serviceEndCounts-1)-customerArrival1(count);
                        sv1_totalQueueFrequency=sv1_totalQueueFrequency+1;
                    end                                                             
                    sv1_serviceBegin(count)=customerArrival1(count)+sv1_waitingTime(count);
                    sv1_serviceEnd(sv1_serviceEndCounts)=sv1_serviceBegin(count)+sv1_custST(count);
                    sv1_timeSpent(count)=sv1_waitingTime(count)+sv1_custST(count);
            
                    
                    %Main variables to print the logs of events
                    customerDepartureMain(sv1_customerIndex(count))= sv1_serviceEnd(sv1_serviceEndCounts);
                    customerServiceMain(sv1_customerIndex(count))=sv1_serviceBegin(count);
                    customerQueueNumberMain(sv1_customerIndex(count))=queueNumber1(count);
                    customerCounterNumberMain(sv1_customerIndex(count))=sv1_counterNum1;
                    if(sv1_counter1StartTimeStatus==1)
                        sv1_counter1StartTime=customerServiceMain(sv1_customerIndex(1));
                        sv1_counter1StartTimeStatus=0;
                    end
                    %end
            
                
                    printf('|%4.0f  |%4.0f    |%4.0f      |%4.0f    |%4.0f         |%4.0f         |%4.0f    |%4.0f           |\n',queueNumber1(count) ,sv1_counterNum1 ,sv1_custRandST(count), sv1_custST(count), sv1_serviceBegin(count) ,sv1_serviceEnd(sv1_serviceEndCounts) ,sv1_waitingTime(count), sv1_timeSpent(count));
                end
            end
            printf('------------------------------------------------------------------------------------------\n\n\n');
        
        end
    end    
    
    %***********Service two:Medical and security check***********%
    if (sv2_customerNumber~=0)     
        if (generatorChoice==1)%Linear Congruential Generator      
            for count=1:sv2_customerNumber
                sv2_custRandST(count)=round(mod(rand.*100,99)+1);   
            end  
        elseif(generatorChoice==2)%Uniformly Distributed Integer
            for count=1:sv2_customerNumber
                sv2_custRandST(count)=randi(1,100);
            end
        elseif(generatorChoice==3)
            for count=1:sv2_customerNumber
                sv2_custRandST(count)=floor(99.*rand(1)+1);
            end
        end
    
    
        for count=1:sv2_customerNumber %Service time for service 2
            if(sv2_custRandST(count)>=1 && sv2_custRandST(count)<=15)
                sv2_custST(count)=6;
            elseif (sv2_custRandST(count)>=16 && sv2_custRandST(count)<=45)
                sv2_custST(count)=7;
            elseif (sv2_custRandST(count)>=46 && sv2_custRandST(count)<=70)
                sv2_custST(count)=8;
            elseif (sv2_custRandST(count)>=71 && sv2_custRandST(count)<=80)
                sv2_custST(count)=9;
            elseif (sv2_custRandST(count)>=81 && sv2_custRandST(count)<=100)
                sv2_custST(count)=10;
            end    
        end
        sv2_serviceBegin(1)=customerArrival2(1);
    
        sv2_serviceEnd(1)=sv2_serviceBegin(1)+sv2_custST(1);
        sv2_serviceEndCounts=1;
    
        sv2_serviceEndCounter2(1)=0;
        sv2_serviceEndCounter2Counts=1;
        
        sv2_serviceEndCounter3(1)=0;
        sv2_serviceEndCounter3Counts=1;
    
        sv2_waitingTime(1)=0;   
        sv2_timeSpent(1)=sv2_custST(1)+sv2_waitingTime(1);
    
    
        sv2_counter2Status=0;
        sv2_counter3Status=0;   
        sv2_queueFrequency=0;
        sv2_queueFrequency2=0;
        sv2_totalQueueFrequency=0;
        
        sv2_counter1StartTime=0;
        sv2_counter1StartTimeStatus=1;
        sv2_counter2StartTime=0;
        sv2_counter2StartTimeStatus=1;
        sv2_counter3StartTime=0;
        sv2_counter3StartTimeStatus=1;
    
        customerDepartureMain(sv2_customerIndex(1))=sv2_serviceEnd(1);
        customerServiceMain(sv2_customerIndex(1))=sv2_serviceBegin(1);
        customerQueueNumberMain(sv2_customerIndex(1))=queueNumber2(1);
        customerCounterNumberMain(sv2_customerIndex(1))=sv2_counterNum1;
        
        if (sv2_counterNumberUsed==1)
            printf('***************Medical and Security Service counter***************\n');
            printf('------------------------------------------------------------------------------------------\n');
            printf('|Queue |Counter |RN Service|Service |Time Service |Time Service |Waiting |Time spends in |\n');
            printf('|number|number  |Time      |Time    |Begins       |Ends         |time    |the system     |\n');
            printf('------------------------------------------------------------------------------------------\n');
            printf('|%4.0f  |%4.0f    |%4.0f      |%4.0f    |%4.0f         |%4.0f         |%4.0f    |%4.0f           |\n',queueNumber2(1) ,sv2_counterNum1 ,sv2_custRandST(1), sv2_custST(1), sv2_serviceBegin(1) ,sv2_serviceEnd(1) ,sv2_waitingTime(1), sv2_timeSpent(1));
 
            for count=2:sv2_customerNumber        
                sv2_difference1=sv2_serviceEnd(sv2_serviceEndCounts)-customerArrival2(count);
                sv2_difference2=sv2_serviceEndCounter2(sv2_serviceEndCounter2Counts)-customerArrival2(count);                                            
                sv2_difference3=sv2_serviceEndCounter3(sv2_serviceEndCounter3Counts)-customerArrival2(count);
                
               
                if ((sv2_counter2Status==1& sv2_difference2<sv2_difference1& sv2_serviceEnd(sv2_serviceEndCounts)>customerArrival2(count))|(sv2_counter3Status==1&sv2_difference3<sv2_difference2& sv2_serviceEndCounter2(sv2_serviceEndCounter2Counts)>customerArrival2(count)))                                       
                    if(sv2_counter3Status==1&sv2_difference3<sv2_difference2& sv2_serviceEndCounter2(sv2_serviceEndCounter2Counts)>customerArrival2(count))
                         sv2_serviceEndCounter3Counts=sv2_serviceEndCounter3Counts+1;                                    
                         sv2_waitingTime(count)=0;
                
                         if(customerArrival2(count)<sv2_serviceEndCounter3(sv2_serviceEndCounter3Counts-1))                                 
                             sv2_waitingTime(count)= sv2_serviceEndCounter3(sv2_serviceEndCounter3Counts-1)-customerArrival2(count);
                             sv2_totalQueueFrequency=sv2_totalQueueFrequency+1;
                         end                                                             
                         sv2_serviceBegin(count)=customerArrival2(count)+sv2_waitingTime(count);
                         sv2_serviceEndCounter3(sv2_serviceEndCounter3Counts)=sv2_serviceBegin(count)+sv2_custST(count);
                         sv2_timeSpent(count)=sv2_waitingTime(count)+sv2_custST(count);
            
                         %Main variables to print the logs of events
                         customerDepartureMain(sv2_customerIndex(count))= sv2_serviceEndCounter3(sv2_serviceEndCounter3Counts);
                         customerServiceMain(sv2_customerIndex(count))=sv2_serviceBegin(count);
                         customerQueueNumberMain(sv2_customerIndex(count))=queueNumber2(count);
                         customerCounterNumberMain(sv2_customerIndex(count))=sv2_counterNum3;
                         if(sv2_counter3StartTimeStatus==1)
                             sv2_counter3StartTime=sv2_serviceBegin(count);
                             sv2_counter3StartTimeStatus=0;
                         end
                         %end
            
                         printf('|%4.0f  |%4.0f    |%4.0f      |%4.0f    |%4.0f         |%4.0f         |%4.0f    |%4.0f           |\n',queueNumber2(count) ,sv2_counterNum3 ,sv2_custRandST(count), sv2_custST(count), sv2_serviceBegin(count) ,sv2_serviceEndCounter3(sv2_serviceEndCounter3Counts) ,sv2_waitingTime(count), sv2_timeSpent(count));
                                                                  
                    else
                        sv2_serviceEndCounter2Counts=sv2_serviceEndCounter2Counts+1;                                    
                        sv2_waitingTime(count)=0;
                
                        if(customerArrival2(count)<sv2_serviceEndCounter2(sv2_serviceEndCounter2Counts-1))   
                            sv2_queueFrequency2=sv2_queueFrequency2+1; 
                            sv2_totalQueueFrequency=sv2_totalQueueFrequency+1;                          
                            sv2_waitingTime(count)= sv2_serviceEndCounter2(sv2_serviceEndCounter2Counts-1)-customerArrival2(count);
                        end 

                         
                        if(sv2_queueFrequency2>2) %condition to open third counter
                            sv2_counter3Status=1;                         
                        end
                            
                        sv2_serviceBegin(count)=customerArrival2(count)+sv2_waitingTime(count);
                        sv2_serviceEndCounter2(sv2_serviceEndCounter2Counts)=sv2_serviceBegin(count)+sv2_custST(count);
                        sv2_timeSpent(count)=sv2_waitingTime(count)+sv2_custST(count);
            
                        %Main variables to print the logs of events
                        customerDepartureMain(sv2_customerIndex(count))= sv2_serviceEndCounter2(sv2_serviceEndCounter2Counts);
                        customerServiceMain(sv2_customerIndex(count))=sv2_serviceBegin(count);
                        customerQueueNumberMain(sv2_customerIndex(count))=queueNumber2(count);
                        customerCounterNumberMain(sv2_customerIndex(count))=sv2_counterNum2;
                        if(sv2_counter2StartTimeStatus==1)
                             sv2_counter2StartTime=sv2_serviceBegin(count);
                             sv2_counter2StartTimeStatus=0;
                        end
                        %end
            
                        printf('|%4.0f  |%4.0f    |%4.0f      |%4.0f    |%4.0f         |%4.0f         |%4.0f    |%4.0f           |\n',queueNumber2(count) ,sv2_counterNum2 ,sv2_custRandST(count), sv2_custST(count), sv2_serviceBegin(count) ,sv2_serviceEndCounter2(sv2_serviceEndCounter2Counts) ,sv2_waitingTime(count), sv2_timeSpent(count));                   
                        
                    end
                    
                else
                    sv2_serviceEndCounts=sv2_serviceEndCounts+1;                                    
                    sv2_waitingTime(count)=0;
                
                    if(customerArrival2(count)<sv2_serviceEnd(sv2_serviceEndCounts-1))
                        sv2_queueFrequency =sv2_queueFrequency+1;
                        sv2_queueFrequency2=sv2_queueFrequency2+1;
                        sv2_totalQueueFrequency=sv2_totalQueueFrequency+1;
                        sv2_waitingTime(count)= sv2_serviceEnd(sv2_serviceEndCounts-1)-customerArrival2(count);
                    end                                                             
                    sv2_serviceBegin(count)=customerArrival2(count)+sv2_waitingTime(count);
                    sv2_serviceEnd(sv2_serviceEndCounts)=sv2_serviceBegin(count)+sv2_custST(count);
                    sv2_timeSpent(count)=sv2_waitingTime(count)+sv2_custST(count);
            
                    if(sv2_queueFrequency>0)%condition to open second counter
                        sv2_counter2Status=1;
                    end
                    
                    if(sv2_queueFrequency2>1) %condition to open third counter
                        sv2_counter3Status=1;                         
                    end
                    %Main variables to print the logs of events
                    customerDepartureMain(sv2_customerIndex(count))= sv2_serviceEnd(sv2_serviceEndCounts);
                    customerServiceMain(sv2_customerIndex(count))=sv2_serviceBegin(count);
                    customerQueueNumberMain(sv2_customerIndex(count))=queueNumber2(count);
                    customerCounterNumberMain(sv2_customerIndex(count))=sv2_counterNum1;
                    if(sv2_counter1StartTimeStatus==1)
                        sv2_counter1StartTime= customerServiceMain(sv2_customerIndex(1));
                        sv2_counter1StartTimeStatus=0;
                    end
                    %end
            
                
                    printf('|%4.0f  |%4.0f    |%4.0f      |%4.0f    |%4.0f         |%4.0f         |%4.0f    |%4.0f           |\n',queueNumber2(count) ,sv2_counterNum1 ,sv2_custRandST(count), sv2_custST(count), sv2_serviceBegin(count) ,sv2_serviceEnd(sv2_serviceEndCounts) ,sv2_waitingTime(count), sv2_timeSpent(count));
                end
            end
            printf('------------------------------------------------------------------------------------------\n\n\n');
        
    
    
        elseif(sv2_counterNumberUsed==2)
            printf('***************Medical and Security Service counter***************\n');
            printf('------------------------------------------------------------------------------------------\n');
            printf('|Queue |Counter |RN Service|Service |Time Service |Time Service |Waiting |Time spends in |\n');
            printf('|number|number  |Time      |Time    |Begins       |Ends         |time    |the system     |\n');
            printf('------------------------------------------------------------------------------------------\n');
            printf('|%4.0f  |%4.0f    |%4.0f      |%4.0f    |%4.0f         |%4.0f         |%4.0f    |%4.0f           |\n',queueNumber2(1) ,sv2_counterNum1 ,sv2_custRandST(1), sv2_custST(1), sv2_serviceBegin(1) ,sv2_serviceEnd(1) ,sv2_waitingTime(1), sv2_timeSpent(1));
 
            for count=2:sv2_customerNumber        
                sv2_difference1=sv2_serviceEnd(sv2_serviceEndCounts)-customerArrival2(count);
                sv2_difference2=sv2_serviceEndCounter2(sv2_serviceEndCounter2Counts)-customerArrival2(count);                                            
                sv2_difference3=sv2_serviceEndCounter3(sv2_serviceEndCounter3Counts)-customerArrival2(count);            
               
                if ((sv2_difference2<sv2_difference1& sv2_serviceEnd(sv2_serviceEndCounts)>customerArrival2(count))|(sv2_counter3Status==1&sv2_difference3<sv2_difference2& sv2_serviceEndCounter2(sv2_serviceEndCounter2Counts)>customerArrival2(count)))                    
                    if(sv2_counter3Status==1&sv2_difference3<sv2_difference2& sv2_serviceEndCounter2(sv2_serviceEndCounter2Counts)>customerArrival2(count))
                         sv2_serviceEndCounter3Counts=sv2_serviceEndCounter3Counts+1;                                    
                         sv2_waitingTime(count)=0;
                
                         if(customerArrival2(count)<sv2_serviceEndCounter3(sv2_serviceEndCounter3Counts-1))                                 
                             sv2_waitingTime(count)= sv2_serviceEndCounter3(sv2_serviceEndCounter3Counts-1)-customerArrival2(count);
                             sv2_totalQueueFrequency=sv2_totalQueueFrequency+1;
                         end                                                             
                         sv2_serviceBegin(count)=customerArrival2(count)+sv2_waitingTime(count);
                         sv2_serviceEndCounter3(sv2_serviceEndCounter3Counts)=sv2_serviceBegin(count)+sv2_custST(count);
                         sv2_timeSpent(count)=sv2_waitingTime(count)+sv2_custST(count);
            
                         %Main variables to print the logs of events
                         customerDepartureMain(sv2_customerIndex(count))= sv2_serviceEndCounter3(sv2_serviceEndCounter3Counts);
                         customerServiceMain(sv2_customerIndex(count))=sv2_serviceBegin(count);
                         customerQueueNumberMain(sv2_customerIndex(count))=queueNumber2(count);
                         customerCounterNumberMain(sv2_customerIndex(count))=sv2_counterNum3;
                         if(sv2_counter3StartTimeStatus==1)
                             sv2_counter3StartTime=sv2_serviceBegin(count);
                             sv2_counter3StartTimeStatus=0;
                         end
                         %end
            
                         printf('|%4.0f  |%4.0f    |%4.0f      |%4.0f    |%4.0f         |%4.0f         |%4.0f    |%4.0f           |\n',queueNumber2(count) ,sv2_counterNum3 ,sv2_custRandST(count), sv2_custST(count), sv2_serviceBegin(count) ,sv2_serviceEndCounter3(sv2_serviceEndCounter3Counts) ,sv2_waitingTime(count), sv2_timeSpent(count));
                                                                  
                    else
                        sv2_serviceEndCounter2Counts=sv2_serviceEndCounter2Counts+1;                                    
                        sv2_waitingTime(count)=0;
                
                        if(customerArrival2(count)<sv2_serviceEndCounter2(sv2_serviceEndCounter2Counts-1))   
                            sv2_queueFrequency2=sv2_queueFrequency2+1;
                            sv2_totalQueueFrequency=sv2_totalQueueFrequency+1;                           
                            sv2_waitingTime(count)= sv2_serviceEndCounter2(sv2_serviceEndCounter2Counts-1)-customerArrival2(count);
                        end 

                         
                        if(sv2_queueFrequency2>2) %condition to open third counter
                            sv2_counter3Status=1;                         
                        end
                            
                        sv2_serviceBegin(count)=customerArrival2(count)+sv2_waitingTime(count);
                        sv2_serviceEndCounter2(sv2_serviceEndCounter2Counts)=sv2_serviceBegin(count)+sv2_custST(count);
                        sv2_timeSpent(count)=sv2_waitingTime(count)+sv2_custST(count);
                        
                        if(sv2_queueFrequency2>1) %condition to open third counter
                            sv2_counter3Status=1;                         
                        end
                        %Main variables to print the logs of events
                        customerDepartureMain(sv2_customerIndex(count))= sv2_serviceEndCounter2(sv2_serviceEndCounter2Counts);
                        customerServiceMain(sv2_customerIndex(count))=sv2_serviceBegin(count);
                        customerQueueNumberMain(sv2_customerIndex(count))=queueNumber2(count);
                        customerCounterNumberMain(sv2_customerIndex(count))=sv2_counterNum2;
                        if(sv2_counter2StartTimeStatus==1)
                            sv2_counter2StartTime=sv2_serviceBegin(count);
                            sv2_counter2StartTimeStatus=0;
                        end
                        %end
            
                        printf('|%4.0f  |%4.0f    |%4.0f      |%4.0f    |%4.0f         |%4.0f         |%4.0f    |%4.0f           |\n',queueNumber2(count) ,sv2_counterNum2 ,sv2_custRandST(count), sv2_custST(count), sv2_serviceBegin(count) ,sv2_serviceEndCounter2(sv2_serviceEndCounter2Counts) ,sv2_waitingTime(count), sv2_timeSpent(count));                   
                    end
                    
                else
                    sv2_serviceEndCounts=sv2_serviceEndCounts+1;                                    
                    sv2_waitingTime(count)=0;
                
                    if(customerArrival2(count)<sv2_serviceEnd(sv2_serviceEndCounts-1))
                        sv2_queueFrequency2=sv2_queueFrequency2+1;
                        sv2_totalQueueFrequency=sv2_totalQueueFrequency+1;
                        sv2_waitingTime(count)= sv2_serviceEnd(sv2_serviceEndCounts-1)-customerArrival2(count);
                    end                                                             
                    sv2_serviceBegin(count)=customerArrival2(count)+sv2_waitingTime(count);
                    sv2_serviceEnd(sv2_serviceEndCounts)=sv2_serviceBegin(count)+sv2_custST(count);
                    sv2_timeSpent(count)=sv2_waitingTime(count)+sv2_custST(count);
                    
                    if(sv2_queueFrequency2>1) %condition to open third counter
                        sv2_counter3Status=1;                         
                    end
                 
                    %Main variables to print the logs of events
                    customerDepartureMain(sv2_customerIndex(count))= sv2_serviceEnd(sv2_serviceEndCounts);
                    customerServiceMain(sv2_customerIndex(count))=sv2_serviceBegin(count);
                    customerQueueNumberMain(sv2_customerIndex(count))=queueNumber2(count);
                    customerCounterNumberMain(sv2_customerIndex(count))=sv2_counterNum1;
                    if(sv2_counter1StartTimeStatus==1)
                        sv2_counter1StartTime=customerServiceMain(sv2_customerIndex(1));
                        sv2_counter1StartTimeStatus=0;
                    end
                    %end
            
                
                    printf('|%4.0f  |%4.0f    |%4.0f      |%4.0f    |%4.0f         |%4.0f         |%4.0f    |%4.0f           |\n',queueNumber2(count) ,sv2_counterNum1 ,sv2_custRandST(count), sv2_custST(count), sv2_serviceBegin(count) ,sv2_serviceEnd(sv2_serviceEndCounts) ,sv2_waitingTime(count), sv2_timeSpent(count));
                end
            end
            printf('------------------------------------------------------------------------------------------\n\n\n');
        
            
        elseif(sv2_counterNumberUsed==3)
            printf('***************Medical and Security Service counter***************\n');
            printf('------------------------------------------------------------------------------------------\n');
            printf('|Queue |Counter |RN Service|Service |Time Service |Time Service |Waiting |Time spends in |\n');
            printf('|number|number  |Time      |Time    |Begins       |Ends         |time    |the system     |\n');
            printf('------------------------------------------------------------------------------------------\n');
            printf('|%4.0f  |%4.0f    |%4.0f      |%4.0f    |%4.0f         |%4.0f         |%4.0f    |%4.0f           |\n',queueNumber2(1) ,sv2_counterNum1 ,sv2_custRandST(1), sv2_custST(1), sv2_serviceBegin(1) ,sv2_serviceEnd(1) ,sv2_waitingTime(1), sv2_timeSpent(1));
 
            for count=2:sv2_customerNumber        
                sv2_difference1=sv2_serviceEnd(sv2_serviceEndCounts)-customerArrival2(count);
                sv2_difference2=sv2_serviceEndCounter2(sv2_serviceEndCounter2Counts)-customerArrival2(count);                                            
                sv2_difference3=sv2_serviceEndCounter3(sv2_serviceEndCounter3Counts)-customerArrival2(count);
                
               
                if (sv2_difference2<sv2_difference1& sv2_serviceEnd(sv2_serviceEndCounts)>customerArrival2(count)|(sv2_difference3<sv2_difference2& sv2_serviceEndCounter2(sv2_serviceEndCounter2Counts)>customerArrival2(count)))                    
                    if(sv2_difference3<sv2_difference2& sv2_serviceEndCounter2(sv2_serviceEndCounter2Counts)>customerArrival2(count))
                         sv2_serviceEndCounter3Counts=sv2_serviceEndCounter3Counts+1;                                    
                         sv2_waitingTime(count)=0;
                
                         if(customerArrival2(count)<sv2_serviceEndCounter3(sv2_serviceEndCounter3Counts-1))                                 
                             sv2_waitingTime(count)= sv2_serviceEndCounter3(sv2_serviceEndCounter3Counts-1)-customerArrival2(count);
                             sv2_totalQueueFrequency=sv2_totalQueueFrequency+1;
                         end                                                             
                         sv2_serviceBegin(count)=customerArrival2(count)+sv2_waitingTime(count);
                         sv2_serviceEndCounter3(sv2_serviceEndCounter3Counts)=sv2_serviceBegin(count)+sv2_custST(count);
                         sv2_timeSpent(count)=sv2_waitingTime(count)+sv2_custST(count);
            
                         %Main variables to print the logs of events
                         customerDepartureMain(sv2_customerIndex(count))= sv2_serviceEndCounter3(sv2_serviceEndCounter3Counts);
                         customerServiceMain(sv2_customerIndex(count))=sv2_serviceBegin(count);
                         customerQueueNumberMain(sv2_customerIndex(count))=queueNumber2(count);
                         customerCounterNumberMain(sv2_customerIndex(count))=sv2_counterNum3;
                         if(sv2_counter3StartTimeStatus==1)
                             sv2_counter3StartTime=sv2_serviceBegin(count);
                             sv2_counter3StartTimeStatus=0;
                         end
                         %end
            
                         printf('|%4.0f  |%4.0f    |%4.0f      |%4.0f    |%4.0f         |%4.0f         |%4.0f    |%4.0f           |\n',queueNumber2(count) ,sv2_counterNum3 ,sv2_custRandST(count), sv2_custST(count), sv2_serviceBegin(count) ,sv2_serviceEndCounter3(sv2_serviceEndCounter3Counts) ,sv2_waitingTime(count), sv2_timeSpent(count));
                                                                  
                    else
                        sv2_serviceEndCounter2Counts=sv2_serviceEndCounter2Counts+1;                                    
                        sv2_waitingTime(count)=0;
                
                        if(customerArrival2(count)<sv2_serviceEndCounter2(sv2_serviceEndCounter2Counts-1))                                                     
                            sv2_waitingTime(count)= sv2_serviceEndCounter2(sv2_serviceEndCounter2Counts-1)-customerArrival2(count);
                            sv2_totalQueueFrequency=sv2_totalQueueFrequency+1;
                        end 
                    
                        sv2_serviceBegin(count)=customerArrival2(count)+sv2_waitingTime(count);
                        sv2_serviceEndCounter2(sv2_serviceEndCounter2Counts)=sv2_serviceBegin(count)+sv2_custST(count);
                        sv2_timeSpent(count)=sv2_waitingTime(count)+sv2_custST(count);
            
                        %Main variables to print the logs of events
                        customerDepartureMain(sv2_customerIndex(count))= sv2_serviceEndCounter2(sv2_serviceEndCounter2Counts);
                        customerServiceMain(sv2_customerIndex(count))=sv2_serviceBegin(count);
                        customerQueueNumberMain(sv2_customerIndex(count))=queueNumber2(count);
                        customerCounterNumberMain(sv2_customerIndex(count))=sv2_counterNum2;
                        if(sv2_counter2StartTimeStatus==1)
                            sv2_counter2StartTime=sv2_serviceBegin(count);
                            sv2_counter2StartTimeStatus=0;
                        end
                        %end
            
                        printf('|%4.0f  |%4.0f    |%4.0f      |%4.0f    |%4.0f         |%4.0f         |%4.0f    |%4.0f           |\n',queueNumber2(count) ,sv2_counterNum2 ,sv2_custRandST(count), sv2_custST(count), sv2_serviceBegin(count) ,sv2_serviceEndCounter2(sv2_serviceEndCounter2Counts) ,sv2_waitingTime(count), sv2_timeSpent(count));                   
                    end
                    
                else
                    sv2_serviceEndCounts=sv2_serviceEndCounts+1;                                    
                    sv2_waitingTime(count)=0;
                
                    if(customerArrival2(count)<sv2_serviceEnd(sv2_serviceEndCounts-1))                  
                        sv2_waitingTime(count)= sv2_serviceEnd(sv2_serviceEndCounts-1)-customerArrival2(count);
                        sv2_totalQueueFrequency=sv2_totalQueueFrequency+1;
                    end                                                             
                    sv2_serviceBegin(count)=customerArrival2(count)+sv2_waitingTime(count);
                    sv2_serviceEnd(sv2_serviceEndCounts)=sv2_serviceBegin(count)+sv2_custST(count);
                    sv2_timeSpent(count)=sv2_waitingTime(count)+sv2_custST(count);
            
                 
                    %Main variables to print the logs of events
                    customerDepartureMain(sv2_customerIndex(count))= sv2_serviceEnd(sv2_serviceEndCounts);
                    customerServiceMain(sv2_customerIndex(count))=sv2_serviceBegin(count);
                    customerQueueNumberMain(sv2_customerIndex(count))=queueNumber2(count);
                    customerCounterNumberMain(sv2_customerIndex(count))=sv2_counterNum1;
                    if(sv2_counter1StartTimeStatus==1)
                        sv2_counter1StartTime=customerServiceMain(sv2_customerIndex(1));
                        sv2_counter1StartTimeStatus=0;
                    end
                    %end
            
                
                    printf('|%4.0f  |%4.0f    |%4.0f      |%4.0f    |%4.0f         |%4.0f         |%4.0f    |%4.0f           |\n',queueNumber2(count) ,sv2_counterNum1 ,sv2_custRandST(count), sv2_custST(count), sv2_serviceBegin(count) ,sv2_serviceEnd(sv2_serviceEndCounts) ,sv2_waitingTime(count), sv2_timeSpent(count));
                end
            end
            printf('------------------------------------------------------------------------------------------\n\n\n');
        end
    end
    
    
    
    %***********Service three:Briefing and demonstration service***********%
    if (sv3_customerNumber~=0)     
        if (generatorChoice==1)%Linear Congruential Generator      
            for count=1:sv3_customerNumber
                sv3_custRandST(count)=round(mod(rand.*100,99)+1);   
            end  
        elseif(generatorChoice==2)%Uniformly Distributed Integer
            for count=1:sv3_customerNumber
                sv3_custRandST(count)=randi(1,100);
            end
        elseif(generatorChoice==3)
            for count=1:sv3_customerNumber
                sv3_custRandST(count)=floor(99.*rand(1)+1);
            end
        end
    
    
        for count=1:sv3_customerNumber
            if(sv3_custRandST(count)>=1 && sv3_custRandST(count)<=30)
                sv3_custST(count)=5;
            elseif (sv3_custRandST(count)>=31 && sv3_custRandST(count)<=45)
                sv3_custST(count)=6;
            elseif (sv3_custRandST(count)>=46 && sv3_custRandST(count)<=80)
                sv3_custST(count)=7;
            elseif (sv3_custRandST(count)>=81 && sv3_custRandST(count)<=90)
                sv3_custST(count)=8;
            elseif (sv3_custRandST(count)>=91 && sv3_custRandST(count)<=100)
                sv3_custST(count)=9;
            end    
        end
        sv3_serviceBegin(1)=customerArrival3(1);
    
        sv3_serviceEnd(1)=sv3_serviceBegin(1)+sv3_custST(1);
        sv3_serviceEndCounts=1;
    
        sv3_serviceEndCounter2(1)=0;
        sv3_serviceEndCounter2Counts=1;
    
        sv3_waitingTime(1)=0;   
        sv3_timeSpent(1)=sv3_custST(1)+sv3_waitingTime(1);
       
        sv3_counter2Status=0;    
        sv3_queueFrequency=0;
        sv3_totalQueueFrequency=0;
        
        sv3_counter1StartTime=0;
        sv3_counter1StartTimeStatus=1;
        sv3_counter2StartTime=0;
        sv3_counter2StartTimeStatus=1;
    
        customerDepartureMain(sv3_customerIndex(1))=sv3_serviceEnd(1);
        customerServiceMain(sv3_customerIndex(1))=sv3_serviceBegin(1);
        customerQueueNumberMain(sv3_customerIndex(1))=queueNumber3(1);
        customerCounterNumberMain(sv3_customerIndex(1))=sv3_counterNum1;
        
        if (sv3_counterNumberUsed==1) %Counter used for service 3=1
            printf('***************Briefing and Demonstration Service counter***************\n');
            printf('------------------------------------------------------------------------------------------\n');
            printf('|Queue |Counter |RN Service|Service |Time Service |Time Service |Waiting |Time spends in |\n');
            printf('|number|number  |Time      |Time    |Begins       |Ends         |time    |the system     |\n');
            printf('------------------------------------------------------------------------------------------\n');
            printf('|%4.0f  |%4.0f    |%4.0f      |%4.0f    |%4.0f         |%4.0f         |%4.0f    |%4.0f           |\n',queueNumber3(1) ,sv3_counterNum1 ,sv3_custRandST(1), sv3_custST(1), sv3_serviceBegin(1) ,sv3_serviceEnd(1) ,sv3_waitingTime(1), sv3_timeSpent(1));
 
            for count=2:sv3_customerNumber        
                sv3_difference1=sv3_serviceEnd(sv3_serviceEndCounts)-customerArrival3(count);
                sv3_difference2=sv3_serviceEndCounter2(sv3_serviceEndCounter2Counts)-customerArrival3(count);                                            
                
                if (sv3_counter2Status==1& sv3_difference2<sv3_difference1& sv3_serviceEnd(sv3_serviceEndCounts)>customerArrival3(count))
                    sv3_serviceEndCounter2Counts=sv3_serviceEndCounter2Counts+1;                                    
                    sv3_waitingTime(count)=0;
                
                    if(customerArrival3(count)<sv3_serviceEndCounter2(sv3_serviceEndCounter2Counts-1))                                 
                        sv3_waitingTime(count)= sv3_serviceEndCounter2(sv3_serviceEndCounter2Counts-1)-customerArrival3(count);
                        sv3_totalQueueFrequency=sv3_totalQueueFrequency+1;
                    end                                                             
                    sv3_serviceBegin(count)=customerArrival3(count)+sv3_waitingTime(count);
                    sv3_serviceEndCounter2(sv3_serviceEndCounter2Counts)=sv3_serviceBegin(count)+sv3_custST(count);
                    sv3_timeSpent(count)=sv3_waitingTime(count)+sv3_custST(count);
            
                    %Main variables to print the logs of events
                    customerDepartureMain(sv3_customerIndex(count))= sv3_serviceEndCounter2(sv3_serviceEndCounter2Counts);
                    customerServiceMain(sv3_customerIndex(count))=sv3_serviceBegin(count);
                    customerQueueNumberMain(sv3_customerIndex(count))=queueNumber3(count);
                    customerCounterNumberMain(sv3_customerIndex(count))=sv3_counterNum2;
                    if(sv3_counter2StartTimeStatus==1)
                        sv3_counter2StartTime=sv3_serviceBegin(count);
                        sv3_counter2StartTimeStatus=0;
                    end
                    %end
            
                    printf('|%4.0f  |%4.0f    |%4.0f      |%4.0f    |%4.0f         |%4.0f         |%4.0f    |%4.0f           |\n',queueNumber3(count) ,sv3_counterNum2 ,sv3_custRandST(count), sv3_custST(count), sv3_serviceBegin(count) ,sv3_serviceEndCounter2(sv3_serviceEndCounter2Counts) ,sv3_waitingTime(count), sv3_timeSpent(count));                   
                else
                    sv3_serviceEndCounts=sv3_serviceEndCounts+1;                                    
                    sv3_waitingTime(count)=0;
                
                    if(customerArrival3(count)<sv3_serviceEnd(sv3_serviceEndCounts-1))
                        sv3_queueFrequency =sv3_queueFrequency+1;                   
                        sv3_waitingTime(count)= sv3_serviceEnd(sv3_serviceEndCounts-1)-customerArrival3(count);
                        sv3_totalQueueFrequency=sv3_totalQueueFrequency+1;
                    end                                                             
                    sv3_serviceBegin(count)=customerArrival3(count)+sv3_waitingTime(count);
                    sv3_serviceEnd(sv3_serviceEndCounts)=sv3_serviceBegin(count)+sv3_custST(count);
                    sv3_timeSpent(count)=sv3_waitingTime(count)+sv3_custST(count);
            
                    if(sv3_queueFrequency>0)
                        sv3_counter2Status=1;
                    end
                    %Main variables to print the logs of events
                    customerDepartureMain(sv3_customerIndex(count))= sv3_serviceEnd(sv3_serviceEndCounts);
                    customerServiceMain(sv3_customerIndex(count))=sv3_serviceBegin(count);
                    customerQueueNumberMain(sv3_customerIndex(count))=queueNumber3(count);
                    customerCounterNumberMain(sv3_customerIndex(count))=sv3_counterNum1;
                    if(sv3_counter1StartTimeStatus==1)
                        sv3_counter1StartTime=customerServiceMain(sv3_customerIndex(1));
                        sv3_counter1StartTimeStatus=0;
                    end
                    %end
            
                
                    printf('|%4.0f  |%4.0f    |%4.0f      |%4.0f    |%4.0f         |%4.0f         |%4.0f    |%4.0f           |\n',queueNumber3(count) ,sv3_counterNum1 ,sv3_custRandST(count), sv3_custST(count), sv3_serviceBegin(count) ,sv3_serviceEnd(sv3_serviceEndCounts) ,sv3_waitingTime(count), sv3_timeSpent(count));
                end
            end
            printf('------------------------------------------------------------------------------------------\n\n\n');
        
    
    
        elseif(sv3_counterNumberUsed==2)%Counter used for service 3=2
             printf('***************Briefing and Demonstration Service counter***************\n');
            printf('------------------------------------------------------------------------------------------\n');
            printf('|Queue |Counter |RN Service|Service |Time Service |Time Service |Waiting |Time spends in |\n');
            printf('|number|number  |Time      |Time    |Begins       |Ends         |time    |the system     |\n');
            printf('------------------------------------------------------------------------------------------\n');
            printf('|%4.0f  |%4.0f    |%4.0f      |%4.0f    |%4.0f         |%4.0f         |%4.0f    |%4.0f           |\n',queueNumber3(1) ,sv3_counterNum1 ,sv3_custRandST(1), sv3_custST(1), sv3_serviceBegin(1) ,sv3_serviceEnd(1) ,sv3_waitingTime(1), sv3_timeSpent(1));
 
            for count=2:sv3_customerNumber        
                sv3_difference1=sv3_serviceEnd(sv3_serviceEndCounts)-customerArrival3(count);
                sv3_difference2=sv3_serviceEndCounter2(sv3_serviceEndCounter2Counts)-customerArrival3(count);                                            
            
                if (sv3_difference2<sv3_difference1&sv3_serviceEnd(sv3_serviceEndCounts)>customerArrival3(count))
                    sv3_serviceEndCounter2Counts=sv3_serviceEndCounter2Counts+1;                                    
                    sv3_waitingTime(count)=0;
                
                    if(customerArrival3(count)<sv3_serviceEndCounter2(sv3_serviceEndCounter2Counts-1))                                 
                        sv3_waitingTime(count)= sv3_serviceEndCounter2(sv3_serviceEndCounter2Counts-1)-customerArrival3(count);
                        sv3_totalQueueFrequency=sv3_totalQueueFrequency+1;
                    end                                                             
                    sv3_serviceBegin(count)=customerArrival3(count)+sv3_waitingTime(count);
                    sv3_serviceEndCounter2(sv3_serviceEndCounter2Counts)=sv3_serviceBegin(count)+sv3_custST(count);
                    sv3_timeSpent(count)=sv3_waitingTime(count)+sv3_custST(count);
            
                    %Main variables to print the logs of events
                    customerDepartureMain(sv3_customerIndex(count))= sv3_serviceEndCounter2(sv3_serviceEndCounter2Counts);
                    customerServiceMain(sv3_customerIndex(count))=sv3_serviceBegin(count);
                    customerQueueNumberMain(sv3_customerIndex(count))=queueNumber3(count);
                    customerCounterNumberMain(sv3_customerIndex(count))=sv3_counterNum2;
                    if(sv3_counter2StartTimeStatus==1)
                        sv3_counter2StartTime=sv3_serviceBegin(count);
                        sv3_counter2StartTimeStatus=0;
                    end
                    %end
            
                    printf('|%4.0f  |%4.0f    |%4.0f      |%4.0f    |%4.0f         |%4.0f         |%4.0f    |%4.0f           |\n',queueNumber3(count) ,sv3_counterNum2 ,sv3_custRandST(count), sv3_custST(count), sv3_serviceBegin(count) ,sv3_serviceEndCounter2(sv3_serviceEndCounter2Counts) ,sv3_waitingTime(count), sv3_timeSpent(count));                   
                else
                    sv3_serviceEndCounts=sv3_serviceEndCounts+1;                                    
                    sv3_waitingTime(count)=0;
                
                    if(customerArrival3(count)<sv3_serviceEnd(sv3_serviceEndCounts-1))
                        sv3_queueFrequency =sv3_queueFrequency+1;                   
                        sv3_waitingTime(count)= sv3_serviceEnd(sv3_serviceEndCounts-1)-customerArrival3(count);
                        sv3_totalQueueFrequency=sv3_totalQueueFrequency+1;
                    end                                                             
                    sv3_serviceBegin(count)=customerArrival3(count)+sv3_waitingTime(count);
                    sv3_serviceEnd(sv3_serviceEndCounts)=sv3_serviceBegin(count)+sv3_custST(count);
                    sv3_timeSpent(count)=sv3_waitingTime(count)+sv3_custST(count);
            
                    if(sv3_queueFrequency>0)
                        sv3_counter2Status=1;
                    end
                    %Main variables to print the logs of events
                    customerDepartureMain(sv3_customerIndex(count))= sv3_serviceEnd(sv3_serviceEndCounts);
                    customerServiceMain(sv3_customerIndex(count))=sv3_serviceBegin(count);
                    customerQueueNumberMain(sv3_customerIndex(count))=queueNumber3(count);
                    customerCounterNumberMain(sv3_customerIndex(count))=sv3_counterNum1;
                    if(sv3_counter1StartTimeStatus==1)
                        sv3_counter1StartTime=customerServiceMain(sv3_customerIndex(1));
                        sv3_counter1StartTimeStatus=0;
                    end
                    %end
            
                
                    printf('|%4.0f  |%4.0f    |%4.0f      |%4.0f    |%4.0f         |%4.0f         |%4.0f    |%4.0f           |\n',queueNumber3(count) ,sv3_counterNum1 ,sv3_custRandST(count), sv3_custST(count), sv3_serviceBegin(count) ,sv3_serviceEnd(sv3_serviceEndCounts) ,sv3_waitingTime(count), sv3_timeSpent(count));
                end
            end
            printf('------------------------------------------------------------------------------------------\n\n\n');
        
        end
    end
      
    
    printf('*************************DATA REPORT*************************\n');
    avg_InterArrival=0;
    if customerNumber~=1
        for count=1:customerNumber        
            avg_InterArrival=avg_InterArrival+customerInterval(count);
        end
        avg_InterArrival=avg_InterArrival/(customerNumber-1);
        printf('Average interarrival time: %4.5f\n\n',avg_InterArrival);
    else
        avg_InterArrival=customerInterval(1);
        printf('Average interarrival time: %4.5f\n\n',avg_InterArrival);
    end
    if (sv1_customerNumber~=0)
        sv1_avgWaitingTime=0;
        for count=1:sv1_customerNumber
            sv1_avgWaitingTime=sv1_avgWaitingTime+sv1_waitingTime(count);
        end
        sv1_avgWaitingTime=sv1_avgWaitingTime/sv1_customerNumber;
        printf('Average waiting time for Registration Service: %4.5f\n',sv1_avgWaitingTime);
    end
    
    if (sv2_customerNumber~=0)
        sv2_avgWaitingTime=0;
        for count=1:sv2_customerNumber
            sv2_avgWaitingTime=sv2_avgWaitingTime+sv2_waitingTime(count);
        end
        sv2_avgWaitingTime=sv2_avgWaitingTime/sv2_customerNumber;
        printf('Average waiting time for Medical and Security Service: %4.5f\n',sv2_avgWaitingTime);
    end
    
    if (sv3_customerNumber~=0)
        sv3_avgWaitingTime=0;
        for count=1:sv3_customerNumber
            sv3_avgWaitingTime=sv3_avgWaitingTime+sv3_waitingTime(count);
        end
        sv3_avgWaitingTime=sv3_avgWaitingTime/sv3_customerNumber;
        printf('Average waiting time for Briefing and Demonstration Service: %4.5f\n\n',sv3_avgWaitingTime);
    end
    
    if (sv1_customerNumber~=0)
        sv1_avgTimeSpent=0;
        for count=1:sv1_customerNumber
            sv1_avgTimeSpent=sv1_avgTimeSpent+sv1_timeSpent(count);
        end
        sv1_avgTimeSpent=sv1_avgTimeSpent/sv1_customerNumber;
        printf('Average time spent for Registration Service: %4.5f\n',sv1_avgTimeSpent);
    end
    
    if (sv2_customerNumber~=0)
        sv2_avgTimeSpent=0;
        for count=1:sv2_customerNumber
            sv2_avgTimeSpent=sv2_avgTimeSpent+sv2_timeSpent(count);
        end
        sv2_avgTimeSpent=sv2_avgTimeSpent/sv2_customerNumber;
        printf('Average time spent for Medical and Security Service: %4.5f\n',sv2_avgTimeSpent);
    end
    
    if (sv3_customerNumber~=0)
        sv3_avgTimeSpent=0;
        for count=1:sv3_customerNumber
            sv3_avgTimeSpent=sv3_avgTimeSpent+sv3_timeSpent(count);
        end
        sv3_avgTimeSpent=sv3_avgTimeSpent/sv3_customerNumber;
        printf('Average time spent for Briefing and Demonstration Service: %4.5f\n\n',sv3_avgTimeSpent);
    end
    
    if (sv1_customerNumber~=0)
        sv1_probWaiting=0;
        sv1_probWaiting=sv1_totalQueueFrequency/sv1_customerNumber;
        printf('Waiting probability for Registration Service: %4.5f\n',sv1_probWaiting);
    end
    
    if (sv2_customerNumber~=0)
        sv2_probWaiting=0;
        sv2_probWaiting=sv2_totalQueueFrequency/sv2_customerNumber;
        printf('Waiting probability for Medical and Security Service: %4.5f\n',sv2_probWaiting);
    end
    
    if (sv3_customerNumber~=0)
        sv3_probWaiting=0;
        sv3_probWaiting=sv3_totalQueueFrequency/sv3_customerNumber;
        printf('Waiting probability for Briefing and Demonstration Service: %4.5f\n\n',sv3_probWaiting);
    end
    
    if (sv1_customerNumber~=0)
        sv1_avgST=0;
        for count=1:sv1_customerNumber
            sv1_avgST=sv1_avgST+sv1_custST(count);
        end
        sv1_avgST=sv1_avgST/sv1_customerNumber;
        printf('Average Service time for Registration Service: %4.5f\n',sv1_avgST);
    end
    
    if (sv2_customerNumber~=0)    
        sv2_avgST=0;
        for count=1:sv2_customerNumber
            sv2_avgST=sv2_avgST+sv2_custST(count);
        end
        sv2_avgST=sv2_avgST/sv2_customerNumber;
        printf('Average Service time for Medical and Security Service: %4.5f\n',sv2_avgST);
    end
    
    if (sv3_customerNumber~=0)
        sv3_avgST=0;
        for count=1:sv3_customerNumber
            sv3_avgST=sv3_avgST+sv3_custST(count);
        end
        sv3_avgST=sv3_avgST/sv3_customerNumber;
        printf('Average Service time for Briefing and Demonstration Service: %4.5f\n',sv3_avgST);
    end
    printf('*************************END OF DATA REPORT*************************\n');
    
    printf('\n\n*************************LOGS*************************\n');
               
    
    
    
    
    if (sv1_counterNumberUsed==1)
        printf('##In operation are counter %4.0f\n',sv1_counterNum1);
    elseif(sv1_counterNumberUsed==2)
        printf('##In operation are counter %4.0f,%4.0f\n',sv1_counterNum1,sv1_counterNum2);
    end
    
    if(sv2_counterNumberUsed==1)
         printf('##In operation are counter %4.0f\n',sv2_counterNum1);
    elseif(sv2_counterNumberUsed==2)
         printf('##In operation are counter %4.0f,%4.0f\n',sv2_counterNum1,sv2_counterNum2);
    elseif(sv2_counterNumberUsed==3)
         printf('##In operation are counter %4.0f,%4.0f,%4.0f\n',sv2_counterNum1,sv2_counterNum2,sv2_counterNum3);
    end
    
    if (sv3_counterNumberUsed==1)
        printf('##In operation are counter %4.0f\n',sv3_counterNum1);
    elseif(sv3_counterNumberUsed==2)
        printf('##In operation are counter %4.0f,%4.0f\n',sv3_counterNum1,sv3_counterNum2);
    end
    
    clock=-1;
    for count=1:5000
        clock=clock+1;

        if(sv1_customerNumber~=0)
            if(sv1_counter2StartTime==clock&sv1_counter2Status==1&sv1_counterNumberUsed==1)
                printf('##Counter %4.0f is in operation at time %4.0f\n',sv1_counterNum2,clock);
            end
        end
        
        if(sv2_customerNumber~=0)
            if(sv2_counter2StartTime==clock&sv2_counter2Status==1&sv2_counterNumberUsed==1)
                printf('##Counter %4.0f is in operation at time %4.0f\n',sv2_counterNum2,clock);
            elseif(sv2_counter3StartTime==clock&sv2_counter3Status==1&sv2_customerNumber~=0)
                printf('##Counter %4.0f is in operation at time %4.0f\n',sv2_counterNum3,clock);
            end
        end
        
        if(sv3_customerNumber~=0)
            if(sv3_counter2StartTime==clock&sv3_counter2Status==1&sv1_counterNumberUsed==1)
                printf('##Counter %4.0f is in operation at time %4.0f\n',sv3_counterNum2,clock);
            end
        end
        
        for count=1:customerNumber
                               
            if (customerArrivalMain(count)==clock)               
                printf('Arrival of customer%4.0f at minute%4.0f and the queue number is %4.0f\n',count,clock,customerQueueNumberMain(count));       
            end
            if (customerDepartureMain(count)==clock)
                printf('Departure of customer%4.0f at minute%4.0f\n',count,clock);
            end
            if (customerServiceMain(count)==clock)
                printf('Service for customer%4.0f started at minute%4.0f at counter%4.0f with queue number of %4.0f\n',count,clock,customerCounterNumberMain(count),customerQueueNumberMain(count));
            end 
        end
    end
    printf('\n\n*************************END OF LOGS*************************\n');