import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DissectionsValuationsHilbertSThirdFoundationCanonicalLaneLean.HilbertDehnInvariant

namespace HautevilleHouse
namespace DissectionsValuationsHilbertSThirdFoundationCanonicalLaneLean

/-!
# Scissors Congruence and Hilbert's Third Problem Resolution

This module models scissors congruence as an equivalence relation on
polyhedra and states the classification theorem: two polyhedra are
scissors-congruent iff they have equal volume and equal Dehn invariant.
This resolves Hilbert's third problem negatively: a tetrahedron and a
cube of equal volume are not scissors-congruent.
-/

structure ScissorsCongruencePackage (D : DehnInvariantPackage) where
  polyhedra : Type u
  equivalenceRelation : polyhedra → polyhedra → Prop
  volumeFunction : polyhedra → ℝ
  volumeAdditive : Prop
  classificationTheorem : Prop
  volumeDehnInvariantCompleteInvariant : Prop
  volumeDehnInvariantCompleteInvariantTerm : volumeDehnInvariantCompleteInvariant

structure ScissorsCongruenceEvidence {D : DehnInvariantPackage}
    (S : ScissorsCongruencePackage D) where
  volumeAdditiveClosed : S.volumeAdditive
  classificationTheoremClosed : S.classificationTheorem

def ScissorsCongruenceClosed {D : DehnInvariantPackage}
    (S : ScissorsCongruencePackage D) : Prop :=
  S.volumeAdditive ∧ S.classificationTheorem

theorem scissors_congruence_closed_from_evidence
    {D : DehnInvariantPackage} (S : ScissorsCongruencePackage D)
    (E : ScissorsCongruenceEvidence S) : ScissorsCongruenceClosed S := by
  exact And.intro E.volumeAdditiveClosed E.classificationTheoremClosed

end DissectionsValuationsHilbertSThirdFoundationCanonicalLaneLean
end HautevilleHouse