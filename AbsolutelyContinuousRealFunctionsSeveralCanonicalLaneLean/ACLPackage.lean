import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean.AbsoluteContinuityObjects

namespace HautevilleHouse
namespace AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean

structure ACLPackage (n : Nat) where
  function : AbsolutelyContinuousFunction n
  lineAbsoluteContinuity : Prop
  partialDerivativeRepresentation : Prop
  lebesguePoints : Prop
  aclPropertySat : Prop

structure ACLEvidence (n : Nat) (A : ACLPackage n) where
  lineAbsoluteContinuityClosed : A.lineAbsoluteContinuity
  partialDerivativeRepresentationClosed : A.partialDerivativeRepresentation
  lebesguePointsClosed : A.lebesguePoints
  aclPropertySatClosed : A.aclPropertySat

def ACLClosed (n : Nat) (A : ACLPackage n) : Prop :=
  A.lineAbsoluteContinuity ∧ A.partialDerivativeRepresentation ∧ A.lebesguePoints ∧ A.aclPropertySat

theorem acl_closed_from_evidence (n : Nat) (A : ACLPackage n) (E : ACLEvidence n A) : ACLClosed n A := by
  exact And.intro E.lineAbsoluteContinuityClosed
    (And.intro E.partialDerivativeRepresentationClosed
      (And.intro E.lebesguePointsClosed E.aclPropertySatClosed))

end AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean
end HautevilleHouse