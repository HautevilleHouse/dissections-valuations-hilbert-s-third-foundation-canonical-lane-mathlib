import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DissectionsValuationsHilbertSThirdFoundationCanonicalLaneLean

structure DehnHadwigerTheorem where
  polyhedron : Type u
  dehnInvariantZero : Prop
  scissorsCongruent : Prop
  implication : dehnInvariantZero → scissorsCongruent

def DehnHadwigerStatement (D : DehnInvariant) (P : Type u) : Prop :=
  D.invariantValue = 0 → ∃ (H : HilbertThirdProblem), H.scissorsCongruence

end DissectionsValuationsHilbertSThirdFoundationCanonicalLaneLean
end HautevilleHouse
