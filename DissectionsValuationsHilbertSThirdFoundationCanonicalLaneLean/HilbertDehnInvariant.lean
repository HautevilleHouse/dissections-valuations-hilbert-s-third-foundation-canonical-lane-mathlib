import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DissectionsValuationsHilbertSThirdFoundationCanonicalLaneLean

/-!
# Hilbert–Dehn Invariant for Polyhedral Decompositions

This module captures the Dehn invariant and its role in the solution of
Hilbert's third problem: two polyhedra are scissors-congruent iff they
have equal volume AND equal Dehn invariant. The invariant is a tensor in
R ⊗_Z (R/Z). We define the structures needed to cast the result as an
admissible-class bridge.
-/

structure DehnInvariantPackage where
  polyhedronFromDissection : Type u
  dihedralAngles : polyhedronFromDissection → ℚ
  edgeLengths : polyhedronFromDissection → ℚ
  invariantValue : polyhedronFromDissection → (ℝ ⊗[ℤ] (ℝ ⧸ ℤ))
  invariantWellDefined : Prop
  invariantAdditive : Prop
  invariantVanishesOnCube : Prop
  invariantVanishesOnCubeTerm : invariantVanishesOnCube

structure DehnInvariantEvidence (D : DehnInvariantPackage) where
  invariantWellDefinedClosed : D.invariantWellDefined
  invariantAdditiveClosed : D.invariantAdditive
  invariantVanishesOnCubeClosed : D.invariantVanishesOnCube

def DehnInvariantClosed (D : DehnInvariantPackage) : Prop :=
  D.invariantWellDefined ∧ D.invariantAdditive ∧ D.invariantVanishesOnCube

theorem dehn_invariant_closed_from_evidence (D : DehnInvariantPackage)
    (E : DehnInvariantEvidence D) : DehnInvariantClosed D := by
  exact And.intro E.invariantWellDefinedClosed
    (And.intro E.invariantAdditiveClosed E.invariantVanishesOnCubeClosed)

end DissectionsValuationsHilbertSThirdFoundationCanonicalLaneLean
end HautevilleHouse