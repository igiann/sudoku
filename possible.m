function bool=possible(x,y,n)
  global mtrx
  bool = true; 
  for i=1:9
    if mtrx(y,i)==n
      bool = false;
    end
  end
  
  for i=1:9
    if mtrx(i,x)==n
      bool = false;
    end
  end
  
  x0=fix((x-1)/3)*3+1;
  y0=fix((y-1)/3)*3+1;
  
  for i=0:2
    for j=0:2
      if mtrx(y0+i,y0+j)==n
        bool = false;
      end  
    end
  end 
  
end