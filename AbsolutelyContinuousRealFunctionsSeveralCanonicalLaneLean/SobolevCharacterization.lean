import AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean

structure SobolevCharacterizationPackage (A : AdmissibleClass) where
  weakDerivativeExists : Prop
  integrableWeakDerivative : Prop
  sobolevNormDefined : Prop

structure SobolevCharacterizationEvidence {A : AdmissibleClass} (P : SobolevCharacterizationPackage A) where
  weakDerivativeExistsClosed : P.weakDerivativeExists
  integrableWeakDerivativeClosed : P.integrableWeakDerivative
  sobolevNormDefinedClosed : P.sobolevNormDefined

def SobolevCharacterizationClosed {A : AdmissibleClass} (P : SobolevCharacterizationPackage A) : Prop :=
  P.weakDerivativeExists ∧ P.integrableWeakDerivative ∧ P.sobolevNormDefined

theorem sobolev_characterization_closed_from_evidence
    {A : AdmissibleClass} (P : SobolevCharacterizationPackage A)
    (E : SobolevCharacterizationEvidence P) : SobolevCharacterizationClosed P := by
  exact And.intro E.weakDerivativeExistsClosed
    (And.intro E.integrableWeakDerivativeClosed E.sobolevNormDefinedClosed)

end AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean
end HautevilleHouse