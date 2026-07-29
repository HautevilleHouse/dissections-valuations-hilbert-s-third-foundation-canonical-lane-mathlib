import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DissectionsValuationsHilbertSThirdFoundationCanonicalLaneLean

structure DehnInvariant (V : Type) [InnerProductSpace ℝ V] [FiniteDimensional ℝ V] where
  dihedralAngles : Polyhedron V → List ℝ
  edgeLengths : Polyhedron V → List ℝ
  value : Polyhedron V → ℝ
  formula : ∀ P, value P = ∑ i, edgeLengths P i ⊗ dihedralAngles P i

structure DehnInvariantEvidence (V : Type) [InnerProductSpace ℝ V] [FiniteDimensional ℝ V]
    (δ : DehnInvariant V) where
  formulaClosed :∀ P, δ.value P = ∑ i, δ.edgeLengths P i ⊗ δ.dihedralAngles P i

def DehnInvariantClosed (V : Type) [InnerProductSpace ℝ V] [FiniteDimensional ℝ V]
    (δ : DehnInvariant V) : Prop :=
  ∀ P, δ.value P = ∑ i, δ.edgeLengths P i ⊗ δ.dihedralAngles P i

theorem dehn_invariant_closed_from_evidence (V : Type) [InnerProductSpace ℝ V] [FiniteDimensional ℝ V]
    (δ : DehnInvariant V) (E : DehnInvariantEvidence V δ) : DehnInvariantClosed V δ := by
  exact E.formulaClosed

-- Dehn's theorem: if two polyhedra are equidecomposable, their Dehn invariants are equal
structure DehnTheorem (V : Type) [InnerProductSpace ℝ V] [FiniteDimensional ℝ V] where
  equidecomposability : Polyhedron V → Polyhedron V → Prop
  dehnInvariant : DehnInvariant V
  statement : ∀ P Q, equidecomposability P Q → dehnInvariant.value P = dehnInvariant.value Q

end HautevilleHouse
namespace DissectionsValuationsHilbertSThirdFoundationCanonicalLaneLean
end HautevilleHouse