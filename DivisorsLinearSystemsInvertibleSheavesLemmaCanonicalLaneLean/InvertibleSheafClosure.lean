import DivisorsLinearSystemsInvertibleSheavesLemmaCanonicalLaneLean.LinearSystemClosure

namespace HautevilleHouse
namespace DivisorsLinearSystemsInvertibleSheavesLemmaCanonicalLaneLean

structure InvertibleSheafPackage {A : AdmissibleClass} {R : RiemannRochSpace A} (L : LinearSystemPackage R) where
  lineBundle : Type u
  transitionFunctions : Prop
  trivializationCover : Prop
  chernClass : ℤ
  sheafCoherent : Prop

def InvertibleSheafClosed {A : AdmissibleClass} {R : RiemannRochSpace A} {L : LinearSystemPackage R} (I : InvertibleSheafPackage L) : Prop :=
  I.trivializationCover ∧ I.sheafCoherent

theorem invertible_sheaf_closed_from_evidence
    {A : AdmissibleClass} {R : RiemannRochSpace A} {L : LinearSystemPackage R}
    (I : InvertibleSheafPackage L) (hTriv : I.trivializationCover) (hCoher : I.sheafCoherent) :
    InvertibleSheafClosed I := by
  exact And.intro hTriv hCoher

end DivisorsLinearSystemsInvertibleSheavesLemmaCanonicalLaneLean
end HautevilleHouse