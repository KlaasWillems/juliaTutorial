struct DiagonalMatrix
    a::Vector{Float64}
end

function +(A::DiagonalMatrix, B::DiagonalMatrix)
    return DiagonalMatrix(A.a + B.a)
end