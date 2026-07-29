import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HilbertThirdFoundationPackage

structure HilbertThirdFoundation where
  polyhedron : Type u
  decomposition : List (List (List (Subtype (λ x : polyhedron => True))))
  valuations : List (polyhedron → ℝ)
  congruenceInvariant : ∀ (P : polyhedron) (g : polyhedron ≃ₑ polyhedron), valuations.map (λ f => f (g P)) = valuations.map (λ f => f P)

structure HilbertThirdFoundationEvidence (H : HilbertThirdFoundation) where
  decompositionClosed : H.decomposition ≠ []
  valuationsClosed : H.valuations ≠ []
  congruenceInvariantClosed : H.congruenceInvariant

def HilbertThirdFoundationClosed (H : HilbertThirdFoundation) : Prop :=
  H.decomposition ≠ [] ∧ H.valuations ≠ [] ∧ H.congruenceInvariant

theorem hilbert_third_foundation_closed (H : HilbertThirdFoundation) (E : HilbertThirdFoundationEvidence H) : HilbertThirdFoundationClosed H := by
  refine ⟨E.decompositionClosed, E.valuationsClosed, E.congruenceInvariantClosed⟩

end HilbertThirdFoundationPackage
end HautevilleHouse