import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DissectionsValuationsHilbertSThirdFoundationCanonicalLaneLean.DissectionValuationStructure

namespace HautevilleHouse
namespace DissectionsValuationsHilbertSThirdFoundationCanonicalLaneLean

structure DehnInvariantEvidence (D : DissectionValuationPackage) where
  invariantDefined : Prop
  invarianceUnderDissection : Prop
  invariantDefinedClosed : invariantDefined
  invarianceUnderDissectionClosed : invarianceUnderDissection

def DehnInvariantClosed (D : DissectionValuationPackage) (E : DehnInvariantEvidence D) : Prop :=
  E.invariantDefined ∧ E.invarianceUnderDissection

theorem dehn_invariant_closed_from_evidence (D : DissectionValuationPackage) (E : DehnInvariantEvidence D) : DehnInvariantClosed D E := by
  exact And.intro E.invariantDefinedClosed E.invarianceUnderDissectionClosed

end HautevilleHouse.DissectionsValuationsHilbertSThirdFoundationCanonicalLaneLean
end HautevilleHouse
