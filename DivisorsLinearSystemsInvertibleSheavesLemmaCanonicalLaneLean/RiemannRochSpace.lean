import DivisorsLinearSystemsInvertibleSheavesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DivisorsLinearSystemsInvertibleSheavesLemmaCanonicalLaneLean

structure RiemannRochSpace (A : AdmissibleClass) where
  divisorClass : Type u
  sheafCohomologyZero : Prop
  eulerCharacteristic : ℤ
  riemannRochSatisfied : Prop

def RiemannRochClosed {A : AdmissibleClass} (R : RiemannRochSpace A) : Prop :=
  R.sheafCohomologyZero ∧ R.riemannRochSatisfied

theorem riemann_roch_closed_from_admissible (A : AdmissibleClass) :
    ∃ (R : RiemannRochSpace A), RiemannRochClosed R := by
  refine ⟨?_, ?_, ?_, ?_, ?_⟩
  · exact A.object.divisorClass
  · exact A.object.sheafCohomologyZeroClosed
  · exact A.object.eulerCharacteristic
  · exact A.object.riemannRochSatisfiedClosed
  · exact And.intro A.object.sheafCohomologyZeroClosed A.object.riemannRochSatisfiedClosed

end DivisorsLinearSystemsInvertibleSheavesLemmaCanonicalLaneLean
end HautevilleHouse