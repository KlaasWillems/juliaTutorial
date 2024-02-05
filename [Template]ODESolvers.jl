include("LAFunctions.jl")

"""
    forwardEulerSolver(A, y0)

Solver linear ODE y' = Ay using forward Euler method. Make use of MVP2. 
Function should return the result at time tmax. Do not store intermediate vaiables in a matrix.

# Arguments: 
- `A::Matrix{Float64}`: Square matrix of size NxN.
- `y0::Vector{Float64}`: Initial condition. Vector of length N.
- `tmax::Float64`: Final time.
- `dt::Float64`: Time step.
"""
function forwardEulerSolver(A, y0, tmax, dt)
    # Implementation here
end
