using Oscar

function jensen_time(T::Tracker, σ::MixedCell)::Union{QQFieldElem,Nothing}
    #TODO: When T includes Bergman fan, transform to appropriate hypersurface dual supports.

    Δ = ambient_support(T)
    σ = active_support(T)
    C = mixed_cell_cone(σ, Δ)
    
    @assert σ in C "The mixed cell being tracked is not in the mixed cell cone."

    v = direction(T)
    pts = points(C)

    # Calculate when σ breaches C when heights change in direction v

    return v
    
end