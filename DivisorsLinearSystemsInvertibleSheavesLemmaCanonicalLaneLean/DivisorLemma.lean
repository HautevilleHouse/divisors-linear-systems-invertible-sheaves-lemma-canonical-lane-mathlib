import canonicalLaneMathlib.AdmissibleClass
import DivisorsLinearSystemsInvertibleSheavesLemmaCanonicalLaneLean.LinearSystems

namespace HautevilleHouse
namespace DivisorsLinearSystemsInvertibleSheavesLemmaCanonicalLaneLean

structure DivisorLemmaPackage where
  divisor : Type
  lineBundle : InvertibleSheaf
  sheafCorrespondence : Prop
  globalSectionIsomorphism : Prop
  divisorClassClosed : Prop

structure DivisorLemmaEvidence (D : DivisorLemmaPackage) where
  sheafCorrespondenceClosed : D.sheafCorrespondence
  globalSectionIsomorphismClosed : D.globalSectionIsomorphism
  divisorClassClosedClosed : D.divisorClassClosed

def DivisorLemmaClosed (D : DivisorLemmaPackage) : Prop :=
  D.sheafCorrespondence ∧ D.globalSectionIsomorphism ∧ D.divisorClassClosed

theorem divisor_lemma_closed_from_evidence (D : DivisorLemmaPackage)
    (E : DivisorLemmaEvidence D) : DivisorLemmaClosed D := by
  exact And.intro E.sheafCorrespondenceClosed
    (And.intro E.globalSectionIsomorphismClosed E.divisorClassClosedClosed)

end DivisorsLinearSystemsInvertibleSheavesLemmaCanonicalLaneLean
end HautevilleHouse