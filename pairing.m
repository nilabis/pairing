% PROJECT: Christmas-Present Angel
clear all
n=7; %number of people ( numbers represent the order in the list)
domain=[1:7];   %people drawing
match=[1:7];    %name pool
i=1;
while i<=n               %number of the person drawing
   rnd=randi(n-i+1,1);  %draw result
   if match(rnd)==i     %check if the person drew himself
                        %repeat the loop, if so
   else
       domain_matched(i)=match(rnd); %if not, confirm the matching
       match(rnd)=[];                %remove the person matched from the match pool
       i=i+1;
   end
   if i==n && match==n    %there is one problematic case, if the last person is
       i=i-n+1;           %left with only one option(himself), repeat the whole procedure
       match=[1:7];
   end
end
domain_matched=cat(1,domain,domain_matched); % put the domain and matches 
                                             % together to see pairs
   
