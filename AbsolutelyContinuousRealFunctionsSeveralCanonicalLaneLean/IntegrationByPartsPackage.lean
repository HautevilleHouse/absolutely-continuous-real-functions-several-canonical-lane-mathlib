import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean.SobolevPackage

namespace HautevilleHouse
namespace AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean

structure IntegrationByPartsPackage (n p : Nat) [Fact (1 ≤ p)] where
  sobolevBase : SobolevPackage n p
  integrationByPartsFormula : Prop
  boundaryTermsVanished : Prop
  dualityPairingDefined : Prop

structure IntegrationByPartsEvidence (n p : Nat) [Fact (1 ≤ p)] (I : IntegrationByPartsPackage n p) where
  integrationByPartsFormulaClosed : I.integrationByPartsFormula
  boundaryTermsVanishedClosed : I.boundaryTermsVanished
  dualityPairingDefinedClosed : I.dualityPairingDefined

def IntegrationByPartsClosed (n p : Nat) [Fact (1 ≤ p)] (I : IntegrationByPartsPackage n p) : Prop :=
  I.integrationByPartsFormula ∧ I.boundaryTermsVanished ∧ I.dualityPairingDefined

theorem integration_by_parts_closed_from_evidence (n p : Nat) [Fact (1 ≤ p)] (I : IntegrationByPartsPackage n p) (E : IntegrationByPartsEvidence n p I) : IntegrationByPartsClosed n p I := by
  exact And.intro E.integrationByPartsFormulaClosed
    (And.intro E.boundaryTermsVanishedClosed E.dualityPairingDefinedClosed)

end AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean
end HautevilleHouse