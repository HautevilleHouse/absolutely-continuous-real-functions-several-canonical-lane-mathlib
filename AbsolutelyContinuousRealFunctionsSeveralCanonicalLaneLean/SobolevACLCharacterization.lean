import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean

structure SobolevACLPackage where
  sobolevSpaceDefined : Prop
  aclCharacterization : Prop
  weakDerivativeExists : Prop

structure SobolevACLEvidence (S : SobolevACLPackage) where
  sobolevSpaceDefinedClosed : S.sobolevSpaceDefined
  aclCharacterizationClosed : S.aclCharacterization
  weakDerivativeExistsClosed : S.weakDerivativeExists

def SobolevACLClosed (S : SobolevACLPackage) : Prop :=
  S.sobolevSpaceDefined ∧ S.aclCharacterization ∧ S.weakDerivativeExists

theorem sobolev_acl_closed_from_evidence
    (S : SobolevACLPackage) (E : SobolevACLEvidence S) :
    SobolevACLClosed S := by
  exact And.intro E.sobolevSpaceDefinedClosed
    (And.intro E.aclCharacterizationClosed E.weakDerivativeExistsClosed)

end HautevilleHouse
end AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean