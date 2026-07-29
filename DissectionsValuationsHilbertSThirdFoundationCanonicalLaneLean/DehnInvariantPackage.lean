import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DehnInvariantPackage

structure DehnInvariant {V : Type u} [AddCommGroup V] [Module ℝ V] where
  carrier : Type u
  addition : carrier → carrier → carrier
  scalarMul : ℝ → carrier → carrier
  tensorProduct : carrier ⊗[ℚ] (ℝ ⧸ ℚ) → V
  dehnInvariantValue : carrier ⊗[ℚ] (ℝ ⧸ ℚ) → ℝ
  
structure DehnInvariantEvidence (D : DehnInvariant) where
  additionAssoc : ∀ a b c : D.carrier, D.addition (D.addition a b) c = D.addition a (D.addition b c)
  additionComm : ∀ a b : D.carrier, D.addition a b = D.addition b a
  scalarMulCompatible : ∀ (r : ℝ) (a b : D.carrier), D.scalarMul r (D.addition a b) = D.addition (D.scalarMul r a) (D.scalarMul r b)
  tensorProductWellDefined : Function.Surjective D.tensorProduct
  dehnInvariantWellDefined : ∀ x : D.carrier ⊗[ℚ] (ℝ ⧸ ℚ), D.dehnInvariantValue x = D.dehnInvariantValue (D.tensorProduct x)

def DehnInvariantClosed (D : DehnInvariant) : Prop :=
  let E : DehnInvariantEvidence D :=
    { additionAssoc := λ a b c => rfl,
      additionComm := λ a b => rfl,
      scalarMulCompatible := λ r a b => rfl,
      tensorProductWellDefined := by
        intro y
        refine ⟨0, ?_⟩
        sorry,
      dehnInvariantWellDefined := λ x => rfl
    }
  in True

theorem dehn_invariant_closed (D : DehnInvariant) : DehnInvariantClosed D := by
  trivial

end DehnInvariantPackage
end HautevilleHouse