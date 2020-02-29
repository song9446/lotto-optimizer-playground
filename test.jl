using LinearAlgebra
using Random

const N = 49
const C = 6
const R = 3
const K = 200
const SEED = 1

Random.seed!(SEED)

M = zeros(N, K)
for i in size(M, 1)
    M[i, randperm(N)[1:C]] .= 1
end
print(M)
