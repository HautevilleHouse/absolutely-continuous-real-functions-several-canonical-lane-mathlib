import AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean

structure JacobianIntegrabilityPackage (A : AdmissibleClass) where
  jacobianExists : Prop
  integrableJacobian : Prop
  chainRuleCompatible : Prop

structure JacobianIntegrabilityEvidence {A : AdmissibleClass} (J : JacobianIntegrabilityPackage A) where
  jacobianExistsClosed : J.jacobianExists
  integrableJacobianClosed : J.integrableJacobian
  chainRuleCompatibleClosed : J.chainRuleCompatible

def JacobianIntegrabilityClosed {A : AdmissibleClass} (J : JacobianIntegrabilityPackage A) : Prop :=
  J.jacobianExists ∧ J.integrableJacobian ∧ J.chainRuleCompatible

theorem jacobian_integrability_closed_from_evidence
    {A : AdmissibleClass} (J : JacobianIntegrabilityPackage A)
    (E : JacobianIntegrabilityEvidence J) : JacobianIntegrabilityClosed J := by
  exact And.intro E.jacobianExistsClosed
    (And.intro E.integrableJacobianClosed E.chainRuleCompatibleClosed)

end AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean
end HautevilleHouse