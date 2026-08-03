import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean.SobolevSpace

namespace HautevilleHouse
namespace AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean

structure IntegrationByPartsFormula (n : ℕ) (Ω : Set (ℝ^n)) where
  domain : Set (ℝ^n)
  boundaryTerms : Prop
  formula : Prop
  aclCondition : Prop

structure IntegrationByPartsPackage (n : ℕ) (Ω : Set (ℝ^n)) where
  formula : IntegrationByPartsFormula n Ω
  sobolevSpace : SobolevSpace n 2 Ω
  consistency : Prop

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean
end HautevilleHouse