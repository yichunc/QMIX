include("project_1.jl")
include("project_2.jl")

n_s = 7; n_a = 3; n_o = 6;

T = zeros(Float64,n_s,n_a,n_s)
O = zeros(Float64,n_s,n_a,n_o)
R = zeros(Float64,n_s,n_a,n_s)

for a = 1 : 3
    T[1,a,2] = 0.5
    T[1,a,3] = 0.5
end

T[2,1,4] = 1.0
T[2,2,5] = 1.0
T[2,3,4] = 1.0

T[3,1,5] = 1.0
T[3,2,1] = 1.0
T[3,3,1] = 1.0

T[4,1,2] = 1.0
T[4,2,1] = 1.0
T[4,3,1] = 1.0

T[5,1,3] = 1.0
T[5,2,1] = 1.0
T[5,3,1] = 1.0

T[6,1,1] = 1.0
T[6,2,1] = 1.0
T[6,3,1] = 1.0

T[7,1,1] = 1.0
T[7,2,1] = 1.0
T[7,3,1] = 1.0

for a = 1 : 3
    O[1,a,1] = 1.0
    O[2,a,2] = 1.0
    O[3,a,2] = 1.0
    O[4,a,3] = 1.0
    O[5,a,4] = 1.0
    O[6,a,5] = 1.0
    O[7,a,6] = 1.0
end

for a = 1 : 3
    for sp = 1 : 7
        R[6,a,sp] = 2.0
        R[7,a,sp] = 0.0
    end
end


