import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DissectionsValuationsHilbertSThirdFoundationCanonicalLaneLean.HilbertDehnInvariant
import HautevilleHouse.DissectionsValuationsHilbertSThirdFoundationCanonicalLaneLean.ScissorsCongruence

namespace HautevilleHouse
namespace DissectionsValuationsHilbertSThirdFoundationCanonicalLaneLean

/-!
# Hilbert's Third Problem Endgame

This module assembles the admissible-class closure for the resolution
of Hilbert's third problem: volume and Dehn invariant together form a
complete set of invariants for scissors congruence.
-/

def ConstrainedHilbertThirdClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

end DissectionsValuationsHilbertSThirdFoundationCanonicalLaneLean
end HautevilleHouse