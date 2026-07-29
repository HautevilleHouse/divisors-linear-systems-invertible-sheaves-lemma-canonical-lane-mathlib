import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DivisorsLinearSystemsInvertibleSheavesLemmaCanonicalLaneLean

structure DivisorInvertibleSheafCorrespondence where
  divisorToSheaf : DivisorClassGroup.underlyingGroup → InvertibleSheaf.underlyingSheaf
  sheafToDivisor : InvertibleSheaf.underlyingSheaf → DivisorClassGroup.underlyingGroup
  leftInverse : ∀ (a : DivisorClassGroup.underlyingGroup), sheafToDivisor (divisorToSheaf a) = a
  rightInverse : ∀ (b : InvertibleSheaf.underlyingSheaf), divisorToSheaf (sheafToDivisor b) = b

structure DivisorInvertibleSheafCorrespondenceEvidence (C : DivisorInvertibleSheafCorrespondence) where
  leftInverseClosed : ∀ (a : DivisorClassGroup.underlyingGroup), C.sheafToDivisor (C.divisorToSheaf a) = a
  rightInverseClosed : ∀ (b : InvertibleSheaf.underlyingSheaf), C.divisorToSheaf (C.sheafToDivisor b) = b

def DivisorInvertibleSheafCorrespondenceClosed (C : DivisorInvertibleSheafCorrespondence) : Prop :=
  (∀ (a : DivisorClassGroup.underlyingGroup), C.sheafToDivisor (C.divisorToSheaf a) = a) ∧
  (∀ (b : InvertibleSheaf.underlyingSheaf), C.divisorToSheaf (C.sheafToDivisor b) = b)

theorem divisor_invertible_sheaf_correspondence_closed_from_evidence (C : DivisorInvertibleSheafCorrespondence) (E : DivisorInvertibleSheafCorrespondenceEvidence C) :
    DivisorInvertibleSheafCorrespondenceClosed C := by
  exact And.intro E.leftInverseClosed E.rightInverseClosed

end DivisorsLinearSystemsInvertibleSheavesLemmaCanonicalLaneLean
end HautevilleHouse