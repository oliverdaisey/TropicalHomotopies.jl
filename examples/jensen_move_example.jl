p1 = point(0, 0)
p2 = point(1, 0)
p3 = point(0, 1)
p4 = point(1, 1)

p5 = point(0, 0)
p6 = point(2, 0)
p7 = point(2, 1)

mySupport = support([p1, p2, p3, p4], [0, 0, 0, 0])
mySecondSupport = support([p5, p6, p7], [2, 1, 0])

mixedSupport = mixed_support((mySupport, mySecondSupport))

candidate = mixed_support((support([p1, p2], [0, 0]), support([p6, p7], [1, 0])))

targetSupport = mixed_support((support([p1, p2, p3, p4], [0, 0, 0, 0]), support([p5, p6, p7], [2, 0, 3])))

M = matroid(Oscar.matrix(QQ, [1 0; 0 1]))

chainOfFlats = chain_of_flats(M, [[1]])

σ = mixed_cell(candidate, chainOfFlats)

T = tracker(mixedSupport, [σ], [targetSupport])

pt, drift = tropical_intersection_point_and_drift(T, σ)

println("intersection point = ", pt)
println("tropical drift = ", drift)