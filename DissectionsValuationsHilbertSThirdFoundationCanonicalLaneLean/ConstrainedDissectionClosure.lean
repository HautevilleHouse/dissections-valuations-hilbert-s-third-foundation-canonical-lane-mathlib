import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DissectionsValuationsHilbertSThirdFoundationCanonicalLaneLean.InvariantValuationBridge
import HautevilleHouse.DissectionsValuationsHilbertSThirdFoundationCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DissectionsValuationsHilbertSThirdFoundationCanonicalLaneLean

def ConstrainedDissectionClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_dissection_endgame (A : AdmissibleClass) : ConstrainedDissectionClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end HautevilleHouse.DissectionsValuationsHilbertSThirdFoundationCanonicalLaneLean
end HautevilleHouse
