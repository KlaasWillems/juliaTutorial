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
    Npts = trunc(Int64, tmax/dt) + 1
    yOld = y0
    y = Vector{Float64}(undef, length(y0))
    for i = 2:Npts
        y = yOld + MVP2(A, yOld)*dt
        yOld = y
    end
    return y
end
