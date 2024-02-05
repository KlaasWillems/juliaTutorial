include("ODESolvers.jl")

tmax = 0.2;
dt = 0.1;
A = [0 1.0; -1 0];
y = [1; 0];

res = forwardEulerSolver(A, y, tmax, dt);

@assert (res[1] == 0.99) && (res[2] == -0.2)

@time res = forwardEulerSolver(A, y, tmax, dt);
@time res = forwardEulerSolver(A, y, tmax*2, dt);