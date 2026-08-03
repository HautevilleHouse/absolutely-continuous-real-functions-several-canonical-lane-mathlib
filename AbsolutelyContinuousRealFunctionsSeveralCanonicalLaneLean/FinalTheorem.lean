import AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean

def ConstrainedAbsolutelyContinuousClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_absolutely_continuous_endgame (A : AdmissibleClass) :
    ConstrainedAbsolutelyContinuousClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean
end HautevilleHouse