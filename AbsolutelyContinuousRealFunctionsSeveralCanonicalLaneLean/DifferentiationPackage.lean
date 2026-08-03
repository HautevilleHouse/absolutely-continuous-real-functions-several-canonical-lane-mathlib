import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean.ACLPackage

namespace HautevilleHouse
namespace AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean

structure DifferentiationPackage (n : Nat) where
  aclBase : ACLPackage n
  derivativeExistsAE : Prop
  partialDerivativesIntegrable : Prop
  fundamentalTheoremLine : Prop
  chainRuleHolds : Prop

structure DifferentiationEvidence (n : Nat) (D : DifferentiationPackage n) where
  derivativeExistsAEClosed : D.derivativeExistsAE
  partialDerivativesIntegrableClosed : D.partialDerivativesIntegrable
  fundamentalTheoremLineClosed : D.fundamentalTheoremLine
  chainRuleHoldsClosed : D.chainRuleHolds

def DifferentiationClosed (n : Nat) (D : DifferentiationPackage n) : Prop :=
  D.derivativeExistsAE ∧ D.partialDerivativesIntegrable ∧ D.fundamentalTheoremLine ∧ D.chainRuleHolds

theorem differentiation_closed_from_evidence (n : Nat) (D : DifferentiationPackage n) (E : DifferentiationEvidence n D) : DifferentiationClosed n D := by
  exact And.intro E.derivativeExistsAEClosed
    (And.intro E.partialDerivativesIntegrableClosed
      (And.intro E.fundamentalTheoremLineClosed E.chainRuleHoldsClosed))

end AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean
end HautevilleHouse