import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DivisorsLinearSystemsInvertibleSheavesLemmaCanonicalLaneLean

structure DivisorsLinearSystemsInvertibleSheavesLemmaStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  carriedRemainder : String

def divisorsLinearSystemsInvertibleSheavesLemmaStatement : DivisorsLinearSystemsInvertibleSheavesLemmaStatement :=
  { sourceKey := "DivisorsLinearSystemsInvertibleSheavesLemmaCanonicalLaneLean",
    theoremName := "Divisors Linear Systems Invertible Sheaves Lemma",
    theoremObject := "A central lemma in algebraic geometry relating divisors, linear systems, and invertible sheaves.",
    classicalBoundary := "Closed under admissible class via bridge and gate.",
    carriedRemainder := "The unrestricted classical closure remains carried outside the admissible class."
  }

end DivisorsLinearSystemsInvertibleSheavesLemmaCanonicalLaneLean
end HautevilleHouse