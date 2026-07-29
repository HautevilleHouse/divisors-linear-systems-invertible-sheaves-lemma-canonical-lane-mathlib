import canonicalLaneMathlib.AdmissibleClass
import DivisorsLinearSystemsInvertibleSheavesLemmaCanonicalLaneLean.InvertibleSheaves

namespace HautevilleHouse
namespace DivisorsLinearSystemsInvertibleSheavesLemmaCanonicalLaneLean

structure DivisorPackage (L : InvertibleSheafPackage) where
  weilDivisor : Type u
  cartierDivisor : Type v
  linearEquivalence : Prop
  associatedLineBundle : InvertibleSheafPackage
  correspondence : Prop

structure DivisorEvidence {L : InvertibleSheafPackage}
    (D : DivisorPackage L) where
  linearEquivalenceClosed : D.linearEquivalence
  correspondenceClosed : D.correspondence

def DivisorClosed {L : InvertibleSheafPackage}
    (D : DivisorPackage L) : Prop :=
  D.linearEquivalence ∧ D.correspondence ∧ InvertibleSheafClosed D.associatedLineBundle

theorem divisor_closed_from_evidence {L : InvertibleSheafPackage}
    (D : DivisorPackage L) (E : DivisorEvidence D) : DivisorClosed D := by
  exact And.intro E.linearEquivalenceClosed
    (And.intro E.correspondenceClosed (invertible_sheaf_closed_from_evidence D.associatedLineBundle ?_))

end DivisorsLinearSystemsInvertibleSheavesLemmaCanonicalLaneLean
end HautevilleHouse
