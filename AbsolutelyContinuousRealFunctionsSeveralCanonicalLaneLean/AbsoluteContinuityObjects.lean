import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure EuclideanSpace (n : Nat) where
  carrier : Type
  normedAddCommGroup : NormedAddCommGroup carrier
  innerProductSpace : InnerProductSpace ℝ carrier
  finiteDimensional : FiniteDimensional ℝ carrier
  dimension : Nat
  dimensionEq : dimension = n

structure AbsolutelyContinuousFunction (n : Nat) where
  domain : EuclideanSpace n
  codomain : Type
  normedAddCommGroupCod : NormedAddCommGroup codomain
  functionVal : domain.carrier → codomain
  absolutelyContinuousOnLines : Prop
  partialDerivativesExistAE : Prop
  integrationRepresentation : Prop
  conclusion : absolutelyContinuousOnLines ∧ partialDerivativesExistAE ∧ integrationRepresentation

structure AbsoluteContinuityAdmittedObject (n : Nat) where
  space : EuclideanSpace n
  function : AbsolutelyContinuousFunction n
  domainOpen : Prop
  conclusion : function.absolutelyContinuousOnLines

def AbsoluteContinuityWitnessClosed (O : AbsoluteContinuityAdmittedObject n) : Prop :=
  O.conclusion

end AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean
end HautevilleHouse