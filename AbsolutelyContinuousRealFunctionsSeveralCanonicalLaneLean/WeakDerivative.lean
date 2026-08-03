import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean.ACFunctionDefs

namespace HautevilleHouse
namespace AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean

structure WeakDerivative (n : ℕ) (Ω : Set (ℝ^n)) where
  f : Ω → ℝ
  weakPartialDerivatives : ℕ → Ω → ℝ
  integrability : Prop
  integrationByPartsCondition : Prop

structure WeakDerivativePackage (n : ℕ) (Ω : Set (ℝ^n)) where
  weakDerivatives : WeakDerivative n Ω
  aclProperty : Prop
  consistencyWithACL : Prop

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ∃ (n : ℕ) (Ω : Set (ℝ^n)) (pkg : WeakDerivativePackage n Ω), 
    A.object = pkg ∧ pkg.aclProperty

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  obtain ⟨n, Ω, pkg, h⟩ := A.object
  exact pkg.aclProperty

end AbsolutelyContinuousRealFunctionsSeveralCanonicalLaneLean
end HautevilleHouse