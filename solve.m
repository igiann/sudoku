function solve()
  global mtrx
  for y=1:9
    for x=1:9
      if mtrx(y,x)==0
        for n=1:9
          if possible(x,y,n)
            mtrx(y,x)=n;
            solve();
            mtrx(y,x)=0;
          end
        end
        return
      end   
      
    end
  end
  disp(mtrx)
end