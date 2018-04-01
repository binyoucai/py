%定义chaosc1超松弛迭代函数,A为系数矩阵,b为常数矩阵,x0为初始向量，e为误差值,w松弛系数
%返回值x为方程组的近似解，k为迭代次数
%函数开始
function [ x,k ] = chaosc1( A,b,x0,e,w )
%计算向量b的长度
n=length(b);
%初始化r
r=A*x0-b;
%初始化迭代次数k
k=0;
%循环开始
while norm(r,inf)>e
    %开始计算迭代次数K
    k=k+1;
    %雅可比分量迭代开始
    for i=1:n
        %开始分量公式右边s1
        s1=0;
        for j=1:i-1
            s1=s1+A(i,j)*x(j);
        end
        %完成分量公式右边s1
        %开始分量公式右边s2
        s2=0;
        for j=i+1:n
            s2=s2+A(i,j)*x0(j);
        end
        %完成分量公式右边s2
        %开始计算xi
        x(i,1)=(1-w)*x0(i)+w./A(i,i)*(b(i)-s1-s2);
        end 
      %重新计算r
      r=A*x-b;
      %替换x0
      x0=x;
      
end
%循环结束
end
%函数结束

