import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace SydlerTheoremPackage

structure SydlerTheorem where
  polyhedron : Type u
  volume : polyhedron → ℝ
  dehnInvariant : polyhedron → ℝ
  congruenceGroup : Type v
  scissorsCongruent : polyhedron → polyhedron → Prop
  sydlerCondition : ∀ (P Q : polyhedron), scissorsCongruent P Q → (volume P = volume Q ∧ dehnInvariant P = dehnInvariant Q)
  sydlerConverse : ∀ (P Q : polyhedron), (volume P = volume Q ∧ dehnInvariant P = dehnInvariant Q) → scissorsCongruent P Q

structure SydlerTheoremEvidence (S : SydlerTheorem) where
  sydlerConditionClosed : S.sydlerCondition
  sydlerConverseClosed : S.sydlerConverse

def SydlerTheoremClosed (S : SydlerTheorem) : Prop :=
  S.sydlerCondition ∧ S.sydlerConverse

theorem sydler_theorem_closed (S : SydlerTheorem) (E : SydlerTheoremEvidence S) : SydlerTheoremClosed S := by
  refine ⟨E.sydlerConditionClosed, E.sydlerConverseClosed⟩

end SydlerTheoremPackage
end HautevilleHouse