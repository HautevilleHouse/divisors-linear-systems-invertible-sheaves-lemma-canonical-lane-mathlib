import canonicalLaneMathlib.AdmissibleClass
import DivisorsLinearSystemsInvertibleSheavesLemmaCanonicalLaneLean.InvertibleSheafPackage

namespace HautevilleHouse
namespace DivisorsLinearSystemsInvertibleSheavesLemmaCanonicalLaneLean

structure CanonicalSheafPackage {D : DivisorPackage} where
  canonicalSheaf : Type u
  dualizingSheaf : Type v
  canonicalDivisorCorrespondence : Prop
  serreDuality : Prop

structure CanonicalSheafEvidence {D : DivisorPackage} (C : CanonicalSheafPackage D) where
  canonicalDivisorCorrespondenceClosed : C.canonicalDivisorCorrespondence
  serreDualityClosed : C.serreDuality

def CanonicalSheafClosed {D : DivisorPackage} (C : CanonicalSheafPackage D) : Prop :=
  C.canonicalDivisorCorrespondence ∧ C.serreDuality

theorem canonical_sheaf_closed_from_evidence {D : DivisorPackage} (C : CanonicalSheafPackage D) (E : CanonicalSheafEvidence C) :
  CanonicalSheafClosed C := by
  exact And.intro E.canonicalDivisorCorrespondenceClosed E.serreDualityClosed

end DivisorsLinearSystemsInvertibleSheavesLemmaCanonicalLaneLean
end HautevilleHouse