import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DissectionsValuationsHilbertSThirdFoundationCanonicalLaneLean

structure DissectionValuationPackage where
  basePolyhedron : Type u
  dissectionEquivalence : Prop
  valuationFunctional : Type v
  invariantCondition : Prop
  basePolyhedronDefined : basePolyhedron
  dissectionEquivalenceClosed : dissectionEquivalence
  valuationFunctionalClosed : valuationFunctional
  invariantConditionClosed : invariantCondition

structure DissectionValuationEvidence (D : DissectionValuationPackage) where
  basePolyhedronClosed : D.basePolyhedronDefined
  dissectionEquivalenceClosed : D.dissectionEquivalence
  valuationFunctionalClosed : D.valuationFunctional
  invariantConditionClosed : D.invariantCondition

def DissectionValuationClosed (D : DissectionValuationPackage) : Prop :=
  D.basePolyhedronDefined ∧ D.dissectionEquivalence ∧ D.valuationFunctional ∧ D.invariantCondition

theorem dissection_valuation_closed_from_evidence (D : DissectionValuationPackage) (E : DissectionValuationEvidence D) : DissectionValuationClosed D := by
  exact And.intro E.basePolyhedronClosed (And.intro E.dissectionEquivalenceClosed (And.intro E.valuationFunctionalClosed E.invariantConditionClosed))

end DissectionsValuationsHilbertSThirdFoundationCanonicalLaneLean
end HautevilleHouse
