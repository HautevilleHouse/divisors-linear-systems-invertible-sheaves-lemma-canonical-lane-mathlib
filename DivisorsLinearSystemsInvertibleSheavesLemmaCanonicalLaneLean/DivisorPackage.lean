import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DivisorsLinearSystemsInvertibleSheavesLemmaCanonicalLaneLean

structure DivisorPackage where
  scheme : Type u
  topology : TopologicalSpace scheme
  structureSheaf : Type v
  divisor : Type w
  picardGroup : Type x
  schemeSmooth : Prop
  divisorEffective : Prop
  canonicalDivisor : Prop
  linearEquivalence : Prop

structure DivisorEvidence (D : DivisorPackage) where
  schemeSmoothClosed : D.schemeSmooth
  divisorEffectiveClosed : D.divisorEffective
  canonicalDivisorClosed : D.canonicalDivisor
  linearEquivalenceClosed : D.linearEquivalence

def DivisorClosed (D : DivisorPackage) : Prop :=
  D.schemeSmooth ∧ D.divisorEffective ∧ D.canonicalDivisor ∧ D.linearEquivalence

theorem divisor_closed_from_evidence (D : DivisorPackage) (E : DivisorEvidence D) :
    DivisorClosed D := by
  exact And.intro E.schemeSmoothClosed (And.intro E.divisorEffectiveClosed (And.intro E.canonicalDivisorClosed E.linearEquivalenceClosed))

end DivisorsLinearSystemsInvertibleSheavesLemmaCanonicalLaneLean
end HautevilleHouse