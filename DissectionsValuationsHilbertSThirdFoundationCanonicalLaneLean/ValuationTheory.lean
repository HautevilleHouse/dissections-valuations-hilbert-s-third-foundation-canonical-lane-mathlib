import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DissectionsValuationsHilbertSThirdFoundationCanonicalLaneLean

structure Valuation (α : Type) where
  domain : Type u
  additiveProperty : Prop
  polyhedralInvariance : Prop

structure ValuationEvidence {α : Type} (V : Valuation α) where
  additivePropertyClosed : V.additiveProperty
  polyhedralInvarianceClosed : V.polyhedralInvariance

def ValuationClosed {α : Type} (V : Valuation α) : Prop :=
  V.additiveProperty ∧ V.polyhedralInvariance

theorem valuation_closed_from_evidence
    {α : Type} (V : Valuation α) (E : ValuationEvidence V) :
    ValuationClosed V := by
  exact And.intro E.additivePropertyClosed E.polyhedralInvarianceClosed

end HautevilleHouse
end DissectionsValuationsHilbertSThirdFoundationCanonicalLaneLean