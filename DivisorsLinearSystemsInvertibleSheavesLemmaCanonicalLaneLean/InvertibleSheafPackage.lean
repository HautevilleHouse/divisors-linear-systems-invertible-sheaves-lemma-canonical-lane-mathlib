import canonicalLaneMathlib.AdmissibleClass
import DivisorsLinearSystemsInvertibleSheavesLemmaCanonicalLaneLean.DivisorPackage

namespace HautevilleHouse
namespace DivisorsLinearSystemsInvertibleSheavesLemmaCanonicalLaneLean

structure InvertibleSheafPackage {D : DivisorPackage} where
  sheaf : Type u
  transitionFunctions : Type v
  invertible : Prop
  tensorProduct : Type w
  dualSheaf : Type x

structure InvertibleSheafEvidence {D : DivisorPackage} (I : InvertibleSheafPackage D) where
  invertibleClosed : I.invertible
  tensorProductClosed : Prop
  dualSheafClosed : Prop

def InvertibleSheafClosed {D : DivisorPackage} (I : InvertibleSheafPackage D) : Prop :=
  I.invertible

theorem invertible_sheaf_closed_from_evidence {D : DivisorPackage} (I : InvertibleSheafPackage D) (E : InvertibleSheafEvidence I) :
  InvertibleSheafClosed I := by
  exact E.invertibleClosed

end DivisorsLinearSystemsInvertibleSheavesLemmaCanonicalLaneLean
end HautevilleHouse