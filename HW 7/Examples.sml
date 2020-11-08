3;
3+2;
sqrt(2.0);

not(true);
true andalso false;

"string";

val three = 3;
three;

val five = 3+2;
three + five;

fun double(x) = 2*x;
double(222);
double(2.0)

fun max(x:int, y:int, z:int) = if((x>y) andalso (x>z)) then x else (if (y>z) then y else z);
max(3,2,2);
fun factorial(x) = if x=0 then 1 else x*factorial(x-1);
factorial(5);
factorial(10);
fun gcd(m,n):int = if m=n then n else if m>n then gcd(m-n,n) else gcd(m,n-m);

gcd(12,30);
gcd(1,20);
gcd(126,3257);
gcd(125,56345);

val t1 = (1,2,3);
val t2 = (4,(5.0,6));
val t3 = (7,8.0,"nine");

#1(t1);
#1(t2);
#2(t2);
#2(#2(t2));
#3(t3);
#4(t3);

[1,2,3];
[true,false,true];
[[1,2,3],[4,5],[6]];
[1,[2]];

[];
nil;

hd[1,2,3];
hd[[1,2],[3]];

tl[1,2,3];
tl[[1,2],[3]];

hd;
tl;

5::[];
1::[2,3];
[1,2]::[[3],[4,5,6,7]];
[1]::[2,3];
[1,2,3]=[1,2,3];
[1,2]=[2,1];
tl[1] = [];

fun concat(x,y) = if x=[] then y else hd(x)::concat(tl(x),y);
concat([1,2],[3]);
concat([],[1,2]);
concat([1,2],[]);