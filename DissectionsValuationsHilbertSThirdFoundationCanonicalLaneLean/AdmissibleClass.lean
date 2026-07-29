import HautevilleHouse.DissectionsValuationsHilbertSThirdFoundationCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DissectionsValuationsHilbertSThirdFoundationCanonicalLaneLean

structure AdmissibleClass where
  object : HilbertThirdAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  HilbertThirdWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DissectionsValuationsHilbertSThirdFoundationCanonicalLaneLean
end HautevilleHouse
