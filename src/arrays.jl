export sequence_of_three, alternate_items

function sequence_of_three(start)
    out = Float64[]
    push!(out, start, start+1, start+2)
    return out
end

function alternate_items(nrepeats::Integer, item1, item2)
    out = Int64[]
    for _ = 1:nrepeats           # _ is often used for a variable you'll not use again
        push!(out, item1, item2)
    end
    return out
end
function alternate_items(nrepeats::Integer, item1::Missing, item2)
    out = Int64[]
    for _ = 1:nrepeats           # _ is often used for a variable you'll not use again
        push!(out, item2)
    end
    return out
end
function alternate_items(nrepeats::Integer, item1, item2::Missing)
    out = Int64[]
    for _ = 1:nrepeats           # _ is often used for a variable you'll not use again
        push!(out, item1)
    end
    return out
end
