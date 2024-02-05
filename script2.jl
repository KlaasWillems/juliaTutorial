include("LAFunctions.jl")

N = 3;
A = rand(N, N);
b = rand(N);

for i = 1:5
    @time x1 = MVP1(A, b);
end

C = rand(Int64, N, N);
d = rand(Int64, N); 
for i = 1:5
    @time x1 = MVP1(C, d);
end

