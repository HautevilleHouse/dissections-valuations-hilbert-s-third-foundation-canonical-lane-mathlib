import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ValuationTheoryPackage

structure Valuation (K : Type u) [Field K] where
  valueGroup : Type v
  valueGroupOrdered : StrictOrderedCommSemiring valueGroup
  val : K → valueGroup
  valZero : val 0 = 0
  valOne : val 1 = 1
  valMul : ∀ x y : K, val (x * y) = val x * val y
  valAdd : ∀ x y : K, val (x + y) ≤ max (val x) (val y)

structure ValuationEvidence (V : Valuation K) where
  valZeroClosed : V.val 0 = 0
  valOneClosed : V.val 1 = 1
  valMulClosed : ∀ x y : K, V.val (x * y) = V.val x * V.val y
  valAddClosed : ∀ x y : K, V.val (x + y) ≤ max (V.val x) (V.val y)

def ValuationClosed (V : Valuation K) : Prop :=
  V.valZero ∧ V.valOne ∧ (∀ x y : K, V.val (x * y) = V.val x * V.val y) ∧ (∀ x y : K, V.val (x + y) ≤ max (V.val x) (V.val y))

theorem valuation_closed (V : Valuation K) (E : ValuationEvidence V) : ValuationClosed V := by
  refine ⟨E.valZeroClosed, E.valOneClosed, E.valMulClosed, E.valAddClosed⟩

end ValuationTheoryPackage
end HautevilleHouse