import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DissectionsValuationsHilbertSThirdFoundationCanonicalLaneLean

structure PolyhedralDecomposition (G : AddCommGroup) where
  polyhedron : Type u
  simplices : Type v
  finitePartition : Prop
  volumeAdditivity : Prop

structure PolyhedralDecompositionEvidence {G : AddCommGroup} (P : PolyhedralDecomposition G) where
  polyhedronTerm : P.polyhedron
  simplicesTerm : P.simplices
  finitePartitionClosed : P.finitePartition
  volumeAdditivityClosed : P.volumeAdditivity

def PolyhedralDecompositionClosed {G : AddCommGroup} (P : PolyhedralDecomposition G) : Prop :=
  P.finitePartition ∧ P.volumeAdditivity

theorem polyhedral_decomposition_closed_from_evidence
    {G : AddCommGroup} (P : PolyhedralDecomposition G) (E : PolyhedralDecompositionEvidence P) :
    PolyhedralDecompositionClosed P := by
  exact And.intro E.finitePartitionClosed E.volumeAdditivityClosed

end HautevilleHouse
end DissectionsValuationsHilbertSThirdFoundationCanonicalLaneLean