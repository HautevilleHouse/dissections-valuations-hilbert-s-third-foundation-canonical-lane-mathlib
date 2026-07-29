import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DissectionsValuationsHilbertSThirdFoundationCanonicalLaneLean.DissectionValuationStructure

namespace HautevilleHouse
namespace DissectionsValuationsHilbertSThirdFoundationCanonicalLaneLean

structure ValuationDecomposition (D : DissectionValuationPackage) where
  decompositionType : Prop
  valuationAdditivity : Prop
  decompositionTypeClosed : decompositionType
  valuationAdditivityClosed : valuationAdditivity

def ValuationDecompositionClosed (D : DissectionValuationPackage) (V : ValuationDecomposition D) : Prop :=
  V.decompositionType ∧ V.valuationAdditivity

theorem valuation_decomposition_closed_from_evidence (D : DissectionValuationPackage) (V : ValuationDecomposition D) : ValuationDecompositionClosed D V := by
  exact And.intro V.decompositionTypeClosed V.valuationAdditivityClosed

end HautevilleHouse.DissectionsValuationsHilbertSThirdFoundationCanonicalLaneLean
end HautevilleHouse
