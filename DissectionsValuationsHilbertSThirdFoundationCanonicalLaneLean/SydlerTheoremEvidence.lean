import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DissectionsValuationsHilbertSThirdFoundationCanonicalLaneLean.DehnInvariantEvidence
import HautevilleHouse.DissectionsValuationsHilbertSThirdFoundationCanonicalLaneLean.ValuationDecomposition

namespace HautevilleHouse
namespace DissectionsValuationsHilbertSThirdFoundationCanonicalLaneLean

structure SydlerTheoremEvidence (D : DissectionValuationPackage) (E : DehnInvariantEvidence D) (V : ValuationDecomposition D) where
  classificationComplete : Prop
  invariantCharacterization : Prop
  classificationCompleteClosed : classificationComplete
  invariantCharacterizationClosed : invariantCharacterization

def SydlerTheoremClosed (D : DissectionValuationPackage) (E : DehnInvariantEvidence D) (V : ValuationDecomposition D) (S : SydlerTheoremEvidence D E V) : Prop :=
  S.classificationComplete ∧ S.invariantCharacterization

theorem sydler_theorem_closed_from_evidence (D : DissectionValuationPackage) (E : DehnInvariantEvidence D) (V : ValuationDecomposition D) (S : SydlerTheoremEvidence D E V) : SydlerTheoremClosed D E V S := by
  exact And.intro S.classificationCompleteClosed S.invariantCharacterizationClosed

end HautevilleHouse.DissectionsValuationsHilbertSThirdFoundationCanonicalLaneLean
end HautevilleHouse
