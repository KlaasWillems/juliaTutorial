using LinearAlgebra

"""
    MVP1(A, b)

Implementation of matrix-vector product (MVP) of a square matrix A and a vector b. 
Each element of the result x[i] is computed using the innerproduct of the i-th row of A and the vector b.
"""
function MVP1(A, b)
    x = Vector{typeof(A[1,1])}(undef, length(b))  # Allocate a vector of the same size as b. The type of the elements is taken from A.
    # Implement matrix-vector product here
    """ 
    Tips:   1) Use square brackets to select elements, e.g., b[1] to select the first element, b[end] to select the last element. Use numpy-like slicing, e.g. A[:, 1] selects the first column.
            2) Indexing starts at one.
            3) All MATLAB/Python functions like dot(), length(), size(A), ... are available.
    """


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
    # Implement matrix-vector product here

    return x
end

