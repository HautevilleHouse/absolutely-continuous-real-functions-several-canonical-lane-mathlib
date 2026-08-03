import AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AbsolutelyContinuousWitness A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.absoluteContinuity

end AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean
end HautevilleHouse