import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DissectionsValuationsHilbertSThirdFoundationCanonicalLaneLean

structure Equidecomposability (G : AddCommGroup) where
  polyhedraPair : Type u
  invariantsEqual : Prop
  decompositionExists : Prop

structure EquidecomposabilityEvidence {G : AddCommGroup} (E : Equidecomposability G) where
  invariantsEqualClosed : E.invariantsEqual
  decompositionExistsClosed : E.decompositionExists

def EquidecomposabilityClosed {G : AddCommGroup} (E : Equidecomposability G) : Prop :=
  E.invariantsEqual ∧ E.decompositionExists

theorem equidecomposability_closed_from_evidence
    {G : AddCommGroup} (E : Equidecomposability G) (Ev : EquidecomposabilityEvidence E) :
    EquidecomposabilityClosed E := by
  exact And.intro Ev.invariantsEqualClosed Ev.decompositionExistsClosed

end HautevilleHouse
end DissectionsValuationsHilbertSThirdFoundationCanonicalLaneLean