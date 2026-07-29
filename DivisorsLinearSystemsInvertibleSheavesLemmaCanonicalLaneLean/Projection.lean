import DivisorsLinearSystemsInvertibleSheavesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DivisorsLinearSystemsInvertibleSheavesLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def divisorProjection : Projection DivisorEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem divisor_projection_idempotent (x : DivisorEndgameState) :
    divisorProjection.toFun (divisorProjection.toFun x) = divisorProjection.toFun x := by
  exact divisorProjection.idempotent x

end DivisorsLinearSystemsInvertibleSheavesLemmaCanonicalLaneLean
end HautevilleHouse