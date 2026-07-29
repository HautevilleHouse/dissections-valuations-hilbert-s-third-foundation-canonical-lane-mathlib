import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DissectionsValuationsHilbertSThirdFoundationCanonicalLaneLean

structure Polyhedron (V : Type) where
  vertices : List V
  faces : List (List V)
  convex : Prop

structure Valuation (A : Type) [AddCommMonoid A] (V : Type) where
  carrier : Set (Polyhedron V)
  value : Polyhedron V → A
  additiveOnDisjoint : ∀ P Q, Disjoint P Q → value (P ∪ Q) = value P + value Q
  translationInvariant : ∀ P v, value (translate P v) = value P

structure ValuationEvidence (A : Type) [AddCommMonoid A] (V : Type) (ν : Valuation A V) where
  additivityClosed : ∀ P Q, Disjoint P Q → ν.value (P ∪ Q) = ν.value P + ν.value Q
  translationClosed : ∀ P v, ν.value (translate P v) = ν.value P

def ValuationClosed (A : Type) [AddCommMonoid A] (V : Type) (ν : Valuation A V) : Prop :=
  (∀ P Q, Disjoint P Q → ν.value (P ∪ Q) = ν.value P + ν.value Q) ∧
  (∀ P v, ν.value (translate P v) = ν.value P)

theorem valuation_closed_from_evidence (A : Type) [AddCommMonoid A] (V : Type) (ν : Valuation A V)
    (E : ValuationEvidence A V ν) : ValuationClosed A V ν := by
  exact And.intro E.additivityClosed E.translationClosed

end DissectionsValuationsHilbertSThirdFoundationCanonicalLaneLean
end HautevilleHouse