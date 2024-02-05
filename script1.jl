include("LAFunctions.jl")

N = 3;
A = rand(N, N);
b = rand(N);

xtrue = A*b;
x1 = MVP1(A, b);
x2 = MVP2(A, b);

@assert norm(xtrue - x1, 2)/norm(xtrue, 2) < 1e-14;
@assert norm(xtrue - x2, 2)/norm(xtrue, 2) < 1e-14;