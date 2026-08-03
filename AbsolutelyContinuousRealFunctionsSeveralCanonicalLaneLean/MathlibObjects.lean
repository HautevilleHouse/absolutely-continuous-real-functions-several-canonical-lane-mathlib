import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean

structure AbsolutelyContinuousFunction where
  domain : Type u
  codomain : Type v
  function : domain → codomain
  absoluteContinuity : Prop
  domainTopology : TopologicalSpace domain
  codomainTopology : TopologicalSpace codomain
  measureDomain : MeasureTheory.Measure domain
  measureCodomain : MeasureTheory.Measure codomain

def AbsolutelyContinuousWitness (f : AbsolutelyContinuousFunction) : Prop :=
  f.absoluteContinuity

end AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean
end HautevilleHouse