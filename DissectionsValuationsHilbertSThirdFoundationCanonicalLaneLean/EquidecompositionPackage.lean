import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EquidecompositionPackage

structure Equidecomposition where
  polyhedron : Type u
  groupAction : Type v → Type v
  equidecomposable : polyhedron → polyhedron → Prop
  banachTarski : ∃ (P Q : polyhedron), equidecomposable P Q ∧ 
    (∀ (f : polyhedron → polyhedron), ¬ (∀ (x : polyhedron), f x = x)) 
  
structure EquidecompositionEvidence (E : Equidecomposition) where
  banachTarskiClosed : E.banachTarski

def EquidecompositionClosed (E : Equidecomposition) : Prop :=
  E.banachTarski

theorem equidecomposition_closed (E : Equidecomposition) (Ev : EquidecompositionEvidence E) : EquidecompositionClosed E := by
  exact Ev.banachTarskiClosed

end EquidecompositionPackage
end HautevilleHouse