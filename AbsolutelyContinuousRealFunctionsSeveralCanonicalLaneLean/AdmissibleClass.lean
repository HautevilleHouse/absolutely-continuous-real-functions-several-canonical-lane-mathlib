import AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean

structure AdmissibleClass where
  object : AbsolutelyContinuousFunction
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  AbsolutelyContinuousWitness A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean
end HautevilleHouse