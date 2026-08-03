import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean

structure ACAdmissibleObject where
  domain : Type u
  measure : Type v
  functionSpace : Type w
  aclProperty : Prop
  endpointSatisfied : Prop
  remainderRecorded : Prop

structure AdmissibleClass where
  object : ACAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.aclProperty) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean
end HautevilleHouse