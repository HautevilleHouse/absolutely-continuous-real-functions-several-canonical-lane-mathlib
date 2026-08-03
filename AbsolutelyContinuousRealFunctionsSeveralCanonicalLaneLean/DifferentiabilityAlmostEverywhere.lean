import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean

structure DifferentiabilityACPackage where
  existsDifferentialAE : Prop
  lebesguePointProperty : Prop
  approximateDerivativeCondition : Prop

structure DifferentiabilityACEvidence (D : DifferentiabilityACPackage) where
  existsDifferentialAEClosed : D.existsDifferentialAE
  lebesguePointPropertyClosed : D.lebesguePointProperty
  approximateDerivativeConditionClosed : D.approximateDerivativeCondition

def DifferentiabilityACClosed (D : DifferentiabilityACPackage) : Prop :=
  D.existsDifferentialAE ∧ D.lebesguePointProperty ∧ D.approximateDerivativeCondition

theorem differentiability_ac_closed_from_evidence
    (D : DifferentiabilityACPackage) (E : DifferentiabilityACEvidence D) :
    DifferentiabilityACClosed D := by
  exact And.intro E.existsDifferentialAEClosed
    (And.intro E.lebesguePointPropertyClosed E.approximateDerivativeConditionClosed)

end HautevilleHouse
end AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean