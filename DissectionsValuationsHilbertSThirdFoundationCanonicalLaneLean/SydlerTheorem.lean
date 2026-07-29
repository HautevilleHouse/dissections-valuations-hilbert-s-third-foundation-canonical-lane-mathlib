import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DissectionsValuationsHilbertSThirdFoundationCanonicalLaneLean

-- Sydler's theorem: In dimension 3, Dehn invariant and volume are complete invariants for equidecomposability
structure SydlerTheorem (V : Type) [InnerProductSpace ℝ V] [FiniteDimensional ℝ V] where
  volume : Polyhedron V → ℝ
  dehnInvariant : DehnInvariant V
  equidecomposability : Polyhedron V → Polyhedron V → Prop
  statement : ∀ P Q, (volume P = volume Q ∧ dehnInvariant.value P = dehnInvariant.value Q) ↔ equidecomposability P Q

structure SydlerEvidence (V : Type) [InnerProductSpace ℝ V] [FiniteDimensional ℝ V]
    (S : SydlerTheorem V) where
  forwardClosed : ∀ P Q, (S.volume P = S.volume Q ∧ S.dehnInvariant.value P = S.dehnInvariant.value Q) → S.equidecomposability P Q
  reverseClosed : ∀ P Q, S.equidecomposability P Q → (S.volume P = S.volume Q ∧ S.dehnInvariant.value P = S.dehnInvariant.value Q)

def SydlerClosed (V : Type) [InnerProductSpace ℝ V] [FiniteDimensional ℝ V]
    (S : SydlerTheorem V) : Prop :=
  (∀ P Q, (S.volume P = S.volume Q ∧ S.dehnInvariant.value P = S.dehnInvariant.value Q) → S.equidecomposability P Q) ∧
  (∀ P Q, S.equidecomposability P Q → (S.volume P = S.volume Q ∧ S.dehnInvariant.value P = S.dehnInvariant.value Q))

theorem sydler_closed_from_evidence (V : Type) [InnerProductSpace ℝ V] [FiniteDimensional ℝ V]
    (S : SydlerTheorem V) (E : SydlerEvidence V S) : SydlerClosed V S := by
  exact And.intro E.forwardClosed E.reverseClosed

end HautevilleHouse
namespace DissectionsValuationsHilbertSThirdFoundationCanonicalLaneLean
end HautevilleHouse