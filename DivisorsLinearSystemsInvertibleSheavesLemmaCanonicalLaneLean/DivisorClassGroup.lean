import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DivisorsLinearSystemsInvertibleSheavesLemmaCanonicalLaneLean

structure DivisorClassGroup where
  underlyingGroup : Type u
  addition : underlyingGroup → underlyingGroup → underlyingGroup
  zero : underlyingGroup
  invertibility : ∀ a : underlyingGroup, ∃ b : underlyingGroup, addition a b = zero
  abelian : ∀ a b : underlyingGroup, addition a b = addition b a

structure DivisorClassGroupEvidence (G : DivisorClassGroup) where
  additionClosed : ∀ a b : G.underlyingGroup, G.addition a b = G.addition a b
  zeroClosed : ∀ a : G.underlyingGroup, G.addition a G.zero = a
  invertibilityClosed : ∀ a : G.underlyingGroup, ∃ b : G.underlyingGroup, G.addition a b = G.zero
  abelianClosed : ∀ a b : G.underlyingGroup, G.addition a b = G.addition b a

def DivisorClassGroupClosed (G : DivisorClassGroup) : Prop :=
  (∀ a b : G.underlyingGroup, G.addition a b = G.addition a b) ∧
  (∀ a : G.underlyingGroup, G.addition a G.zero = a) ∧
  (∀ a : G.underlyingGroup, ∃ b : G.underlyingGroup, G.addition a b = G.zero) ∧
  (∀ a b : G.underlyingGroup, G.addition a b = G.addition b a)

theorem divisor_class_group_closed_from_evidence (G : DivisorClassGroup) (E : DivisorClassGroupEvidence G) :
    DivisorClassGroupClosed G := by
  exact And.intro E.additionClosed (And.intro E.zeroClosed (And.intro E.invertibilityClosed E.abelianClosed))

end DivisorsLinearSystemsInvertibleSheavesLemmaCanonicalLaneLean
end HautevilleHouse