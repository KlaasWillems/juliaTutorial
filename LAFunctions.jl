using LinearAlgebra

"""
    MVP1(A, b)

Implementation of matrix-vector product (MVP) of a square matrix A and a vector b. 
Each element of the result x[i] is computed using the innerproduct of the i-th row of A and the vector b.
"""
function MVP1(A, b)
    x = Vector{typeof(A[1,1])}(undef, length(b))  # Allocate a vector of the same size as b. The type of the elements is taken from A.
    for i = 1:length(b)
        x[i] = dot(A[i, :], b)
    end
    return x
end

"""
    MVP2(A, b)

Implementation of matrix-vector product (MVP) of a square matrix A and a vector b. 
The result x is computed as a linear combination of the columns of A. 
For example, for a three by three matrix A: x = b[1]*A[:, 1] + b[2]*A[:, 2] + b[3]*A[:, 3].
"""
function MVP2(A, b)
    x = zeros(Float64, length(b))
    for i = 1:length(b)
        for j = 1:length(b)
            x[j] += b[i]*A[j, i]
        end
    end
    return x
end
