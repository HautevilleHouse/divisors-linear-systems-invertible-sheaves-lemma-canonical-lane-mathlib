import canonicalLaneMathlib.AdmissibleClass
import DivisorsLinearSystemsInvertibleSheavesLemmaCanonicalLaneLean.DivisorPackage

namespace HautevilleHouse
namespace DivisorsLinearSystemsInvertibleSheavesLemmaCanonicalLaneLean

structure LinearSystemPackage {D : DivisorPackage} where
  completeLinearSystem : Type u
  dimension : ℕ
  baseLocus : Prop
  freeLinearSystem : Prop
  veryAmple : Prop

structure LinearSystemEvidence {D : DivisorPackage} (L : LinearSystemPackage D) where
  baseLocusClosed : L.baseLocus
  freeLinearSystemClosed : L.freeLinearSystem
  veryAmpleClosed : L.veryAmple

def LinearSystemClosed {D : DivisorPackage} (L : LinearSystemPackage D) : Prop :=
  L.baseLocus ∧ L.freeLinearSystem ∧ L.veryAmple

theorem linear_system_closed_from_evidence {D : DivisorPackage} (L : LinearSystemPackage D) (E : LinearSystemEvidence L) :
    LinearSystemClosed L := by
  exact And.intro E.baseLocusClosed (And.intro E.freeLinearSystemClosed E.veryAmpleClosed)

end DivisorsLinearSystemsInvertibleSheavesLemmaCanonicalLaneLean
end HautevilleHouse