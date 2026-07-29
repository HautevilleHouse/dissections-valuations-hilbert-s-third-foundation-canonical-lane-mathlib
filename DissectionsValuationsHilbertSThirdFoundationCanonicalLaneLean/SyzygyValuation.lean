import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DissectionsValuationsHilbertSThirdFoundationCanonicalLaneLean

structure SyzygyValuation where
  group : Type u
  valuation : group → ℝ
  syzygy : Prop

structure SyzygyValuationEvidence (S : SyzygyValuation) where
  syzygyClosed : S.syzygy

def SyzygyValuationClosed (S : SyzygyValuation) : Prop :=
  S.syzygy

theorem syzygy_valuation_closed_from_evidence (S : SyzygyValuation)
    (E : SyzygyValuationEvidence S) : SyzygyValuationClosed S :=
  E.syzygyClosed

end DissectionsValuationsHilbertSThirdFoundationCanonicalLaneLean
end HautevilleHouse
