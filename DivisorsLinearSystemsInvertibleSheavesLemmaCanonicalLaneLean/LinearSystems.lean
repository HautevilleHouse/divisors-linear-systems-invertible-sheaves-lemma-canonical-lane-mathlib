import canonicalLaneMathlib.AdmissibleClass
import DivisorsLinearSystemsInvertibleSheavesLemmaCanonicalLaneLean.InvertibleSheaves

namespace HautevilleHouse
namespace DivisorsLinearSystemsInvertibleSheavesLemmaCanonicalLaneLean

structure CompleteLinearSystem where
  divisorClass : Type
  sheaf : InvertibleSheaf
  globalSectionsDimension : Nat
  basepointFree : Prop
  veryAmple : Prop

structure LinearSystemEvidence (L : CompleteLinearSystem) where
  basepointFreeClosed : L.basepointFree
  veryAmpleClosed : L.veryAmple

def CompleteLinearSystemIsClosed (L : CompleteLinearSystem) : Prop :=
  L.basepointFree ∧ L.veryAmple

theorem linear_system_closed_from_evidence (L : CompleteLinearSystem)
    (E : LinearSystemEvidence L) : CompleteLinearSystemIsClosed L := by
  exact And.intro E.basepointFreeClosed E.veryAmpleClosed

end DivisorsLinearSystemsInvertibleSheavesLemmaCanonicalLaneLean
end HautevilleHouse