import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DivisorsLinearSystemsInvertibleSheavesLemmaCanonicalLaneLean

structure DivisorClassPackage where
  divisorGroup : Type u
  linearEquivalence : Prop
  effectiveClass : Prop
  completeLinearSystem : Prop

structure DivisorClassEvidence (D : DivisorClassPackage) where
  linearEquivalenceClosed : D.linearEquivalence
  effectiveClassClosed : D.effectiveClass
  completeLinearSystemClosed : D.completeLinearSystem

def DivisorClassClosed (D : DivisorClassPackage) : Prop :=
  D.linearEquivalence ∧ D.effectiveClass ∧ D.completeLinearSystem

theorem divisor_class_closed_from_evidence (D : DivisorClassPackage)
    (E : DivisorClassEvidence D) : DivisorClassClosed D := by
  exact And.intro E.linearEquivalenceClosed
    (And.intro E.effectiveClassClosed E.completeLinearSystemClosed)

end DivisorsLinearSystemsInvertibleSheavesLemmaCanonicalLaneLean
end HautevilleHouse