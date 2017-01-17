function [x,r]=zol(f,a,b, eps)
z = (5^0.5-1)/2;

x1 = a + (b-a) * (1-z);fx1 = f(x1);
x2 = a + (b-a) * z;fx2 = f(x2);

while(b - a > eps)
  if(fx1 < fx2)
    b = x2;
    x2 = x1;fx2 = fx1;
    x1 = a + (b-a) * (1-z);
    fx1 = f(x1);
  else
    a = x1;
    x1 = x2;fx1 = fx2;
    x2 = a + (b-a) * z;
    fx2 = f(x2);
  end
end

x = (a+b)/2;
r = f(x);

end
