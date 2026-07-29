import DivisorsLinearSystemsInvertibleSheavesLemmaCanonicalLaneLean.RiemannRochSpace

namespace HautevilleHouse
namespace DivisorsLinearSystemsInvertibleSheavesLemmaCanonicalLaneLean

structure LinearSystemPackage {A : AdmissibleClass} (R : RiemannRochSpace A) where
  basePointsFree : Prop
  veryAmple : Prop
  embeddingDefined : Prop
  linearSystemClosedTarget : Type u

def LinearSystemClosed {A : AdmissibleClass} {R : RiemannRochSpace A} (L : LinearSystemPackage R) : Prop :=
  L.basePointsFree ∧ L.veryAmple ∧ L.embeddingDefined

theorem linear_system_closed_from_evidence
    {A : AdmissibleClass} {R : RiemannRochSpace A} (L : LinearSystemPackage R)
    (hBase : L.basePointsFree) (hAmple : L.veryAmple) (hEmbed : L.embeddingDefined) :
    LinearSystemClosed L := by
  exact And.intro hBase (And.intro hAmple hEmbed)

end DivisorsLinearSystemsInvertibleSheavesLemmaCanonicalLaneLean
end HautevilleHouse