// Declare three predicate symbols.
rel ColorEdge(x: Int, c: Str, y: Int)
rel ColorPath(x: Int, c: Str, y: Int)
rel ColorlessPath(x: Int, y: Int)

def main(): Bool =
    // Introduce some facts for colored paths.
    let f1 = {
        ColorEdge(1, "blue", 2).
        ColorEdge(2, "blue", 3).
    };
    // Introduce some rules for computing paths.
    let r1 = {
        ColorPath(x, c, y) :- ColorEdge(x, c, y).
        ColorPath(x, c, z) :- ColorPath(x, c, y), ColorEdge(y, c, z).
    };
    // Introduce some rules for computing colorless paths.
    let r2 = {
        ColorlessPath(x, y) :- ColorPath(x, _, y).
    };
    // Compute all the color paths.
    let m1 = solve (f1 <+> r1);

    // Use that result to compute colorless paths.
    let m2 = solve (m1 <+> r2);

    // Check that there is a path from 1 to 3.
    m2 |= ColorlessPath(1, 3).
