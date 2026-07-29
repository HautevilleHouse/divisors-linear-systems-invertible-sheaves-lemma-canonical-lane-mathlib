import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DivisorsLinearSystemsInvertibleSheavesLemmaCanonicalLaneLean

structure DivSpace where
  carrier : Type
  topology : TopologicalSpace carrier

def AdmittedDivisorObject where
  space : DivSpace
  divisorClass : Prop
  invertibleSheaf : Prop
  conclusion : invertibleSheaf

end DivisorsLinearSystemsInvertibleSheavesLemmaCanonicalLaneLean
end HautevilleHouse