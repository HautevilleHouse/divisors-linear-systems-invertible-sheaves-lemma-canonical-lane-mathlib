import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DivisorsLinearSystemsInvertibleSheavesLemmaCanonicalLaneLean

structure InvertibleSheaf where
  baseScheme : Type
  structureSheaf : Type
  sectionsOverOpen : Type
  localTrivialization : Prop
  transitionFunctionCompatible : Prop

def InvertibleSheafIsClosed (L : InvertibleSheaf) : Prop :=
  L.localTrivialization ∧ L.transitionFunctionCompatible

structure InvertibleSheafEvidence (L : InvertibleSheaf) where
  localTrivializationClosed : L.localTrivialization
  transitionFunctionCompatibleClosed : L.transitionFunctionCompatible

theorem invertible_sheaf_closed_from_evidence (L : InvertibleSheaf)
    (E : InvertibleSheafEvidence L) : InvertibleSheafIsClosed L := by
  exact And.intro E.localTrivializationClosed E.transitionFunctionCompatibleClosed

end DivisorsLinearSystemsInvertibleSheavesLemmaCanonicalLaneLean
end HautevilleHouse