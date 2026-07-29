import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DivisorsLinearSystemsInvertibleSheavesLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : DivisorsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DivisorsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DivisorsLinearSystemsInvertibleSheavesLemmaCanonicalLaneLean
end HautevilleHouse