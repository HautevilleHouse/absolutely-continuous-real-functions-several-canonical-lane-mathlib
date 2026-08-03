import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean

structure ACFunctionObject where
  domain : Type u
  codomain : Type v
  functionVal : domain → codomain
  absolutelyContinuous : Prop

structure AdmissibleClass where
  object : ACFunctionObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.absolutelyContinuous ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean
end HautevilleHouse