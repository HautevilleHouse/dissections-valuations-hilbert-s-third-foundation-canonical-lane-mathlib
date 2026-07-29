import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DissectionsValuationsHilbertSThirdFoundationCanonicalLaneLean

def ConstrainedSydlerClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_sydler_endgame (A : AdmissibleClass) :
    ConstrainedSydlerClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DissectionsValuationsHilbertSThirdFoundationCanonicalLaneLean
end HautevilleHouse