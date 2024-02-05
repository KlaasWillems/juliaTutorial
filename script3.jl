include("LAFunctions.jl")

N = 5000;
A = rand(N, N);
b = rand(N);

x1 = MVP1(A, b);
@time x1 = MVP1(A, b);
x2 = MVP2(A, b);
@time x2 = MVP2(A, b);
