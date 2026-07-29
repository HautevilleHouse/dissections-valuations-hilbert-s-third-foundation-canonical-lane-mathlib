import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace PolyhedralDecompositionPackage

structure PolyhedralDecomposition where
  polytopes : Type u
  facePoset : Type v
  decomposition : List (List (Subtype (λ p : polytopes => True)))
  commonRefinement : List (List (List (Subtype (λ p : polytopes => True))))
  
structure PolyhedralDecompositionEvidence (D : PolyhedralDecomposition) where
  decompositionNonempty : D.decomposition ≠ []
  commonRefinementNonempty : D.commonRefinement ≠ []
  refinementProperty : ∀ (i j : ℕ), (h : i < D.decomposition.length) → (h' : j < D.decomposition.length) → 
    ∃ (k : ℕ), (hk : k < D.commonRefinement.length) ∧ (D.commonRefinement.get ⟨k, hk⟩) = (D.decomposition.get ⟨i, h⟩) ++ (D.decomposition.get ⟨j, h'⟩)

def PolyhedralDecompositionClosed (D : PolyhedralDecomposition) : Prop :=
  D.decomposition ≠ [] ∧ D.commonRefinement ≠ [] ∧ (∀ (i j : ℕ), (h : i < D.decomposition.length) → (h' : j < D.decomposition.length) → 
    ∃ (k : ℕ), (hk : k < D.commonRefinement.length) ∧ (D.commonRefinement.get ⟨k, hk⟩) = (D.decomposition.get ⟨i, h⟩) ++ (D.decomposition.get ⟨j, h'⟩))

theorem polyhedral_decomposition_closed (D : PolyhedralDecomposition) (E : PolyhedralDecompositionEvidence D) : PolyhedralDecompositionClosed D := by
  refine ⟨E.decompositionNonempty, E.commonRefinementNonempty, E.refinementProperty⟩

end PolyhedralDecompositionPackage
end HautevilleHouse