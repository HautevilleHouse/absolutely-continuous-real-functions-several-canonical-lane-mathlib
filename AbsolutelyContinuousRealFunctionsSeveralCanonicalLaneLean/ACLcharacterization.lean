import AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean

structure ACLCharacterizationPackage (A : AdmissibleClass) where
  absolutelyContinuousOnLines : Prop
  partialDerivativesExist : Prop
  integrationOnLines : Prop

structure ACLCharacterizationEvidence {A : AdmissibleClass} (P : ACLCharacterizationPackage A) where
  absolutelyContinuousOnLinesClosed : P.absolutelyContinuousOnLines
  partialDerivativesExistClosed : P.partialDerivativesExist
  integrationOnLinesClosed : P.integrationOnLines

def ACLCharacterizationClosed {A : AdmissibleClass} (P : ACLCharacterizationPackage A) : Prop :=
  P.absolutelyContinuousOnLines ∧ P.partialDerivativesExist ∧ P.integrationOnLines

theorem acl_characterization_closed_from_evidence
    {A : AdmissibleClass} (P : ACLCharacterizationPackage A)
    (E : ACLCharacterizationEvidence P) : ACLCharacterizationClosed P := by
  exact And.intro E.absolutelyContinuousOnLinesClosed
    (And.intro E.partialDerivativesExistClosed E.integrationOnLinesClosed)

end AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean
end HautevilleHouse