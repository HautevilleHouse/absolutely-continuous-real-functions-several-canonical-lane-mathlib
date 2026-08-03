import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean

structure AbsolutelyContinuousSpace where
  domain : Type
  topology : TopologicalSpace domain
  measure : MeasureTheory.Measure domain

structure AbsolutelyContinuousAdmittedObject where
  space : AbsolutelyContinuousSpace
  function : space.domain → ℝ
  absolutelyContinuous : Prop
  conclusion : absolutelyContinuous

def AbsolutelyContinuousWitnessClosed (O : AbsolutelyContinuousAdmittedObject) : Prop :=
  O.absolutelyContinuous

end AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean
end HautevilleHouse