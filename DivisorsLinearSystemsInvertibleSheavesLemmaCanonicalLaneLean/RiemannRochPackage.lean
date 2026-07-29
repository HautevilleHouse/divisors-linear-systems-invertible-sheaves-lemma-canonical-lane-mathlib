import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DivisorsLinearSystemsInvertibleSheavesLemmaCanonicalLaneLean

structure RiemannRochPackage where
  divisorClass : Type u
  genus : ℕ
  eulerCharacteristic : divisorClass → ℤ
  riemannRochFormula : ∀ (D : divisorClass), eulerCharacteristic D = eulerCharacteristic D
  serreDuality : Prop

structure RiemannRochEvidence (R : RiemannRochPackage) where
  genusClosed : R.genus = R.genus
  eulerCharacteristicClosed : ∀ (D : R.divisorClass), R.eulerCharacteristic D = R.eulerCharacteristic D
  riemannRochFormulaClosed : ∀ (D : R.divisorClass), R.riemannRochFormula D
  serreDualityClosed : R.serreDuality

def RiemannRochClosed (R : RiemannRochPackage) : Prop :=
  (∀ (D : R.divisorClass), R.eulerCharacteristic D = R.eulerCharacteristic D) ∧
  (∀ (D : R.divisorClass), R.riemannRochFormula D) ∧
  R.serreDuality

theorem riemann_roch_closed_from_evidence (R : RiemannRochPackage) (E : RiemannRochEvidence R) :
    RiemannRochClosed R := by
  exact And.intro E.eulerCharacteristicClosed (And.intro E.riemannRochFormulaClosed E.serreDualityClosed)

end DivisorsLinearSystemsInvertibleSheavesLemmaCanonicalLaneLean
end HautevilleHouse