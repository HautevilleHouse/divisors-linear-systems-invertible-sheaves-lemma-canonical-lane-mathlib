import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DivisorsLinearSystemsInvertibleSheavesLemmaCanonicalLaneLean

structure DivisorsSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DivisorsAdmittedObject where
  space : DivisorsSpace
  scheme : Prop
  divisorClass : Prop
  invertibleSheaf : Prop
  linearSystem : Prop
  conclusion : divisorClass ∧ invertibleSheaf ∧ linearSystem

structure DivisorsEndgameState where
  object : DivisorsAdmittedObject

def DivisorsWitnessClosed (O : DivisorsAdmittedObject) : Prop :=
  O.divisorClass ∧ O.invertibleSheaf ∧ O.linearSystem

end DivisorsLinearSystemsInvertibleSheavesLemmaCanonicalLaneLean
end HautevilleHouse