fibo=[1,1];
while (fibo(end)<200)
    fiboNew=fibo(end) + fibo(end-1);
    fibo=[fibo,fiboNew];
end