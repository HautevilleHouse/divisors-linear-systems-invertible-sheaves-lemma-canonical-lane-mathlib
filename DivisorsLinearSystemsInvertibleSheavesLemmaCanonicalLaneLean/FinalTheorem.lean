import canonicalLaneMathlib.AdmissibleClass
import DivisorsLinearSystemsInvertibleSheavesLemmaCanonicalLaneLean.BridgeLemmas
import DivisorsLinearSystemsInvertibleSheavesLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DivisorsLinearSystemsInvertibleSheavesLemmaCanonicalLaneLean

def DivisorsLinearSystemsInvertibleSheavesLemmaClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem divisors_linear_systems_invertible_sheaves_lemma_endgame (A : AdmissibleClass) :
    DivisorsLinearSystemsInvertibleSheavesLemmaClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DivisorsLinearSystemsInvertibleSheavesLemmaCanonicalLaneLean
end HautevilleHouse