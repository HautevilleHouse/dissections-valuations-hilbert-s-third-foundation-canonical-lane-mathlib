import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DissectionsValuationsHilbertSThirdFoundationCanonicalLaneLean

structure HilbertThirdProblemState where
  tetrahedronVolumesComputed : Prop
  scissorsCongruenceEquivalence : Prop
  dehnInvariantZero : Prop

structure HilbertThirdProblemEvidence (H : HilbertThirdProblemState) where
  tetrahedronVolumesComputedClosed : H.tetrahedronVolumesComputed
  scissorsCongruenceEquivalenceClosed : H.scissorsCongruenceEquivalence
  dehnInvariantZeroClosed : H.dehnInvariantZero

def HilbertThirdProblemClosed (H : HilbertThirdProblemState) : Prop :=
  H.tetrahedronVolumesComputed ∧ H.scissorsCongruenceEquivalence ∧ H.dehnInvariantZero

theorem hilbert_third_problem_closed_from_evidence
    (H : HilbertThirdProblemState) (E : HilbertThirdProblemEvidence H) :
    HilbertThirdProblemClosed H := by
  exact And.intro E.tetrahedronVolumesComputedClosed
    (And.intro E.scissorsCongruenceEquivalenceClosed E.dehnInvariantZeroClosed)

end HautevilleHouse
end DissectionsValuationsHilbertSThirdFoundationCanonicalLaneLean