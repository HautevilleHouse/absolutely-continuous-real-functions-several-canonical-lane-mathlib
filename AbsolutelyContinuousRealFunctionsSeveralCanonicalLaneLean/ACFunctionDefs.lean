import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean.ACAdmissibleClass

namespace HautevilleHouse
namespace AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean

structure ACLFunction (n : ℕ) (Ω : Set (ℝ^n)) where
  f : Ω → ℝ
  aclOnLines : Prop
  partialDerivativesExist : Prop
  continuousOnLines : Prop

structure ACLStructure (n : ℕ) where
  domain : Set (ℝ^n)
  functionSpace : Type u
  aclCondition : ACLFunction n domain → Prop
  integrabilityCondition : (ACLFunction n domain) → Prop

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.aclProperty

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.aclProperty

end AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean
end HautevilleHouse