with Ada.Text_IO;
use Ada.Text_IO;

-- This function finds the prime numbers between a range. (start integer, end Integer)

function Primes(st: Integer; en: Integer) return array (Positive) is

 s : Integer := st;
 e : Integer := en;
 index: Integer;
 primes: array (Positive);
  
  begin 
  index := 1;
   for i in Integer range s, s+1 .. e loop
    for j in Integer range 1 .. s loop
      exit when ((i mod j=0) and i /= j and j /= 1);
      
     if (i mod j =0 and i=j)
      then primes(index):= i;
           index := index+1;

    end loop;
   end loop;
  return primes;

end Primes;

procedure test is 
 primes: array(Positive) := Primes(1,20);

 begin
  Put_Line(primes);

end test;
