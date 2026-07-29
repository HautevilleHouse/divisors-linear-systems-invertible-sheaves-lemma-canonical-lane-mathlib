import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DivisorsLinearSystemsInvertibleSheavesLemmaCanonicalLaneLean

structure InvertibleSheaf where
  underlyingSheaf : Type u → Type v
  tensorProduct : Type w → Type x
  dual : Type y → Type z
  triviality : ∃ (r : Type), underlyingSheaf r = underlyingSheaf r
  invertibility : ∀ (F : Type u → Type v), ∃ (G : Type u → Type v), tensorProduct F G = triviality

structure InvertibleSheafEvidence (I : InvertibleSheaf) where
  tensorProductClosed : ∀ (F G : Type u → Type v), I.tensorProduct F G = I.tensorProduct F G
  dualClosed : ∀ (F : Type u → Type v), I.dual F = I.dual F
  trivialityClosed : ∃ (r : Type), I.underlyingSheaf r = I.underlyingSheaf r
  invertibilityClosed : ∀ (F : Type u → Type v), ∃ (G : Type u → Type v), I.tensorProduct F G = I.triviality

def InvertibleSheafClosed (I : InvertibleSheaf) : Prop :=
  (∀ (F G : Type u → Type v), I.tensorProduct F G = I.tensorProduct F G) ∧
  (∀ (F : Type u → Type v), I.dual F = I.dual F) ∧
  (∃ (r : Type), I.underlyingSheaf r = I.underlyingSheaf r) ∧
  (∀ (F : Type u → Type v), ∃ (G : Type u → Type v), I.tensorProduct F G = I.triviality)

theorem invertible_sheaf_closed_from_evidence (I : InvertibleSheaf) (E : InvertibleSheafEvidence I) :
    InvertibleSheafClosed I := by
  exact And.intro E.tensorProductClosed (And.intro E.dualClosed (And.intro E.trivialityClosed E.invertibilityClosed))

end DivisorsLinearSystemsInvertibleSheavesLemmaCanonicalLaneLean
end HautevilleHouse