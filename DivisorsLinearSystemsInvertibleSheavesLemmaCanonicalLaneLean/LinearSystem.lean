import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DivisorsLinearSystemsInvertibleSheavesLemmaCanonicalLaneLean

structure LinearSystemPackage where
  divisorClass : Type u
  vectorSpace : Type v
  globalSections : Type w
  dimension : Prop
  baseLocus : Prop

structure LinearSystemEvidence (L : LinearSystemPackage) where
  dimensionClosed : L.dimension
  baseLocusClosed : L.baseLocus

def LinearSystemClosed (L : LinearSystemPackage) : Prop :=
  L.dimension ∧ L.baseLocus

theorem linear_system_closed_from_evidence (L : LinearSystemPackage)
    (E : LinearSystemEvidence L) : LinearSystemClosed L := by
  exact And.intro E.dimensionClosed E.baseLocusClosed

end DivisorsLinearSystemsInvertibleSheavesLemmaCanonicalLaneLean
end HautevilleHouse