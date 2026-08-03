import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean.ACLPackage

namespace HautevilleHouse
namespace AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean

structure SobolevPackage (n p : Nat) [Fact (1 ≤ p)] where
  aclBase : ACLPackage n
  integrableDerivatives : Prop
  normDefined : Prop
  completeness : Prop
  sobolevInequality : Prop

structure SobolevEvidence (n p : Nat) [Fact (1 ≤ p)] (S : SobolevPackage n p) where
  integrableDerivativesClosed : S.integrableDerivatives
  normDefinedClosed : S.normDefined
  completenessClosed : S.completeness
  sobolevInequalityClosed : S.sobolevInequality

def SobolevClosed (n p : Nat) [Fact (1 ≤ p)] (S : SobolevPackage n p) : Prop :=
  S.integrableDerivatives ∧ S.normDefined ∧ S.completeness ∧ S.sobolevInequality

theorem sobolev_closed_from_evidence (n p : Nat) [Fact (1 ≤ p)] (S : SobolevPackage n p) (E : SobolevEvidence n p S) : SobolevClosed n p S := by
  exact And.intro E.integrableDerivativesClosed
    (And.intro E.normDefinedClosed
      (And.intro E.completenessClosed E.sobolevInequalityClosed))

end AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean
end HautevilleHouse