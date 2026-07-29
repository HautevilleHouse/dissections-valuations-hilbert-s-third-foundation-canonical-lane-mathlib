import HautevilleHouse.DissectionsValuationsHilbertSThirdFoundationCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace DissectionsValuationsHilbertSThirdFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  HilbertThirdWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DissectionsValuationsHilbertSThirdFoundationCanonicalLaneLean
end HautevilleHouse
